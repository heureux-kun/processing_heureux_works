class DrawCircle{
  //円を描くクラス
  int radius;         //半径
  int lineWidth;      //線の太さ
  color circleColor;  //色
  int angle = 0;          //角度（=点の位置）
  
  //コンストラクタ（半径、線の太さ、線の色）
  DrawCircle(int _radius,int _lineWidth,color _circleColor){
    background(#000000);
    radius = _radius;
    lineWidth = _lineWidth;
    circleColor = _circleColor;
  }
  
  void draw(){
    smooth(8);
    frameRate(500);
    stroke(circleColor);
    translate(width/2,height/2);
    
    //丸で描く場合
    ellipse( cos(radians(angle)) * radius , sin(radians(angle)) * radius , lineWidth , lineWidth );
    
    //点で描く場合
    //point( cos(radians(angle)) * radius , sin(radians(angle)) * radius );
    
    angle ++;
     
  }
}
