import controlP5.*;

//ControlP5の宣言
ControlP5 cp5;

Slider moveZDegree;
Slider xRotate;
Slider yRotate;
Slider zRotate;

//球体の半径
float radian = 100;
float r = 0;

float degree = 0;

float x = 0;
float y = 0;
float z = 0;

//setup--------------------------------
void setup(){
  size(600,600,P3D);
  pixelDensity(displayDensity());
  
  //ControlP5の初期化
  cp5 = new ControlP5(this);
  
  //位置のスライダー
  moveZDegree = cp5.addSlider("move Z Degree")
    .setPosition( 20 ,20 )
    .setRange(-90,90)
    .setValue(0);
  
  //xの角度のスライダー
  xRotate = cp5.addSlider("X rotate")
    .setPosition( 20 ,40 )
    .setRange(0,360)
    .setValue(0);
    
  //yの角度のスライダー
  yRotate = cp5.addSlider("Y rotate")
    .setPosition( 20 ,60 )
    .setRange(0,360)
    .setValue(0);
    
  //zの角度のスライダー
  zRotate = cp5.addSlider("Z rotate")
    .setPosition( 20 ,80 )
    .setRange(0,360)
    .setValue(0);
}


//draw--------------------------------
void draw(){
  background(#000000);
  
  pushMatrix();
    //画面回転---------------
    translate(width/2,height/2);
    
    rotateX(radians(xRotate.getValue()));
    rotateY(radians(yRotate.getValue()));
    rotateZ(radians(zRotate.getValue()));
    
    
    //X--------
    //軸
    stroke(#ff0000);
    strokeWeight(1);
    line( width/2 * -1 , 0 , width/2 , 0 );
    
    //Y--------
    //軸
    stroke(#0000ff);
    strokeWeight(1);
    line( 0 , height/2 * -1 , 0 , height/2 );
    
    //Z--------
    //軸
    stroke(#017a17);
    strokeWeight(1);
    line( 0 , 0 , width/2 * -1 , 0 ,0 , width/2 );
    
    //ポイント
    stroke(#ffffff);
    strokeWeight(5);
    for(int i = -90; i < 270; i += 20 ){
      r = cos(radians( moveZDegree.getValue())) * radian;
      x = cos(radians(i)) * r;
      y = sin(radians(i)) * r;
      z = tan(radians( moveZDegree.getValue())) * r;
      point(x,y,z);
    }
    
    
  popMatrix();
}
