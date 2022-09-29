import controlP5.*;
ControlP5 cp5;
int currentFloor = 1;
int selectedFloor = 1;

void setup()
{
  //draw canvas
  size(640,360);
  cp5 = new ControlP5(this);
  //initialize variables
  
  //set buttons on touch screen
  cp5.addButton("T1").setLabel("1").setSize(30,20).setPosition(130,320);
  cp5.addButton("T2").setLabel("2").setSize(30,20).setPosition(170,320);
  cp5.addButton("T3").setLabel("3").setSize(30,20).setPosition(210,320);
  cp5.addButton("T4").setLabel("4").setSize(30,20).setPosition(250,320);
  cp5.addButton("T5").setLabel("5").setSize(30,20).setPosition(290,320);
  cp5.addButton("T6").setLabel("6").setSize(30,20).setPosition(130,290);
  cp5.addButton("T7").setLabel("7").setSize(30,20).setPosition(170,290);
  cp5.addButton("T8").setLabel("8").setSize(30,20).setPosition(210,290);
  cp5.addButton("T9").setLabel("9").setSize(30,20).setPosition(250,290);
  cp5.addButton("T10").setLabel("10").setSize(30,20).setPosition(290,290);
  
  cp5.addButton("TCon")
    .setLabel("CONFIRM")
    .setSize(50,50)
    .setPosition(350,290)
    .setColorBackground(color(0,150,0));
  cp5.addButton("BEm")
    .setLabel("EMERGENCY")
    .setSize(50,50)
    .setPosition(420,290)
    .setColorBackground(color(255,0,0));
  
  //set physical buttons
  cp5.addButton("B1").setLabel("1").setSize(20,20).setPosition(380,100);
  cp5.addButton("B2").setLabel("2").setSize(20,20).setPosition(380,130);
  cp5.addButton("B3").setLabel("3").setSize(20,20).setPosition(380,160);
  cp5.addButton("B4").setLabel("4").setSize(20,20).setPosition(380,190);
  cp5.addButton("B5").setLabel("5").setSize(20,20).setPosition(380,220);
  
  cp5.addButton("B6").setLabel("6").setSize(20,20).setPosition(440,100);
  cp5.addButton("B7").setLabel("7").setSize(20,20).setPosition(440,130);
  cp5.addButton("B8").setLabel("8").setSize(20,20).setPosition(440,160);
  cp5.addButton("B9").setLabel("9").setSize(20,20).setPosition(440,190);
  cp5.addButton("B10").setLabel("10").setSize(20,20).setPosition(440,220);
  
}

void draw()
{
  //variables
  //event handler
  //background
  background(50);
  //draw panel
  fill(150);
  stroke(255);
  rectMode(CENTER);
  rect(300, 180, 360, 350);
  //draw speaker
  fill(0);
  stroke(0);
  circle(230, 205, 5);
  circle(220, 205, 5);
  circle(240, 205, 5);
  
  circle(230, 195, 5);
  circle(230, 215, 5);
  circle(230, 205, 5);
  //draw touch screen
  fill(0);
  stroke(255);
  rectMode(CENTER);
  rect(230, 310, 220, 90);
  ///draw text display
  fill(0);
  stroke(255);
  rectMode(CENTER);
  rect(230, 110, 220, 90);
  //draw text based on button press
  fill(255);
  textSize(12);
  switch(currentFloor)
  {
    case 1:
      text("Current Floor: 1 ", 130, 80);
      break;
    case 2:
      text("Current Floor: 2", 130, 80);
      break;
    case 3:
      text("Current Floor: 3", 130, 80);
      break;
    case 4:
      text("Current Floor: 4", 130, 80);
      break;
    case 5:
      text("Current Floor: 5", 130, 80);
      break;
    case 6:
      text("Current Floor: 6", 130, 80);
      break;
    case 7:
      text("Current Floor: 7", 130, 80);
      break;
    case 8:
      text("Current Floor: 8", 130, 80);
      break;
    case 9:
      text("Current Floor: 9", 130, 80);
      break;
    case 10:
      text("Current Floor: 10", 130, 80);
      break;
  }
  switch(selectedFloor)
  {
    case 0:
      break;
    case 1:
      text("Floor 1 is for Directories and Check-Ins", 130, 110);
      text("Confirm floor or select another floor", 130, 130);
      break;
    case 2:
      text("Floor 2 is for Emergency Care", 130, 110);
      text("Confirm floor or select another floor", 130, 130);
      break;
    case 3:
      text("Floor 3 is for Surgeons", 130, 110);
      text("Confirm floor or select another floor", 130, 130);
      break;
    case 4:
      text("Floor 4 is for X-Rays", 130, 110);
      text("Confirm floor or select another floor", 130, 130);
      break;
    case 5:
      text("Floor 5 is for Pediatricians", 130, 110);
      text("Confirm floor or select another floor", 130, 130);
      break;
    case 6:
      text("Floor 6 is for Rehabilitation", 130, 110);
      text("Confirm floor or select another floor", 130, 130);
      break;
    case 7:
      text("Floor 7 is for Heart Care", 130, 110);
      text("Confirm floor or select another floor", 130, 130);
      break;
    case 8:
      text("Floor 8 is for Pulmonary Care", 130, 110);
      text("Confirm floor or select another floor", 130, 130);
      break;
    case 9:
      text("Floor 9 is for Blood Testing", 130, 110);
      text("Confirm floor or select another floor", 130, 130);
      break;
    case 10:
      text("Floor 10 is for Allergy Testing", 130, 110);
      text("Confirm floor or select another floor", 130, 130);
      break;
    case 11:
      text("EMERGENCY SERVICE WILL BE CONTACTED", 125, 110);
      text("Confirm?",130,130);
  }
  
  
}
void controlEvent(CallbackEvent event)
{ 
  //case switch for button presses
  if(event.getAction()==ControlP5.ACTION_CLICK)
  {
    switch(event.getController().getAddress())
    {
      case "/T1":
        println("Floor 1");
        selectedFloor = 1;
        break;
      case "/T2":
        println("Floor 2");
        selectedFloor = 2;
        break;
      case "/T3":
        println("Floor 3");
        selectedFloor = 3;
        break;
      case "/T4":
        println("Floor 4");
        selectedFloor = 4;
        break;
      case "/T5":
        println("Floor 5");
        selectedFloor = 5;
        break;
      case "/T6":
        println("Floor 6");
        selectedFloor = 6;
        break;
      case "/T7":
        println("Floor 7");
        selectedFloor = 7;
        break;
      case "/T8":
        println("Floor 8");
        selectedFloor = 8;
        break;
      case "/T9":
        println("Floor 9");
        selectedFloor = 9;
        break;
      case "/T10":
        println("Floor 10");
        selectedFloor = 10;
        break;
      case "/TCon":
        println("Selection confirmed");
        currentFloor = selectedFloor;
        selectedFloor = 0;
        break;
      case "/BEm":
        println("Emergency Services will be contacted");
        selectedFloor = 11;
        break;
      case "/B1":
        println("Floor 1");
        selectedFloor = 1;
        break;
      case "/B2":
        println("Floor 2");
        selectedFloor = 2;
        break;
      case "/B3":
        println("Floor 3");
        selectedFloor = 3;
        break;
      case "/B4":
        println("Floor 4");
        selectedFloor = 4;
        break;
      case "/B5":
        println("Floor 5");
        selectedFloor = 5;
        break;
      case "/B6":
        println("Floor 6");
        selectedFloor = 6;
        break;
      case "/B7":
        println("Floor 7");
        selectedFloor = 7;
        break;
      case "/B8":
        println("Floor 8");
        selectedFloor = 8;
        break;
      case "/B9":
        println("Floor 9");
        selectedFloor = 9;
        break;
      case "/B10":
        println("Floor 10");
        selectedFloor = 10;
        break;
    }
  }
  
  
    
}
  
