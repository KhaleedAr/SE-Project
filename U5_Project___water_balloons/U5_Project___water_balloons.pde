import g4p_controls.*;

int numRed, numGreen;
ArrayList<Person> people = new ArrayList<Person>();
ArrayList<balloon> balls = new ArrayList<balloon>();
int ballCount = balls.size();

int st1, st2, sp1, sp2, ed1, ed2, ag1, ag2;


int frameRate = 60;

Person p = new Person(10,10,10,10, "RED");
Person q = new Person(10,10,10,10, "GREEN");
Person p2 = new Person(10,10,10,10, "RED");




Person p1 = new Person(10,10,10,10,"RED");
balloon b1 = new balloon(p,q);



void setup(){
size(1000,800);
background(240);
createGUI();

people.add(p);
people.add(q);
people.add(p2);
balls.add(b1);

p.drawMe();
q.drawMe();


b1.drawMe();



frameRate(frameRate);
}


void draw() {
  background(230);
  
  
  for( Person p : people ) {
    p.drawMe();
    p.updatePos();
    p.throwBall();
  }
  
  

  for( balloon b : balls ) {
    b.drawMe();
    b.ballThrow();
    b.updatePos();
  }
  
}
