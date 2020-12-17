//Global Varibles
int buttonX, buttonY, buttonwidth, buttonheight;
color buttoncolor, green = #58DB02, blue = #317EFF, reset = #FFFFFF;

void setup() {
  size (600, 400);
  buttonX =0;
  buttonY = 0;
  buttonwidth = 100;
  buttonheight = 200;
}//End setup()

void draw() {
  if ( mouseX>buttonX && mouseX<buttonX+buttonwidth && mouseY>buttonY && mouseY<buttonY+buttonheight) {
    buttoncolor=blue;
  } else {
    buttoncolor=green;
  }
  fill (buttoncolor);
  rect(buttonX, buttonY, buttonwidth, buttonheight);
  println(mouseX, mouseY);//proves that mouse has builtin varibles based on coordinate plane
}//end draw

void keyPressed() {
  if (key == 'q' || key =='Q' ) exit(); //this is key not keycode
}//end KeyPressed

void mousePressed() {
  if ( mouseX>buttonX && mouseX<buttonX+buttonwidth && mouseY>buttonY && mouseY<buttonY+buttonheight) exit();
}//end mousePressed
