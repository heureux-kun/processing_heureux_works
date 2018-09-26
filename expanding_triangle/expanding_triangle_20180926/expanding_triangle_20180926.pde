//拡大する正三角形を生成
int lineWidth;    //線の太さ
color lineColor;  //線の色
PVector centerPoint;  //三角形の中心点
float radius = random(0,50); //最初の三角形が収まる円の半径
int rotate = 0;  //三角形の角度
int rotateInitialValue = 0;  //三角形の角度の初期値

PVector firstPoint;
PVector secondPoint;
PVector thirdPoint;

void setup() {
  size(800,600);
  //fullScreen();
  background(#000000);
  frameRate(100);

  centerPoint = new PVector(0, 0);
  stroke(color(255, 255, 255));
  strokeWeight(1);
}

void drawTriangle() {
  translate(width/2, height/2);
  rotate(radians(rotate + rotateInitialValue));

  //background(#000000);
  firstPoint = new PVector( centerPoint.x, centerPoint.y - radius );
  secondPoint = new PVector( sin(radians(60)) * radius, centerPoint.y + cos(radians(60)) * radius );
  thirdPoint = new PVector( sin(radians(60)) * radius * -1, centerPoint.y + cos(radians(60)) * radius );

  //point(0,0);
  line( firstPoint.x, firstPoint.y, secondPoint.x, secondPoint.y );
  line( secondPoint.x, secondPoint.y, thirdPoint.x, thirdPoint.y );
  line( thirdPoint.x, thirdPoint.y, firstPoint.x, firstPoint.y );
  radius += 20;
  rotate += 5;
}

void draw() {
  drawTriangle();
  
  println("radius："+radius);
  println("rotate："+rotate);

  
}

//本当は、もし3点が画面をはみ出したらにしたい
void keyReleased(){
  if ( key == '1' ) {
    radius = random(0,50);
    rotate = 0;
    
    rotateInitialValue += 10;
    drawTriangle();
  }
  else if ( key == '0' ) {
    background(#000000);
    drawTriangle();
  }
}
