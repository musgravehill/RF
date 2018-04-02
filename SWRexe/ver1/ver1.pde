
import javax.swing.JOptionPane; // Had to change this which meant showMessageDialog() changes
final boolean debugPort = true; 

import processing.serial.*;

int value1 = 0;
int value2 = 0;
int value3 = 0;

//PFont font;

Serial myPort;  // Create object from Serial class

void setup() 
{
  //font = createFont(PFont.list()[2], 32);
  //textFont(font);
  
  size(500, 300);
  
  // Allow user to choose serial port
          String COMx = "";
          try {
            
            if(debugPort) printArray(Serial.list());
            
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
            }
            else {
              JOptionPane.showMessageDialog(frame,"Device is not connected to the PC");
              exit();
            }
          }          
          // Then the rest of setup() because exit() does not exit in Processing until setup() is done.         
          catch (Exception e)
          { //Print the type of error
            JOptionPane.showMessageDialog(frame,"COM port " + COMx + " is not available (maybe in use by another program)");
            println("Error:", e);
            exit();
          }
}

void draw(){ 
  
}

 

void serialEvent (Serial myPort) {  
  String myString = myPort.readString();   
  if (myString != null)   {    
    myString = trim(myString);    
    String sensors[] = split(myString, ';');
    if(sensors.length>1)    {
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
  //text(serialData, 1, 60);  
}
