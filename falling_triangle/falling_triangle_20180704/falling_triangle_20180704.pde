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

//三角形の位置と情報の配列
PVector[] trianglePosition;

//生成されてからのフレーム数カウント
int[] trianglePastTime;

//------------------------------
// setup
//------------------------------
void setup(){
  size(800,600);
  
  circleRadius = 80;
  
 trianglePosition = new PVector[NUM_TRIANGLE];
 trianglePastTime = new int[NUM_TRIANGLE];
 
 println("setup");
}

//------------------------------
// mouseReleased
//------------------------------
//マウスを離した時に三角形を生成
void mouseReleased(){
  println("mouseReleased");
  println(i);
  
  trianglePosition[i] = new PVector(mouseX,mouseY);

  secondPointAngle = radians(random(0,90));
  thirdPointAngle = radians(random(90,270));
  
  firstPoint = new PVector( trianglePosition[t].x , trianglePosition[t].y - circleRadius );
  secondPoint = new PVector( cos(secondPointAngle) * circleRadius , sin(secondPointAngle) * circleRadius );
  thirdPoint =  new PVector( cos(thirdPointAngle)  * circleRadius , sin(thirdPointAngle)  * circleRadius );
    

  trianglePastTime[i] = 0;
  
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
    
    
    println(trianglePastTime[i]);
    
    //経過秒数の加算
    trianglePastTime[i]++;
  }
}
