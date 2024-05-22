import g4p_controls.*;

int numRed, numGreen;
ArrayList<Person> people = new ArrayList<Person>();
ArrayList<balloon> balls = new ArrayList<balloon>();
int ballCount = balls.size(), teamSizeRed = 1, teamSizeGreen = 1;
boolean start = false;

int st1, st2, sp1, sp2, ed1, ed2, ag1, ag2;


int frameRate = 60;



void setup(){
  size(1000,800);
  background(240);
  createGUI();
  
  
  //Obstacles a = new Obstacles("circ_1",1);
  //Obstacles b = new Obstacles("Rect",2);
  //Obstacles c = new Obstacles("tri_1",3);
  //Obstacles d = new Obstacles("circ_2", 4);
  //Obstacles e = new Obstacles("tri_2",6);

  
  
  frameRate(frameRate);
}


void draw() {
  background(230);
  if( !start )
    startScreen();
  
  
  
  for( Person p : people ) {
    p.drawMe();
    p.updatePos();
    p.throwBall();
  }
  
  //Create balloons
  for( balloon b : balls ) {
    b.drawMe();
    b.checkCol();
    b.updatePos();
    b.ballThrow();
  }
  
}
