import processing.sound.*; // Soundライブラリを読み込む
AudioIn in; // サウンド入力
Amplitude rms; // 音量解析
int colorR;
int colorB;
int colorG;
float colorA;

void setup(){
  //フルスクリーンモード
  fullScreen();
  

  blendMode(EXCLUSION);
  colorMode(RGB, 255, 255, 255, 1.0); 
  in = new AudioIn(this,0);
  in.start();
  rms = new Amplitude(this);
  rms.input(in);
}

void draw(){  
  //カーソルを非表示
  noCursor();
  
  //背景色
  background(0);
  
  //デフォルトの円の色
  fill( 255 , 255 , 255 , 1.0 );
  
  //色を変えた時用の設定
  colorR = int(random(0,255));
  colorB = int(random(0,255));
  colorG = int(random(0,255));
  colorA = random(0,1.0);
  
  if ( key == '1' ) {
    fill( colorR , colorB , colorG , 1.0 );
  }else{
    fill( 255 , 255 , 255 , 1.0 );
  }
  
  //音量を解析して値を調整する
  float diameter = map(rms.analyze(), 0.0, 0.05, 0.0, width);
  
  //取得した音量で円を描く
  ellipse(width/2,height/2,diameter,diameter);
  
}
