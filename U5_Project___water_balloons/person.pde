class Person {
  //fields
  PVector pos, vel;  //The current position and Velocity of the Person
  String team;  //Which teach the Person is on
  color clr;  //Their colour
  String trait1, trait2;  //Bonus traits that each team can have up to 2 of
  
  float strength, speed, agility, endurance;  //The stats of each player. endurance represents how many hits each person can take
  float radius, throwRange;
  
  
  
  //constructor
  Person(float st, float sp, float ag, float en, String t) {
    //Assigning the stats for each person
    this.strength = st + int(random(-1,1));
    this.speed = sp + int(random(-1,1));
    this.agility = ag + int(random(-1,1));
    this.endurance = (en + int(random(-1,1))) * 10;

//////////////////////

    this.radius = 35 + ((this.endurance + this.strength) * 0.3);  //Slight variance in the size of each person depending on their strength and endurance
    this.throwRange = 90 + (this.radius*2) + (10*strength);  //Calculate the throw range of each team member
      
    this.pos = new PVector(100,100);
      
    
    //If they are on the RED team, they get coloured in as red, otherwise they are on the GREEN team
    if( t.equals("RED")) {
      team = "RED";
      clr = color(255,0,0);
    }
    else {
      team = "GREEN";
      clr = color(0,255,0);
    }
    
    
  }
  
  
  //Methods
  
  void drawMe() {
    fill(clr);
    circle(this.pos.x, this.pos.y, this.radius);
    noFill();
    strokeWeight(0.1);
    circle(this.pos.x, this.pos.y, this.throwRange);
  }
  
  //Update the position of the person each frame
  void updatePos() {
    this.pos.add(this.vel);
  }
  
  
  //Throw a ball at anyone who is in their throw radius
  //void throwBall() {
  //  for( Person p : people ) {
  //    if( this.team.equals("GREEN") ) {
  //      if( p.team.equals("RED") && calculateDist(this.pos, p.pos) <= this.throwRange ) {
          
  //      }
  //    }
      
  //  }
  //}
  
  
  
}

//maybe we could make the peopel have a certain number of shots before they have to go back and refill their balloons
