/*
上から下に少しずつ落ちていく三角。
音に合わせて少し動いたり、少し角度を変えたりする。
色はグラデーション。
*/

PVector firstPoint;
PVector secondPoint;
PVector thirdPoint;

int count = 0;

int circleRadius;
float secondPointAngle;
float thirdPointAngle;

//三角形の配列の数
final int NUM_TRIANGLE = 100;

//三角形の位置と頂点情報の配列
float[][] trianglePositionVertex = new float[NUM_TRIANGLE][9];
//0:x, 1:y
//2:firstPoint.x, 3:firstPoint.y
//4:secondPoint.x, 5:secondPoint.y
//6:thirdPoint.x, 7:thirdPoint.y
//8:pastTime

//------------------------------
// setup
//------------------------------
void setup(){
  size(800,600,P3D);
  
  circleRadius = 80;
 
 println("setup");
}

//------------------------------
// mouseReleased
//------------------------------
//マウスを離した時に三角形を生成
void mouseReleased(){
  println("mouseReleased");
  println(count);
  
  trianglePositionVertex[count][0] = mouseX;
  trianglePositionVertex[count][1] = mouseY;
  
  secondPointAngle = radians(random(0,90));
  thirdPointAngle = radians(random(90,180));
  
  firstPoint = new PVector( trianglePositionVertex[count][0] , trianglePositionVertex[count][1] - circleRadius );
  secondPoint = new PVector( cos(secondPointAngle) * circleRadius , sin(secondPointAngle) * circleRadius );
  thirdPoint =  new PVector( cos(thirdPointAngle)  * circleRadius , sin(thirdPointAngle)  * circleRadius );
  
  trianglePositionVertex[count][2] = firstPoint.x;
  trianglePositionVertex[count][3] = firstPoint.y;
  trianglePositionVertex[count][4] = secondPoint.x;
  trianglePositionVertex[count][5] = secondPoint.y;
  trianglePositionVertex[count][6] = thirdPoint.x;
  trianglePositionVertex[count][7] = thirdPoint.y;
  trianglePositionVertex[count][8] = 0;
  
  count++;
}

//------------------------------
// draw
//------------------------------
void draw(){
  
  background(#000000);
  
  for( int i = 0; i < count; i++ ){
    //三角形を描画
    noStroke();
    fill(#FFFFFF);
  
    pushMatrix();
    
    float firstPointX  = trianglePositionVertex[i][2];
    float firstPointY  = trianglePositionVertex[i][3];
    float secondPointX = trianglePositionVertex[i][4];
    float secondPointY = trianglePositionVertex[i][5];
    float thirdPointX  = trianglePositionVertex[i][6];
    float thirdPointY  = trianglePositionVertex[i][7];
    float pastTime = trianglePositionVertex[i][8];
    
    beginShape();
    vertex(firstPointX, firstPointY + pastTime);
    vertex(firstPointX + secondPointX, firstPointY + secondPointY + pastTime);
    vertex(firstPointX + thirdPointX, firstPointY + thirdPointY + pastTime);
    endShape();
    
    rotateZ(radians(pastTime));
    
    trianglePositionVertex[i][8]++;
    
    popMatrix();
    
  }
  
}
