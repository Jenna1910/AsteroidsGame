class Spaceship extends Floater {  
  public Spaceship() {
    corners = 4;
    xCorners = new int[] {-8, 16, -8, -2};
    yCorners = new int[] {-8, 0, 8, 0};
    myColor = color(255);
    myCenterX = 200;
    myCenterY = 200;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }


 public void hyperspace(double n){
     myXspeed = n; 
     myYspeed = n;
     myCenterX = (int)(Math.random()*800);
     myCenterY = (int)(Math.random()*600);
     myPointDirection = (int)(Math.random()*360);
   }
   public void pause(double n){
     myXspeed = n;
     myYspeed = n;
   }

}






