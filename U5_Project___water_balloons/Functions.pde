

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
  println(teams[0], teams[1]);
  
  return teams;
}

int countBalls() {
  int numBalls = balls.size();
  return numBalls;
}
