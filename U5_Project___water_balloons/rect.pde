class Rect {
  float x,y,w,h;
  color fillCol;
 
  Rect(float x, float y,float w, float h, color c) {
    fill(c);
    noStroke();
    rect(x,y,w,h);
  }
 
}
