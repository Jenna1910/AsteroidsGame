class Asteroid extends Floater {
  private double rotSpeed;
  void move() {
    super.move();
    turn(rotSpeed);
  }
  public Asteroid() {
    corners = 6;
    xCorners = new int[] {-11,7,13,6,-11,-5};
    yCorners = new int[] {-8,-8,0,10,8,0};
    myColor = color(152);
    myCenterX= (int)(Math.random()*751);
    myCenterY = (int)(Math.random()*751);
    myXspeed = (int)(Math.random()*5)+1;
    myYspeed = (int)(Math.random()*10)+1;
    myPointDirection = 0;
    rotSpeed = (int)(Math.random()*7)+1;
  }


  public float getX(){
    return (float) myCenterX;
  }
  public float getY(){  
    return (float) myCenterY;
  }
}
