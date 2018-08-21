class ExpandingTriangle{
  //拡大する正三角形を生成するクラス
  int lineWidth;    //線の太さ
  color lineColor;  //線の色
  PVector centerPoint;  //三角形の中心点
  int triangleSideLength; //最初の三角形の辺の長さ
  
  //コンストラクタ（線の太さ、線の色）
  ExpandingTriangle( int _lineWidth , color _lineColor ){
    lineWidth = _lineWidth;
    lineColor = _lineColor;
  }
  
  void setup(){
    translate(width/2,height/2);
    centerPoint.x = 0;
    centerPoint.y = 0;
    stroke(lineColor);
    strokeWeight(lineWidth);
    triangleSideLength = 50;
  }
  
  void draw(){
    float oneUnit = sqrt(triangleSideLength/2);
    //line( centerPoint.x , centerPoint.y - oneUnit*2 , triangleSideLength/2 , centerPoint.y + oneUnit , triangleSideLength/2*-1 , centerPoint.y + oneUnit );
    line( centerPoint.x , centerPoint.y - oneUnit*2 , triangleSideLength/2 , centerPoint.y + oneUnit );
  }
}
