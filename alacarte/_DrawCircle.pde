//円を描くクラス

int radius;         //半径
int lineWidth;      //線の太さ
color circleColor;  //色
int speed;          //描く速さ
int angle = 0;          //角度（=点の位置）

//コンストラクタ（半径、線の太さ、線の色）
DrawCircle(int _radius,int _lineWidth,color _circleColor){
  //speed = 100;
  translate(width/2,height/2);
  radius = _radius;
  lineWidth = _lineWidth;
  circleColor = _circleColor;
}

void draw(){
  stroke(circleColor);
  point( cos(radians(angle)) * radius , sin(radians(angle)) * radius );
  angle ++;
   
}
