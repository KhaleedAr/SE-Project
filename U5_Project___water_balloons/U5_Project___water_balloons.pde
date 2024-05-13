ArrayList<Person> people = new ArrayList<Person>();

Person p = new Person(10,10,10,10, "RED");
Person q = new Person(10,10,10,10, "GREEN");





void setup(){
size(800,800);
background(240);

people.add(p);
people.add(q);

p.drawMe();
q.drawMe();

balloon b1 = new balloon();
b1.pos = new PVector(300,300);
b1.draw();



frameRate(10);
}


void draw() {
  
  p.drawMe();
  q.drawMe();
  q.updatePos();
  //p.updatePos();
  
  
  
}
