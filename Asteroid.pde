class Asteroid extends Floater {
	private int rotateSpeed;
	public Asteroid() {
		corners = 12;
	    xCorners = new int[corners];
	    yCorners = new int[corners];
	    xCorners[0] = 10;
	    yCorners[0] = 1;
	    xCorners[1]= 9;
	    yCorners[1] = 4;
	    xCorners[2] = 5;
	    yCorners[2] = 5;
	    xCorners[3] = 1;
	    yCorners[3] = 7;
	    xCorners[4] = -4;
	    yCorners[4] = 5;
	    xCorners[5] = -8;
	    yCorners[5] = 4;
	    xCorners[6] = -11;
	    yCorners[6] = 0;
	    xCorners[7] = -11;
	    yCorners[7] = -4;
	    xCorners[8] = -8;
	    yCorners[8] = -6;
	    xCorners[9] = -2;
	    yCorners[9] = -5;
	    xCorners[10] = 2;
	    yCorners[10] = -5;
	    xCorners[11] = 7;
	    yCorners[11] = -4;

	    
	    myColor = color(198, 198, 198);
	    
	    myCenterX = (int)(Math.random() * width);
	    myCenterY = (int)(Math.random() * height);
	    
	    myDirectionX = (int)(Math.random() * 3) - 1;
	    myDirectionY = (int)(Math.random() * 3) - 1;

	    myPointDirection = (int)(Math.random() * 2* PI);
	
		rotateSpeed = (int)(Math.random() * 7) - 3;
	}
	public void setX(int x) {
        myCenterX = x;
    }  
    
    public int getX() {
        return (int)myCenterX;
    } 

    public void setY(int y) {
        myCenterY = y;
    }  

    public int getY() {
        return (int)myCenterY;
    }   

    public void setDirectionX(double x) {
        myDirectionX = x;
    }  

    public double getDirectionX() {
        return myDirectionX;
    } 

    public void setDirectionY(double y) {
        myDirectionY = y;
    }

    public double getDirectionY() {
        return myDirectionY;
    }   

    public void setPointDirection(int degrees) {
        myPointDirection = degrees;
    }

    public double getPointDirection() {
        return myPointDirection;
    }

    public void hyperspace() {
        myDirectionX = 0;
        myDirectionY = 0;
        myCenterX = Math.random() * width;
        myCenterY = Math.random() * height;
        myPointDirection = Math.random() * 360;
    }

    // Override Floater's move function
    public void move() {
    	turn(rotateSpeed);
    	// If the direction is set at 0, it won't move so set it to direction of 1
    	if(myDirectionX == 0 && myDirectionY == 0){
    		myDirectionX = 1;
    		myDirectionY = 1; 

    	}

    	super.move();
    }

}