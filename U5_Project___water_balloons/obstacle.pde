
  
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
      obstacles[0] = new Rect(width/2-150,height/8,300, height/3,this.fillCol);
      obstacles[1] = new Rect(width/2-150,height*13/24,300, height/3,this.fillCol);
    }
     if (this.shapeType.equals("tri_1")){
      tri[] obstacles = new tri[numShapes];
      obstacles[0] = new tri(width/5-75,height*0.66+75, width*0.35+75, height*0.66+75, width*0.275, height/2,this.fillCol);
      obstacles[0] = new tri(width*0.65-75,height*0.66+75, width*0.8+75, height*0.66+75, width*0.725, height/2,this.fillCol);
      obstacles[2] = new tri(width*0.425-75,height*0.34+75,width*0.575+75, height*0.34+75, width/2, height*0.18,this.fillCol);
     }
     
     if (this.shapeType.equals("circ_2")){
      Circle[] obstacles = new Circle[numShapes];
      obstacles[0] = new Circle(0,height/2,500, this.fillCol);
      obstacles[1] = new Circle(width*3/4,height/4,350, this.fillCol);
      obstacles[1] = new Circle(width,height,600, this.fillCol);
      obstacles[1] = new Circle(width*4.5/10,height*3/4,250, this.fillCol);

      

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
