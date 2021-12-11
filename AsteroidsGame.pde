Star [] star;
Spaceship ship = new Spaceship();
boolean right, left;
int x = (int)(Math.random()*20)+15;
ArrayList <Asteroid> rock = new ArrayList <Asteroid>();
public void setup()
{
  size(750,750);
  star = new Star[100];
  for(int i = 0; i < star.length; i++)
    star[i] = new Star();
  for(int i = 0; i < x; i++){
    rock.add(new Asteroid());
    }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < star.length; i++){
    star[i].show();
}
for(int i = 0; i < rock.size(); i++){
    rock.get(i).show();
    rock.get(i).move();
    float d = dist(ship.getX(), ship.getY(), rock.get(i).getX(), rock.get(i).getY());
    if(d < 20)
    rock.remove(i);
}
ship.show();
ship.move();
if(left){
  ship.turn(-10);
}
if(right){
  ship.turn(10);
}
}
  public void keyPressed(){
       if (key == 'e' || key == 'E'){
      ship.turn(-10);
    }
    if (key == 'r' || key == 'R'){
      ship.turn(10);
    }
    if(key == 'a' || key == 'A'){
      ship.accelerate(1);
      }
    if(key == ' '){
     ship.pause(0); 
    }
    if(key == 'h' || key =='H'){
      ship.hyperspace(0);
    }
   }
