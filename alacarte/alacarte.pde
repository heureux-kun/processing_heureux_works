DrawCircle myDrawCircle;
ExpandingTriangle myExpandingTriangle;

void setup(){
  size(1000,800);
  myDrawCircle = new DrawCircle(300,10,color(255,255,255));
  myExpandingTriangle = new ExpandingTriangle(10,color(255,255,255));
}

void draw(){
    if(key == '1'){
      myDrawCircle.draw();
    }
    if(key == '2'){
      myExpandingTriangle.draw();
    }
}
