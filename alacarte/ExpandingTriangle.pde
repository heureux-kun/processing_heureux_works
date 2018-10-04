class ExpandingTriangle{
  //拡大する正三角形を生成
  //バリエーション：右回り、左回り、ベタ
  
  //=================
  //初期設定
  //=================
  float radius = random(0,50); //最初の三角形が収まる円の半径
  PVector centerPoint;  //三角形の中心点
  int rotateInitialValue = 0;  //三角形の角度の初期値
  int rotate = 0;  //三角形の角度
  
  int lineWidth;    //線の太さ
  color lineColor;  //線の色
  int direction;  //回転する方向
  int triangleFillFlag;  //三角形を塗りつぶすかどうか
  
  PVector firstPoint;
  PVector secondPoint;
  PVector thirdPoint;
  
  
  //=================
  //コンストラクタ（三角形の線の太さ、三角形の線の色、回転する方向（右(0)か左(1)か）、三角形を塗りつぶすかどうか）
  //=================
  ExpandingTriangle(int _lineWidth, color _lineColor, int _direction, int _triangleFillFlag){
    lineWidth = _lineWidth;
    lineColor = _lineColor;
    direction = _direction;
    triangleFillFlag = _triangleFillFlag;
  }
  
  //=================
  //setup
  //=================
  void setup() {
    size(800,600);
    //fullScreen();
    background(#000000);
    frameRate(100);
    centerPoint = new PVector(0, 0);
    
    strokeWeight(lineWidth);
    stroke(lineColor);
    
    //triangleFillFlagが1の時(塗りつぶす時)
    if( triangleFillFlag == 1 ){
      fill(lineColor);
    }else{
      noFill();
    }
    
  }
  
  //=================
  //draw
  //=================
  void draw() {
    translate(width/2, height/2);
    //右回り
    if( direction == 0 ){
      rotate(radians(rotate + rotateInitialValue));
      
    //左回り
    }else if( direction == 1 ){
      rotate( radians(rotate + rotateInitialValue) * -1 );
    }
    
    firstPoint = new PVector( centerPoint.x, centerPoint.y - radius );
    secondPoint = new PVector( sin(radians(60)) * radius, centerPoint.y + cos(radians(60)) * radius );
    thirdPoint = new PVector( sin(radians(60)) * radius * -1, centerPoint.y + cos(radians(60)) * radius );
  
    //point(0,0);
    line( firstPoint.x, firstPoint.y, secondPoint.x, secondPoint.y );
    line( secondPoint.x, secondPoint.y, thirdPoint.x, thirdPoint.y );
    line( thirdPoint.x, thirdPoint.y, firstPoint.x, firstPoint.y );
    radius += 20;
    //右回り
    if( direction == 0 ){
      rotate += 5;
      
    //左回り
    }else if( direction == 1 ){
      rotate -= 5;
    }
    
    println("radius："+ radius);
    println("rotate："+ rotate);
  }
}
