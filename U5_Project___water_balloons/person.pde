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
    this.throwCooldown = 3 * frameRate;  //a cooldown of 3 seconds in between each throw
    this.moveAway = 0;  //A timer used for when a person should be moving away from the enemy
    this.movingAway = false;  //true/false to say if they are moving away
      
    this.pos = new PVector(150,250);
    this.maxVel = 0.2 * this.speed;  //Sets max velocity based on their speed stat
    if(this.maxVel == 0)  //sets a minimum speed to prevent someone being unable to move
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
    stroke(100);
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
        
      if(this.team.equals("RED"))  //checks what team each person is on and checks the distance from each enemy
        distList = new int[people.size()-teamSize[0]];
      else
        distList = new int[people.size()-teamSize[1]];
      
      
      
      
      if( this.team != p.team ) {  //so that they do not move towards themselves
        
        float distance = dist(this.pos.x, this.pos.y, p.pos.x, p.pos.y);  //calculates the distance between each enemy
        distList[i] = int(distance);  //puts the distance into a list
        minimum = min(distList);  //pulls the closest enemy and chooses them to go towards
        i++;
        
        
        float angle;
        PVector displacement = PVector.sub( p.pos, this.pos );
        PVector direction;
        angle = displacement.heading();  //calculates the direction that the person needs to move in
        if( moveAway > 0  ) {  //if greater than zero, they should be moving away
          if( moveAway == 2.5 * frameRate ) {  //if they just begun moving away, it will select a random variance in how they move away
            angle += random(-50,50);
          }
          direction = new PVector( cos(-angle), sin(-angle) );  //The moving away formula
          this.moveAway--;  //counts down how long they should move away for
        }
        else {
          direction = new PVector( cos(angle), sin(angle) );  //The moving towards formula
          movingAway = false;
        }
        
        this.vel = direction.mult(this.maxVel);  //calculates the velocity
        if( distance <= throwRange/3 ) {  //If they get close to the enemy, they will begin to move away
          if( !movingAway ) {
          this.moveAway = 2.5*frameRate;
          movingAway = true;
          }
        }
      }
      
      
      
    }

    
    this.pos.add(this.vel);  //adds the velocity to their position
  }
  
  
  //Throw a ball at anyone who is in their throw radius
  void throwBall() {
    throwCooldown -= 1;
    for( Person p : people ) {
      
      if( this.team != p.team && this.throwRange/2 >= dist(this.pos.x, this.pos.y, p.pos.x, p.pos.y) ) {  //checks if they are on the same team as to avoid team damage, and also makes sure they are within range before throwing
        if( this.throwCooldown <=0) {  //checks if they are able to throw
          balls.add(new balloon(this, p));  //adds the balloon into a list to be drawn each frame
          this.throwCooldown = 3 * frameRate;  //After they throw, they wont be able to for 3 seconds
        }

      }
    }
  }

  
  
  
}



//maybe we could make the peopel have a certain number of shots before they have to go back and refill their balloons
