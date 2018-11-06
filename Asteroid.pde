class Asteroid extends Floater {
	public Asteroid() {
		corners = 12;
	    xCorners = new int[corners];
	    yCorners = new int[corners];
	    xCorners[0] = 8;
	    yCorners[0] = 0;
	    xCorners[1]= -4;
	    yCorners[1] = 4;
	    xCorners[2] = -2;
	    yCorners[2] = 0;
	    xCorners[3] = -4;
	    yCorners[3] = -4;
	    xCorners[4] = 8;
	    yCorners[4] = 0;
	    xCorners[5] = 8;
	    yCorners[5] = 0;
	    xCorners[6] = 8;
	    yCorners[6] = 0;
	    xCorners[7] = 8;
	    yCorners[7] = 0;
	    xCorners[8] = 8;
	    yCorners[8] = 0;
	    xCorners[9 = 8;
	    yCorners[9] = 0;
	    xCorners[10] = 8;
	    yCorners[10] = 0;
	    xCorners[11] = 8;
	    yCorners[11] = 0;
	    
	    myColor = color(255, 255, 255);
	    
	    myCenterX = width / 2;
	    myCenterY = height / 2;
	    
	    myDirectionX = 0;
	    myDirectionY = 0;
	    
	    myPointDirection = 270;
	}
}