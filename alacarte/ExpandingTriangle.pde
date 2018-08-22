class ExpandingTriangle{
  //拡大する正三角形を生成するクラス
  int lineWidth;    //線の太さ
  color lineColor;  //線の色
  //PVector centerPoint;  //三角形の中心点
  int centerPointX;
  int centerPointY;
  int radius; //最初の三角形が収まる円の半径
  
  //コンストラクタ（線の太さ、線の色）
  ExpandingTriangle( int _lineWidth , color _lineColor ){
    lineWidth = _lineWidth;
    lineColor = _lineColor;
  }
  
  void setup(){
    translate(width/2,height/2);
    //centerPoint = new PVector(0,0);
    centerPointX = 0;
    centerPointY = 0;
    stroke(lineColor);
    strokeWeight(lineWidth);
    radius = 50;
  }
  
  void draw(){
    line(
      centerPointX , centerPointY - radius ,
      sin(radians(60)) * radius , centerPointY + cos(radians(30)) * radius,
      sin(radians(60)) * radius * -1 ,centerPointY + cos(radians(30)) * radius
    );
  }
}
