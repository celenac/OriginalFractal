int lastX,lastY;
public void setup()
{
	size(600,600);
	lastX=width/2;
	lastY=height/2;
	frameRate(8);
}

public void draw()
{
	background(0);
	stroke(255);
	noFill();
	strokeWeight(2);
	ellipse(lastX,lastY, 800,800);
	myFractal((int)(lastX),(int)(lastY),800);
}

public void myFractal(int x, int y, int siz)
{
	stroke(mouseX,mouseY,mouseY, (int)(Math.random()*255)+20);
	ellipse(x,y, siz, siz);
	if(siz>3) //base case
	{
		myFractal((int)(lastX),(int)(lastY),(int)(siz*.9));
	}
}