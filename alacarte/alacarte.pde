DrawCircle myDrawCircle;

void setup(){
  size(1000,800);
  myDrawCircle = new DrawCircle(300,10,color(255,255,255));
}

//void keyPressed(){
//  if(key == 'a'){
//    //myDrawCircle.draw();
//  }
//}

void draw(){
    if(key == 'a'){
      myDrawCircle.draw();
    }
}
