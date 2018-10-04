//ランダムに大きさと色の違う1000個の玉が移動していくプログラム

int NUM = 1000;
int VALUE = 30;
int CIRCLE_SIZE_MAX = 20;
float[] x = new float[NUM];
float[] y = new float[NUM];

int[] r = new int[NUM];
int[] g = new int[NUM];
int[] b = new int[NUM];
int[] a = new int[NUM];

float[] circleSize = new float[NUM];

void setup(){
  //screen size setting
  //size(800,600);
  //フルスクリーンモード
  fullScreen();
  
  frameRate(60);
  blendMode(BLEND);
  background(0);
  noStroke();
  for( int i = 0; i < NUM; i++ ){
    x[i] = 0;
    y[i] = 0;
    
    r[i] = int( random(0,255) );
    g[i] = int( random(0,255) );
    b[i] = int( random(0,255) );
    a[i] = int( random(0,255) );
    
    circleSize[i] = random(0,CIRCLE_SIZE_MAX);
  }
  //画面をフェードさせる
  fill(0,5);
  noStroke();
  rect(0,0,width,height);
}

void draw(){
   translate(width/2,height/2);
  //玉の数だけ回す
  for( int i = 0; i < NUM; i++ ){
    fill(r[i],g[i],b[i],a[i]);
    ellipse(x[i],y[i],circleSize[i],circleSize[i]);
    x[i] += random(VALUE*-1,VALUE);
    y[i] += random(VALUE*-1,VALUE);
   }
}
