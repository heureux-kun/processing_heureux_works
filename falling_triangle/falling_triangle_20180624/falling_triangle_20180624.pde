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
  
  circleRadius = 100;
  
}

void draw(){
  
}


//マウスを話した時に発火
void mouseReleased(){
  x = mouseX;
  y = mouseY;
  println("y = " + y);
  firstPoint = new PVector(x,y - circleRadius/2);
  secondPointAngle = radians(random(0,360));
  thirdPointAngle = radians(random(0,360));
  secondPoint = new PVector( x + cos(secondPointAngle) * circleRadius , y + sin(secondPointAngle) * circleRadius );
  thirdPoint =  new PVector( x + cos(thirdPointAngle)  * circleRadius , y + sin(thirdPointAngle)  * circleRadius );
  
  //三角形を描画
  noStroke();
  fill(#FFFFFF);
  
  beginShape();
  vertex(firstPoint.x,firstPoint.y);
  vertex(secondPoint.x,secondPoint.y);
  vertex(thirdPoint.x,thirdPoint.y);
  endShape();
  
  println("firstPoint.y = " + firstPoint.y);
  println("secondPoint.y = " + secondPoint.y);
  println("thirdPoint.y = " + thirdPoint.y);
  
  //円を描画
  stroke(#FFFFFF);
  noFill();
  ellipse(x,y,circleRadius,circleRadius);
}
