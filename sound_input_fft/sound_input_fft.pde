import processing.sound.*;
//サウンド入力
AudioIn in;

//FFT
FFT fft;

//FFTサイズを設定する
int bands = 1024;

float scale = 20.0;

void setup(){
  size(600,400);
  
  //サウンド入力を初期化
  in = new AudioIn(this,0);
  
  //入力したサウンドを再生する
  in.start();
  
  //FFTを初期化する
  fft = new FFT(this,bands);
  
  fft.input(in);
  
}

void draw(){
  background(0);
  
  //FFT解析を実行する（解析結果は、FFTクラス内のspectrum[]配列に格納される）
  fft.analyze();
  
  //グラフの横幅を算出する（画面の1バンドあたりの横幅を算出）
  float widthEachBand = width/float(bands);
  
  noFill();
  stroke(255);
  //線分の描画を開始する
  beginShape();
  //FFTのバンドの数だけ繰り返し
  for (int i = 0; i < bands; i++ ){
    //FFTの解析結果をグラフに描く
    //上が0なので、heightからマイナスしている（多分）
    vertex( i * widthEachBand , height - fft.spectrum[i] * height * scale );
    println(fft.spectrum[i]);
  }
  endShape();
}
