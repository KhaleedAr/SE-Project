

float calculateDist( PVector p, PVector victim ) {
  
  float distance = dist(p.x, p.y, victim.x, victim.y);
  return distance;
  
}


float checkAngle(PVector p, PVector victim) {
  
  float distance = calculateDist(p, victim);
  float xDist = victim.x - p.x;
  
  ////////////////
}
