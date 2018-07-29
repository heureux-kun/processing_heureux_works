/*
上から下に少しずつ落ちていく三角。
音に合わせて少し動いたり、少し角度を変えたりする。
色はグラデーション。
*/


PVector firstPoint;
PVector secondPoint;
PVector thirdPoint;

int circleRadius;
float secondPointAngle;
float thirdPointAngle;

float x;
float y;

void setup(){
  size(800,600);
  background(#000000);
  
  circleRadius = 80;
  
}

void draw(){
  
}


//マウスを離した時に発火
void mouseReleased(){
  x = mouseX;
  y = mouseY;
  
  pushMatrix();
  translate(x,y);
  
  secondPointAngle = radians(random(0,90));
  thirdPointAngle = radians(random(90,270));
  
  firstPoint = new PVector(0,0 - circleRadius);
  secondPoint = new PVector( cos(secondPointAngle) * circleRadius , sin(secondPointAngle) * circleRadius );
  thirdPoint =  new PVector( cos(thirdPointAngle)  * circleRadius , sin(thirdPointAngle)  * circleRadius );
  
  //三角形を描画
  noStroke();
  fill(#FFFFFF);
  
  beginShape();
  vertex(firstPoint.x,firstPoint.y);
  vertex(secondPoint.x,secondPoint.y);
  vertex(thirdPoint.x,thirdPoint.y);
  endShape();
  
  //円を描画
  //stroke(#FFFFFF);
  //strokeWeight(1);
  //noFill();
  //ellipse(0,0,circleRadius*2,circleRadius*2);
  
  popMatrix();
}
