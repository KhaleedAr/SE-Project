class Obstacles{
  String shapeType;
  int numShapes;
  color fillCol;
 
  Obstacles(String s, int n){
    this.shapeType = s;
    this.numShapes = n;
    this.fillCol = color(0,0,255);
    if (this.shapeType.equals("circ_1")){
      Circle[] obstacles = new Circle[numShapes];
          obstacles[0] = new Circle(width/2,height/2,width/2, this.fillCol);
    }
    if (this.shapeType.equals("Rect")){
      Rect[] obstacles = new Rect[numShapes];
      obstacles[0] = new Rect(300,150,100, 150,this.fillCol);
      obstacles[1] = new Rect(300,450,100, 150,this.fillCol);
    }
     if (this.shapeType.equals("tri_1")){
      tri[] obstacles = new tri[numShapes];
      obstacles[0] = new tri(100,500, 150, 400, 200, 500,this.fillCol);
      obstacles[1] = new tri(200,400,250,300, 300, 400,this.fillCol);
      obstacles[2] = new tri(300,500,350, 400,400, 500,this.fillCol);
     }
     
     if (this.shapeType.equals("circ_2")){
      Circle[] obstacles = new Circle[numShapes];
      obstacles[0] = new Circle(300,300,100, this.fillCol);
      obstacles[1] = new Circle(300,300,100, this.fillCol);

    }
     
      if (this.shapeType.equals("tri_2")){
      tri[] obstacles = new tri[numShapes];
      obstacles[0] = new tri(0,0 , 0, height/3 , width/3,0, this.fillCol);
      obstacles[1] = new tri(0,height , 0,2*height/3 , width/3,height , this.fillCol);
      obstacles[2] = new tri(width,0 , 2*width/3,0 , width, height/3 ,this.fillCol);
      obstacles[3] = new tri(width,height , 2*width/3,height , width,2*height/3 , this.fillCol);
      obstacles[4] = new tri(width/2,height/5 , width/4,height/2 , 3*width/4,height/2 , this.fillCol);
      obstacles[5] = new tri(width/2,4*height/5 , width/4,height/2 , 3*width/4,height/2 , this.fillCol);

     }
}

}
