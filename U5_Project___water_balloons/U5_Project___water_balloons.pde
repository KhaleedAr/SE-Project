
ArrayList<Person> people = new ArrayList<Person>();

Person p = new Person(10,10,10,10, "RED");
Person q = new Person(10,10,10,10, "GREEN");




Person p1 = new Person(10,10,10,10,"RED");
balloon b1 = new balloon();



void setup(){
size(800,800);
background(240);

people.add(p);
people.add(q);

p.drawMe();
q.drawMe();


b1.pos = new PVector(300,300);
b1.vel = new PVector(p1.strength,2);
b1.draw();



frameRate(10);
}


void draw() {
  background(230);
  
  b1.draw();
  b1.updatePos();
  
  
  p.drawMe();
  q.drawMe();
  p.updatePos();
  
  
  
}
