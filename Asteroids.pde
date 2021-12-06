class Asteroid extends Floater{
private double rotSpeed;
void move(){
super.move();
turn(rotSpeed);
}
public Asteroid(){
corners = 12;
xCorners = new int[] {8,6,9,6,-1,-8,-10,-9,-11,-8,-2,6};
yCorners = new int[] {12,6,-1,-4,-1,-3,-1,5,11,12,10,14};
myColor = color(152);
myCenterX= (int)(Math.random()*751);
myCenterY = (int)(Math.random()*751);
myXspeed = (int)(Math.random()*5)+1;
myYspeed = (int)(Math.random()*10)+1;
myPointDirection = 0;
rotSpeed = (int)(Math.random()*7)+1;
}
}
