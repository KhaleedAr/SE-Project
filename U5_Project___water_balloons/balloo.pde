class balloon{
  PVector pos = p1.pos;
  PVector vel;
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
    strokeWeight(1);
    circle(this.pos.x,this.pos.y,rad);
    
  }
  
  void updatePos(){
    this.pos.add(vel);
    
    
  }
  
  void checkCol(){
    
    
  }



  void damage(){
    
    
  }

















}
