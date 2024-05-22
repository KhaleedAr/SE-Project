class Person {
  //fields
  PVector pos, vel;  //The current position and Velocity of the Person
  String team;  //Which teach the Person is on
  color clr;  //Their colour
  String trait1, trait2;  //Bonus traits that each team can have up to 2 of
  boolean movingAway;
  
  float strength, speed, agility, endurance;  //The stats of each player. endurance represents how many hits each person can take
  float radius, throwRange, maxVel, throwCooldown, moveAway;

  
  
  //constructor
  Person(float st, float sp, float ag, float en, String t) {
    //Assigning the stats for each person
    this.strength = st + int(random(-1,1));
    this.speed = sp + int(random(-1,1));
    this.agility = ag + int(random(-1,1));
    this.endurance = (en + int(random(-1,1))) * 10;

    this.radius = 35 + ((this.endurance + this.strength) * 0.3);  //Slight variance in the size of each person depending on their strength and endurance
    this.throwRange = 90 + (this.radius*2) + (10*strength);  //Calculate the throw range of each team member
    this.throwCooldown = 3 * frameRate;
    this.moveAway = 0;
    this.movingAway = false;
      
    this.pos = new PVector(150,250);
    this.maxVel = 0.2 * this.speed;
    if(this.maxVel == 0)
      this.maxVel = 0.2;
    this.vel = new PVector(0,0);
    
    
    //If they are on the RED team, they get coloured in as red, otherwise they are on the GREEN team
    if( t.equals("RED")) {
      team = "RED";
      clr = color(255,0,0);
      this.pos = new PVector(random(500,600),random(300,400));
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
    int i = 0;
    int minimum;
    int[] distList;
    int[] teamSize = checkTeamSize();
    for( Person p : people ) {
        
      if(this.team.equals("RED"))
        distList = new int[people.size()-teamSize[0]];
      else
        distList = new int[people.size()-teamSize[1]];
      
      
      
      
      if( this.team != p.team ) {  //So it doesnt go to itself
        
        float distance = dist(this.pos.x, this.pos.y, p.pos.x, p.pos.y);
        distList[i] = int(distance);
        minimum = min(distList);
        i++;
        
        
        float angle;
        PVector displacement = PVector.sub( p.pos, this.pos );
        PVector direction;
        angle = displacement.heading();
        if( moveAway > 0  ) {
          if( moveAway == 2.5 * frameRate ) {
            angle += random(-50,50);
          }
          direction = new PVector( cos(-angle), sin(-angle) );
          this.moveAway--;
        }
        else {
          direction = new PVector( cos(angle), sin(angle) );
          movingAway = false;
        }
        
        this.vel = direction.mult(this.maxVel);
        if( distance <= throwRange/3 ) {
          if( !movingAway ) {
          this.moveAway = 2.5*frameRate;
          movingAway = true;
          }
        }
      }
      
      
      
    }

    
    println(this.moveAway);
    this.pos.add(this.vel);
  }
  
  
  //Throw a ball at anyone who is in their throw radius

  void throwBall() {
    throwCooldown -= 1;
    for( Person p : people ) {
      
      if( this.team != p.team && this.throwRange/2 >= dist(this.pos.x, this.pos.y, p.pos.x, p.pos.y) ) {
        if( this.throwCooldown <=0) {
          balls.add(new balloon(this, p));
          this.throwCooldown = 3 * frameRate;
        }

      }
    }
  }

  
  
  
}



//maybe we could make the peopel have a certain number of shots before they have to go back and refill their balloons
