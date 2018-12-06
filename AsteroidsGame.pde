Spaceship bob;// = new Spaceship(); If I do this, the spaceship will be initialized before the size of the canvas is changed so that it will only appear in the upper left corner
// this is because I use width and height to determine the center of the ship
Star[] galaxy;
ArrayList<Asteroid> asteroids;
ArrayList<Bullet> bull;

public void setup() 
{
  size(500, 500);
  bob = new Spaceship();
  bull = new ArrayList<Bullet>();

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

  for(int i = 0; i < galaxy.length; i++)
  	galaxy[i].display();

  // if call show and move for bullet in nested for loops will call show and move each time an asteroid moves
  	// this results in a single bullet shown as 50 bullets at once
  for(int i = 0; i < bull.size(); i++) {
  	bull.get(i).show();
  	bull.get(i).move();
  }

  for(int i = 0; i < asteroids.size(); i++) {
  	asteroids.get(i).move();
  	asteroids.get(i).show();

  	for(int j = 0; j < bull.size(); j++) {
  		float d2 = dist(asteroids.get(i).getX(), asteroids.get(i).getY(), bull.get(j).getX(), bull.get(j).getY());
  		if(d2 < 20) {
  		 	asteroids.remove(i);
  			bull.remove(j);
  			break;
  		}

  	}
  }

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
  else if(keyCode == DOWN)
  	bob.hyperspace();
  
  else if(key == 'f') {
  	bull.add(new Bullet(bob));
  }

  	
 }
  
