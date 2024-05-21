

float calculateDist( PVector p, PVector victim ) {
  
  float distance = dist(p.x, p.y, victim.x, victim.y);
  return distance;
  
}


float checkAngle(PVector p, PVector victim) {
  

  float distance = calculateDist(p, victim);
  float xDist = victim.x - p.x;
  float angle = degrees(acos(xDist/distance));
  return angle;
  
}


int[] checkTeamSize() {
  int[] teams = new int[2];
  
  for(Person p : people) {
    if(p.team.equals("RED"))
      teams[0] += 1;
    if(p.team.equals("GREEN"))
      teams[1] += 1;
  }
  
  return teams;
}

int countBalls() {
  int numBalls = balls.size();
  return numBalls;
}


void createTeams() {
  createRed();
  createGreen();
  
}

void createRed() {
  for( int i = 0; i < teamSizeRed; i++) {
    people.add(new Person(st1, sp1, ag1, ed1, "RED") );
  }
}


void createGreen() {
  for( int i = 0; i < teamSizeGreen; i++) {
    people.add(new Person(st2, sp2, ag2, ed2, "GREEN") );
  }
}
