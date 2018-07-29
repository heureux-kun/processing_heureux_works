/*
上から下に少しずつ落ちていく三角。
音に合わせて少し動いたり、少し角度を変えたりする。
色はグラデーション。
*/

PVector firstPoint;
PVector secondPoint;
PVector thirdPoint;

int i = 0;

int circleRadius;
float secondPointAngle;
float thirdPointAngle;

//三角形の配列の数
final int NUM_TRIANGLE = 100;

//三角形の位置と座標情報の配列
HashMap<String,float> trianglePositionCoordinate;

//------------------------------
// setup
//------------------------------
void setup(){
  size(800,600);
  
  circleRadius = 80;
  trianglePositionCoordinate = new HashMap<String,float>();
 
  println("setup");
}

//------------------------------
// mouseReleased
//------------------------------
//マウスを離した時に三角形を生成
void mouseReleased(){
  println("mouseReleased");
  println(i);
  
  trianglePositionCoordinate.put("x",mouseX);
  trianglePositionCoordinate.put("y",mouseY);
  trianglePositionCoordinate.put("firstPointX",mouseX);
  trianglePositionCoordinate.put("firstPointY",mouseY - circleRadius );
  
  secondPointAngle = radians(random(0,90));
  thirdPointAngle = radians(random(90,270));
  
  trianglePositionCoordinate.put("secondPointX ",cos(secondPointAngle) * circleRadius );
  trianglePositionCoordinate.put("secondPointY",sin(secondPointAngle) * circleRadius );
  
  trianglePositionCoordinate.put("thirdPointX ",cos(thirdPointAngle)  * circleRadius );
  trianglePositionCoordinate.put("thirdPointY",sin(thirdPointAngle)  * circleRadius );
    
  i++;
}

//------------------------------
// draw
//------------------------------
void draw(){
  
  background(#000000);
  
  for(int t = 0; t < i; t++){
    

    
    //三角形を描画
    noStroke();
    fill(#FFFFFF);
    
    beginShape();
    vertex(firstPoint.x,firstPoint.y);
    vertex(secondPoint.x,secondPoint.y);
    vertex(thirdPoint.x,thirdPoint.y);
    endShape();

  }
}
