class balloon{
  PVector pos;
  int rad = 30;
  boolean ice = false;
  color clr;
  
  //balloon(Person player){
  //  this.clr = player.clr;
  //  this.pos = player.pos;
  //}
  
  balloon(){}

  
  void draw(){
    fill(255,0,0);
    stroke(0);
    strokeWeight(3);
    circle(this.pos.x,this.pos.y,rad);
    
  }
  
  void checkCol(){
    
    
  }



  void damage(){
    
    
  }

















}
