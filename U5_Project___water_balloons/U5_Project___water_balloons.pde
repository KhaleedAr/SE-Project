Person p1 = new Person(10,10,10,10,"RED");
balloon b1 = new balloon();


void setup(){
size(800,800);
background(40);


b1.pos = new PVector(300,300);
b1.vel = new PVector(p1.strength,2);
b1.draw();




}


void draw(){
  background(40);
  
  b1.draw();
  b1.updatePos();
  

}
