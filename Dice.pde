void setup()
{
	noLoop();
	size(500,550);
}
void draw()
{
	background(197);
	int totalRoll = 0;
	for(int y = 1; y < 475; y+=55)
	{
		for(int x = 1; x < 475; x+=55)
		{
			Die bob = new Die(x,y);
			bob.roll();
			bob.show();
			totalRoll+=bob.diceValue;

		}

	}
	text("Total Roll: " + totalRoll, 205,525);
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY, diceValue;

	Die(int x, int y) 
	{
		myX = x;
		myY = y;
		diceValue = 0;
	}
	void roll()
	{
		diceValue = ((int)(Math.random()*6)+1);
	}
	void show()
	{

		fill(255);
		rect(myX,myY,50,50);
		fill(0);
		System.out.println(diceValue);
		if (diceValue==1)
		{
			ellipse(myX+25,myY+25,10,10);
		}
		else if (diceValue==2)
		{
			ellipse(myX+12.5,myY+12.5,10,10);
			ellipse(myX+37.5,myY+37.5,10,10);
		}
		else if (diceValue==3)
		{
			ellipse(myX+25,myY+25,10,10);
			ellipse(myX+12.5,myY+12.5,10,10);
			ellipse(myX+37.5,myY+37.5,10,10);
		}
		else if (diceValue==4)
		{
			ellipse(myX+37.5,myY+12.5,10,10);
			ellipse(myX+12.5,myY+37.5,10,10);
			ellipse(myX+12.5,myY+12.5,10,10);
			ellipse(myX+37.5,myY+37.5,10,10);
		}
		else if (diceValue==5)
		{
			ellipse(myX+37.5,myY+12.5,10,10);
			ellipse(myX+12.5,myY+37.5,10,10);
			ellipse(myX+12.5,myY+12.5,10,10);
			ellipse(myX+37.5,myY+37.5,10,10);
			ellipse(myX+25,myY+25,10,10);
		}
		else
		{
			ellipse(myX+37.5,myY+12.5,10,10);
			ellipse(myX+12.5,myY+37.5,10,10);
			ellipse(myX+12.5,myY+12.5,10,10);
			ellipse(myX+37.5,myY+37.5,10,10);
			ellipse(myX+12.5,myY+25,10,10);
			ellipse(myX+37.5,myY+25,10,10);
			
		}
	} 
}
