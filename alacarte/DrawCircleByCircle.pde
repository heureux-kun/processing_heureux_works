class DrawCircleByCircle{
  //円を描くクラス
  int trackRadius;         //円の軌跡の半径
  int circleRadius;        //円の半径
  int circleLineWidth;     //線の太さ
  color circleLineColor;       //色
  int circleFillFlag;
  int angle = 0;           //角度（=点の位置）
  
  //コンストラクタ（円の軌跡の半径、構成する円の大きさ、構成する円の線の太さ、構成する円の色、構成する円を塗りつぶすかどうか）
  DrawCircleByCircle(int _trackRadius, int _circleRadius, int _circleLineWidth, color _circleLineColor, int _circleFillFlag){
    //background(#000000);
    trackRadius = _trackRadius;
    circleRadius = _circleRadius;
    circleLineWidth = _circleLineWidth;
    circleLineColor = _circleLineColor;
    circleFillFlag = _circleFillFlag;
  }
  
  void setup(){
    smooth(8);
  }
  
  void draw(){
    frameRate(500);
    stroke(circleLineColor);
    translate(width/2,height/2);
    
    //丸で描く場合
    //塗りつぶさない場合
    if( circleFillFlag == 0 ){
      noFill();
      strokeWeight( circleLineWidth );
      stroke(circleLineColor);
    }
    //塗りつぶす場合
    else if( circleFillFlag == 1 ){
      noStroke();
      fill(circleLineColor);
    }
    
    if( angle <= 360 ){  
      ellipse( cos(radians(angle)) * trackRadius , sin(radians(angle)) * trackRadius , circleRadius , circleRadius );
      angle += 10;
    }
  }
}
