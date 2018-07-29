/*
上から下に少しずつ落ちていく三角。
いろんな色に変わって行く。
*/

PVector firstPoint;
PVector secondPoint;
PVector thirdPoint;

int count = 0;

float secondPointAngle;
float addDegreeForthirdPointAngle;
float thirdPointAngle;

//三角形の配列の数
final int NUM_TRIANGLE = 100;

//三角形の位置と頂点情報の配列と半径
float[][] trianglePositionVertex = new float[NUM_TRIANGLE][10];
//0:x, 1:y
//2:firstPoint.x, 3:firstPoint.y
//4:secondPoint.x, 5:secondPoint.y
//6:thirdPoint.x, 7:thirdPoint.y
//8:circleRadius
//9:pastTime

//------------------------------
// setup
//------------------------------
void setup(){
  
  //フルスクリーンモード
  fullScreen(P3D);
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
  trianglePositionVertex[count][8] = random(120,200);  //三角形の半径の幅
  
  secondPointAngle = radians(random(0,90));
  addDegreeForthirdPointAngle = radians(random(30,100));
  thirdPointAngle = secondPointAngle + addDegreeForthirdPointAngle;
  
  firstPoint = new PVector( trianglePositionVertex[count][0] , trianglePositionVertex[count][1] - trianglePositionVertex[count][8] );
  secondPoint = new PVector( cos(secondPointAngle) * trianglePositionVertex[count][8] , sin(secondPointAngle) * trianglePositionVertex[count][8] );
  thirdPoint =  new PVector( cos(thirdPointAngle)  * trianglePositionVertex[count][8] , sin(thirdPointAngle)  * trianglePositionVertex[count][8] );
  
  trianglePositionVertex[count][2] = firstPoint.x;
  trianglePositionVertex[count][3] = firstPoint.y;
  trianglePositionVertex[count][4] = secondPoint.x;
  trianglePositionVertex[count][5] = secondPoint.y;
  trianglePositionVertex[count][6] = thirdPoint.x;
  trianglePositionVertex[count][7] = thirdPoint.y;
  trianglePositionVertex[count][9] = 0;
  
  count++;
}

//------------------------------
// draw
//------------------------------
void draw(){
  //本来はカーソルを非表示にしたいが、noCursor()にしても途中でカーソルが出てくるので、ひとまずHAND
  cursor(HAND);
  
  background(#000000);
  
  for( int i = 0; i < count; i++ ){
    //三角形を描画
    noStroke();
    color fillColor = color(random(0,255), random(0,255), random(0,255));
    fill(fillColor);
  
    pushMatrix();
    
    float firstPointX  = trianglePositionVertex[i][2];
    float firstPointY  = trianglePositionVertex[i][3];
    float secondPointX = trianglePositionVertex[i][4];
    float secondPointY = trianglePositionVertex[i][5];
    float thirdPointX  = trianglePositionVertex[i][6];
    float thirdPointY  = trianglePositionVertex[i][7];
    float pastTime = trianglePositionVertex[i][8];
    
    println(pastTime);
    
    beginShape();
    translate( firstPointX , firstPointY );
    vertex( 0, pastTime);
    vertex( secondPointX, secondPointY + pastTime);
    vertex( thirdPointX, thirdPointY + pastTime);
    
    endShape();
    
    trianglePositionVertex[i][8] += 2;
    
    popMatrix();
    
  }
  
}
