class balloon{
  //Fields
  PVector pos = new PVector(400,400);
  PVector dest;
  PVector vel;
  int rad = 30;
  boolean ice = false;
  color clr;
  String team;
  float maxVel;
  
  
  //Constructor
  balloon(Person p, Person e){
    this.team = p.team;
    this.vel = new PVector(p.strength,2);
    this.clr = p.clr;


    this.pos = new PVector(p.pos.x, p.pos.y);
    //this.pos = p.pos;
    this.vel = new PVector(p.strength*.2,2);
    this.clr = p.clr;
    
    this.dest = new PVector(e.pos.x, e.pos.y);
    this.maxVel = p.strength;
    if( this.maxVel == 0 )
      this.maxVel = 1;
    
    }

  
  void drawMe(){
    fill(clr);
    stroke(0);
    strokeWeight(1);
    circle(this.pos.x,this.pos.y,rad);
    
  }
  
  void updatePos(){
    this.pos.add(vel);
    
    
  }
  
  void ballThrow(){
    float angle;
    PVector displacement = PVector.sub( this.dest, this.pos );
    angle = displacement.heading();
    PVector direction = new PVector( cos(angle), sin(angle) );
    this.vel = direction.mult(this.maxVel);
    
    
  }
  
  void checkCol(){
    
    
  }




















}
