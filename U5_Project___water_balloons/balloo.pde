class balloon{
  //Fields
<<<<<<< HEAD
  PVector pos = new PVector(400,400);
  PVector dest;
=======
  PVector pos = p1.pos;
>>>>>>> 4a74a81c912df0a8888a04849d7b13073ce75c3b
  PVector vel;
  PVector dest;
  int rad = 30;
  boolean ice = false;
  color clr;
  String team;
  float maxVel;
  
  
  //Constructor
  balloon(Person p, Person e){
    this.team = p.team;
<<<<<<< HEAD
    this.vel = new PVector(p.strength,2);
    this.clr = p.clr;
    //this.dest = p.enemy;
=======
    this.pos = p.pos;
    this.clr = p.clr;
    this.dest = e.pos;
    this.maxVel = p.strength;
    
>>>>>>> 4a74a81c912df0a8888a04849d7b13073ce75c3b
    }

  
  void draw(){
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
    PVector displacement = PVector.sub( p.pos, this.pos );
    angle = displacement.heading();
    PVector direction = new PVector( cos(angle), sin(angle) );
    this.vel = direction.mult(this.maxVel);
    
    
  }
  
  void checkCol(){
    
    
  }




















}
