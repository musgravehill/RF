
import javax.swing.JOptionPane; // Had to change this which meant showMessageDialog() changes
final boolean debugPort = true; 

import processing.serial.*;

int value1 = 0;
int value2 = 0;
int value3 = 0;

int graph_x_curr = 0;
int graph_w = 400;
int graph_h = 400;
int graph_y =0; 
int graph_y_prev = 0;

Serial myPort;  // Create object from Serial class

void setup() {   
  size(500, 500);
  background(0);
  //frameRate(24); //1/24seconds

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
  //draw
  stroke(255, 0, 0);
  line(0, 0, 333, 111);
  graph_y = int (map(value3, 0, 100, 0, graph_h));     
  //println(graph_y);
  line(graph_x_curr-1, graph_y_prev, graph_x_curr, graph_y); //graph_h -
  if (graph_x_curr>= graph_w) {
    graph_x_curr=0;
    background(0);
  } else {
    graph_x_curr++;
  }  
  graph_y_prev = graph_y;



  /*
  stroke(255, 0, 0);
   int graph_y = int (random(graph_h));    // = map(value2, 0, 1023, 0, graph_h);   
   
   //graph_h - graph_y    
   line(graph_x_curr-1, graph_y_prev, graph_x_curr, graph_y);
   
   if (graph_x_curr>= graph_w) {
   graph_x_curr=0;
   background(0);
   } else {
   graph_x_curr++;
   }
   
   graph_y_prev = graph_y;
   */
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
    }
  }
}
