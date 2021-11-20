Star [] sky = new Star [100];
Spaceship ship = new Spaceship();

public void setup()
{
  size(400, 400);
  sky = new Star [150];
  for (int i = 0; i < sky.length; i ++) {
    sky[i] = new Star();
  }
}
public void draw()
{
  background(0);
  for (int i = 0; i < sky.length; i++) {
    sky[i].show();
  }

  if (keyPressed) {
    if (key == 'a' || key == 'A') {
      ship.turn(-10);
    }
    if (key == ' ') { 
      ship.accelerate(0.4);
    }
    if (key == 'h' || key == 'H') {
      ship.hyperspace(0);
    }
    if (key == 'p' || key == 'P') {
      ship.pause(0);
    }
  }
  ship.move();
  ship.show();
}
