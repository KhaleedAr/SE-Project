int numRed, numGreen;
ArrayList<Person> people = new ArrayList<Person>();
ArrayList<balloon> balls = new ArrayList<balloon>();
int ballCount = balls.size();

Person p = new Person(10,10,10,10, "RED");
Person q = new Person(10,10,10,10, "GREEN");
Person p2 = new Person(10,10,10,10, "RED");




Person p1 = new Person(10,10,10,10,"RED");
balloon b1 = new balloon(p,q);



void setup(){
size(1000,800);
background(240);

people.add(p);
people.add(q);
people.add(p2);

p.drawMe();
q.drawMe();


b1.drawMe();



frameRate(60);
}


void draw() {
  background(230);
  

  
  
  p.drawMe();
  q.drawMe();
  p1.drawMe();
  q.updatePos();
  b1.updatePos();
  b1.drawMe();
  b1.ballThrow();

  
}
