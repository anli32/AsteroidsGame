Spaceship bob;// = new Spaceship(); If I do this, the spaceship will be initialized before the size of the canvas is changed so that it will only appear in the upper left corner
// this is because I use width and height to determine the center of the ship
public void setup() 
{
  size(500, 500);
  bob = new Spaceship();
}

public void draw() 
{
	background(0);
  bob.show();
  bob.move();

}

public void keyPressed() {
  if(keyCode == RIGHT)
  	bob.turn(10);
  else if(keyCode == LEFT)
  	bob.turn(-10);
  else if(keyCode == UP)
  	bob.accelerate(1);
 }
  
