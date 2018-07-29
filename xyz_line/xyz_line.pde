import controlP5.*;
ControlP5 cp5;
//ControlP5の宣言
Slider zPoint;

float rotateX = 0;
float rotateY = radians(-10);
float rotateZ = radians(20);

//テキストの宣言
PFont f;

void setup(){
  size(600,600,P3D);
  pixelDensity(displayDensity());
  //テキストの指定
  //f = createFont("Arial",16,true); 
}

void draw(){
  background(#FFFFFF);
  
  //ControlP5の初期化
  cp5 = new ControlP5(this);
  zPoint = cp5.addSlider("Z Point")
    .setPosition( width/2 * -1 +100 ,height/2 * -1 +100 )
    .setRange(0,400)
    .setValue(50);
   
  //画面回転---------------
  pushMatrix();
  translate(width/2,height/2);
  rotateX(rotateX);
  rotateY(rotateY);
  rotateZ(rotateZ);
  
  //X--------
  //軸
  stroke(#ff0000);
  strokeWeight(1);
  line( width/2 * -1 , 0 , width/2 , 0 );
  //textFont(f);
  
  //文字
  //fill(#ff0000);
  //text("X",width/4,-20);
  
  
  
  //Y--------
  //軸
  stroke(#0000ff);
  strokeWeight(1);
  line( 0 , height/2 * -1 , 0 , height/2 );
  
  //文字
  //fill(#0000ff);
  //text("Y",20,height/4 * -1);
  
  
  
  //Z--------
  //軸
  stroke(#017a17);
  strokeWeight(1);
  line( 0 , 0 , width/2 * -1 , 0 ,0 , width/2 );
  
  //文字
  //fill(#017a17);
  //text("Z",20,20,height/4 * -1);
  
  popMatrix();
}

// mouse event
void mouseDragged () {
  float rate = 0.01;
  rotateX += ( pmouseY - mouseY ) * rate;
  rotateY += ( mouseX - pmouseX ) * rate;
  rotateZ += ( pmouseY - mouseY ) * rate;
}
