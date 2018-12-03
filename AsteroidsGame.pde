Spaceship bob;// = new Spaceship(); If I do this, the spaceship will be initialized before the size of the canvas is changed so that it will only appear in the upper left corner
// this is because I use width and height to determine the center of the ship
Star[] galaxy;
ArrayList<Asteroid> asteroids;
Bullet bull;

public void setup() 
{
  size(500, 500);
  bob = new Spaceship();
  bull = new Bullet(bob);

  galaxy = new Star[100];
  for(int i = 0; i < galaxy.length; i++)
  	galaxy[i] = new Star();

  asteroids = new ArrayList <Asteroid>();
  for(int i = 0; i < 50; i++) 
  	asteroids.add(new Asteroid());
}

public void draw() 
{
  background(0);

  for(int i = 0; i < asteroids.size(); i++) {
  	asteroids.get(i).move();
  	asteroids.get(i).show();
  	float d = dist(bob.getX(), bob.getY(), asteroids.get(i).getX(), asteroids.get(i).getY());
  	if(d < 15)
  		asteroids.remove(i);
  }

  for(int i = 0; i < galaxy.length; i++)
  	galaxy[i].display();

  bob.show();
  bob.move();
  bull.show();

}

public void keyPressed() {
  if(keyCode == RIGHT)
  	bob.turn(10);
  else if(keyCode == LEFT)
  	bob.turn(-10);
  else if(keyCode == UP)
  	bob.accelerate(1);
  else if(keyCode == DOWN)
  	bob.hyperspace();
  	
 }
  
