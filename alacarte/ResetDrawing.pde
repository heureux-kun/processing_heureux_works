class ResetDrawing{
  //画面の描画をリセットするクラス
  
  //=================
  //初期設定
  //=================
  color backgroundColor;
  
  //=================
  //コンストラクタ
  //=================
  //背景色
  ResetDrawing( color _backgroundColor ){
    backgroundColor = _backgroundColor;
  }
  
  //=================
  //setup
  //=================
  void setup(){
    background(backgroundColor);
  }
}
