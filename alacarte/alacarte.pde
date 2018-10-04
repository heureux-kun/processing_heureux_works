//-------------
//DrawCircleByCircle（小さい円が円を描く）
//-------------
DrawCircleByCircle myDrawCircleByCircle;
DrawCircleByCircle myDrawCircleByCircle02;

//-------------
//RandomParticle（ランダムなパーティクル）
//-------------
RandomParticle myRandomParticle;

//-------------
//ExpandingTriangle（拡大する三角）
//-------------
ExpandingTriangle myExpandingTriangle;

//-------------
//ResetDrawing（描画をリセット）
//-------------
ResetDrawing myResetDrawing;

//=================
//setup
//=================
void setup(){
  size(1000,800);
  background(#000000);
  
  //-------------
  //DrawCircleByCircle（小さい円が円を描く）
  //-------------
  //円の軌跡の半径、構成する円の大きさ、構成する円の線の太さ、構成する円の色、構成する円を塗りつぶすかどうか
  myDrawCircleByCircle = new DrawCircleByCircle(300,25,1,color(212,255,0),0);
  myDrawCircleByCircle02 = new DrawCircleByCircle(300,25,1,color(212,255,0),1);

  //-------------
  //RandomParticle（ランダムなパーティクル）
  //-------------
  myRandomParticle = new RandomParticle(2);
    
  //-------------
  //ExpandingTriangle（拡大する三角）
  //-------------
  myExpandingTriangle = new ExpandingTriangle(1,color(255,255,255),0,1);
  
  //-------------
  //ResetDrawing（描画をリセット）
  //-------------
  myResetDrawing = new ResetDrawing(color(0,0,0));
  
  
}

void draw(){
    if(key == '1'){
      //-------------
      //DrawCircleByCircle
      //-------------
      myDrawCircleByCircle.draw();
    }
    else if(key == '2'){
      //-------------
      //DrawCircleByCircle02
      //-------------
      myDrawCircleByCircle02.draw();
    }
    else if(key == '3'){
      //-------------
      //RandomParticle
      //-------------
      myRandomParticle.draw();
    }
    else if(key == '4'){
      //-------------
      //ExpandingTriangle
      //-------------
      myExpandingTriangle.draw();
    }
    else if(key == '0'){
      //-------------
      //ResetDrawing
      //-------------
      myResetDrawing.setup();
    }
}

//=================
//keyReleased
//=================
void keyReleased(){
  
}
