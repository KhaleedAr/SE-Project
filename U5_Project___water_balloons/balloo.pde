class balloon{
  //Fields
  PVector pos = p1.pos;
  PVector dest;
  PVector vel;
  int rad = 30;
  boolean ice = false;
  color clr;
  String team;
  
  
  //Constructor
  balloon(Person p){
    this.team = p.team;
    this.pos = p.pos.add(4,80);
    this.vel = new PVector(p.strength,2);
    this.clr = p.clr;
    this.dest = p.enemy;
    }

  
  void draw(){
    fill(clr);
    stroke(0);
    strokeWeight(1);
    circle(this.pos.x,this.pos.y,rad);
    
  }
  
  void updatePos(){
    this.pos.add(vel.add(50,30));
    
    
  }
  
  void checkCol(){
    
    
  }



  void damage(){
    
    
  }

















}
