int numRed, numGreen;
ArrayList<Person> people = new ArrayList<Person>();

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


b1.draw();



frameRate(10);
}


void draw() {
  background(230);
  

  
  
  p.drawMe();
  q.drawMe();
  q.updatePos();
  b1.draw();
  b1.updatePos();
  
  
}
