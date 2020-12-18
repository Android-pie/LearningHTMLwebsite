//Global Varibles
int shortside;
float FaceSquareX, FaceSquareY, FaceSquareSide;
float FaceX, faceY, FaceDiameter;
float lefteyeX, lefteyeY, eyediameter;
float righteyeX, righteyeY;
float noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
float mouththick, mouthX1, mouthY1, mouthX2, mouthY2;
float measlesX, measlesY, measlesdiameter, radius;
float mouthX3, mouthY3, mouthX4, mouthY4;
color measleColor = #1AE309, red = #FF0000, purple = #9400FF, orange = #FF8000, yellow = #F6FF00;
void setup() {
  size(600, 400);
  //Populating varibles
  populating_varibles();

  rect(FaceSquareX, FaceSquareY, FaceSquareSide, FaceSquareSide);
  fill(yellow);
  ellipse(FaceX, faceY, FaceDiameter, FaceDiameter);
  /*
    //the measles
   ellipse(measlesX, measlesY, measlesdiameter, measlesdiameter);
   //
   */
  //
} //End setup

void draw() {
  fill(measleColor);
  strokeWeight(1);
  measlesdiameter = random(height*1/60, height*1/20);
  radius = measlesdiameter/2;
  measlesX = random((FaceSquareX+radius)+(height*1/9), ((FaceSquareX+FaceSquareSide)-(height*1/9)-radius));
  measlesY = random((height*0+radius)+(height*1/6), (height-radius)-(height*1/6));
  ellipse(measlesX, measlesY, measlesdiameter, measlesdiameter);
  fill(red);
  //left eye
  ellipse(lefteyeX, lefteyeY, eyediameter, eyediameter);
  //right eye
  fill(purple);
  ellipse(righteyeX, righteyeY, eyediameter, eyediameter);
  //nose
  fill(orange);
  triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);  
  //mouth
  strokeWeight(mouththick);
  line(mouthX1, mouthY1, mouthX2, mouthY2);
  line(mouthX3, mouthY3, mouthX4, mouthY4);
} //End draw

void keyPressed() {
} //Endkeypress

void mousePressed() {
} //End mousePressed
