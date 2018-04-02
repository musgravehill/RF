
import javax.swing.JOptionPane; // Had to change this which meant showMessageDialog() changes
final boolean debugPort = true; 



import processing.serial.*;

long value1 = 0;
int value2 = 0;
int value3 = 0;


int graph_w = 1000;
int graph_h = 300;
int[] vswr = new int[graph_w];

int graph_x_curr = 0;



Serial myPort;  // Create object from Serial class

void setup() {   
  size(1050, 350);
  background(0);
  frameRate(1); //1/24seconds

  // Allow user to choose serial port
  String COMx = "";
  try {

    if (debugPort) printArray(Serial.list());

    int numPorts = Serial.list().length;
    if (numPorts != 0) {

      COMx = (String) JOptionPane.showInputDialog(null, 
        "Select COM port", 
        "Select port", 
        JOptionPane.QUESTION_MESSAGE, 
        null, 
        Serial.list(), 
        Serial.list()[0]);

      if (COMx == null) exit();
      if (COMx.isEmpty()) exit();

      myPort = new Serial(this, COMx, 57600); // change baud rate to your liking
      myPort.bufferUntil('\n'); // buffer until CR/LF appears, but not required..
    } else {
      JOptionPane.showMessageDialog(frame, "Device is not connected to the PC");
      exit();
    }
  }          
  // Then the rest of setup() because exit() does not exit in Processing until setup() is done.         
  catch (Exception e)
  { //Print the type of error
    JOptionPane.showMessageDialog(frame, "COM port " + COMx + " is not available (maybe in use by another program)");
    println("Error:", e);
    exit();
  }
}

void draw() { 
  background(0);
  stroke(255, 0, 0);
  for (int i = 0; i < vswr.length; i++) {
    int y = vswr[i];
    int j = (i>0)? i-1: 0;
    int y_prev=vswr[j];
    if (y>0 && y_prev>0) {
      line(j, graph_h -y_prev, i, graph_h - y);
    }
  }
} 

void serialEvent (Serial myPort) {  
  String myString = myPort.readString();   
  if (myString != null) {    
    myString = trim(myString);   
    text(myString, 1, 60); 
    String sensors[] = split(myString, ';');
    if (sensors.length>1) {
      value1 = int(sensors[0]); 
      value2 = int(sensors[1]); 
      value3 = int(sensors[2]); 
      print(value1);
      print(';');
      print(value2);
      print(';');
      println(value3);

      //for draw             
      int graph_y = int (map(value3, 0, 22, 0, graph_h));  
      vswr[graph_x_curr] = 1+graph_y; //0 = no line
      if (graph_x_curr>= graph_w) {
        graph_x_curr=0;
      } else {
        graph_x_curr++;
      }
    }
  }
}
