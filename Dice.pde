void setup()
{
	noLoop();
	size(1000,1000);
}
void draw()
{
	background(255);
	//int numDots = 0;
	for(int x = 50; x > 951; x=x+12)
	{
		Die bob = new Die(x,50);
		bob.show();

	}
	
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY, diceValue;

	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
		roll();
	}
	void roll()
	{
		diceValue = ((int)(Math.random()*6)+1);
	}
	void show()
	{
		fill(197);
		rect(myX,myY,50,50);
		fill(0);
		if (diceValue==1)
		{
			ellipse(myX,myY,10,10);
		}
		else if (diceValue==2)
		{
			ellipse(myX-15,myY,10,10);
			ellipse(myX+15,myY,10,10);
		}
		else if (diceValue==3)
		{
			ellipse(myX,myY,10,10);
			ellipse(myX-15,myY+15,10,10);
			ellipse(myX+15,myY-15,10,10);
		}
		else if (diceValue==4)
		{
			ellipse(myX-15,myY+15,10,10);
			ellipse(myX-15,myY-15,10,10);
			ellipse(myX+15,myY+15,10,10);
			ellipse(myX+15,myY-15,10,10);
		}
		else if (diceValue==5)
		{
			ellipse(myX,myY,10,10);
			ellipse(myX-15,myY+15,10,10);
			ellipse(myX-15,myY-15,10,10);
			ellipse(myX+15,myY+15,10,10);
			ellipse(myX+15,myY-15,10,10);
		}
		else
		{
			ellipse(myX-15,myY+15,10,10);
			ellipse(myX-15,myY-15,10,10);
			ellipse(myX-15,myY,10,10);
			ellipse(myX+15,myY+15,10,10);
			ellipse(myX+15,myY-15,10,10);
			ellipse(myX+15,myY,10,10);




		}
	}
}
