//拡大する正三角形を生成
int lineWidth;    //線の太さ
color lineColor;  //線の色
//PVector centerPoint;  //三角形の中心点
int centerPointX;
int centerPointY;
int radius; //最初の三角形が収まる円の半径

void setup(){
  size(800,600);
  background(#000000);
  translate(width/2,height/2);
  //centerPoint = new PVector(0,0);
  centerPointX = 0;
  centerPointY = 0;
  stroke(color(0,0,0));
  strokeWeight(1);
  radius = 50;
}

void draw(){
  line(
    centerPointX , centerPointY - radius ,
    sin(radians(60)) * radius , centerPointY + cos(radians(30)) * radius,
    sin(radians(60)) * radius * -1 ,centerPointY + cos(radians(30)) * radius
  );
}
