Bacteria[] Colony = new Bacteria[666-300];

void setup()   
{     
	frameRate(666);
	size(666, 666); 
	background(0);
	for(int i = 0; i < Colony.length; i++)
	{
		Colony[i] = new Bacteria();
	}	  
}   

void draw()   
{  
 	fill(0);                  //draw rectangle so bacteria shows
 	rect(0, 0, 1000, 800);

 	for(int i = 0; i < Colony.length; i+=10)
 	{
 		Colony[i].walk();
 		Colony[i].show();
 	}
 	  
}  

class Bacteria    
{     
	int bacteriaSize, leX, leY, bacteriaColor;

	  Bacteria()
 	  {
		 leX = (int)(Math.random()*1001);
 		 leY = (int)(Math.random()*801);
 		 bacteriaColor = (int)(Math.random()*666); 
 		 bacteriaSize = (int)(Math.random()*10) + 8; 
 	  }

 	void walk()
 	  {
 		if(leX < mouseX)
 		{
 			leX = leX + (int)(Math.random()*4) - 1; 
 		}
 		else if(leX > mouseX)
 		{
 			leX = leX + (int)(Math.random()*4) - 2;
 		}
 		else 
 		{
 			leX = leX + (int)(Math.random()*5) - 2;	
 		}
 		if(leY < mouseY)
 		{
 			leY = leY + (int)(Math.random()*4) - 1;
 		}
 		else if(leY > mouseY)
 		{
 			leY = leY + (int)(Math.random()*4) - 2;
 		}
 		else 
 		{
 			leY = leY + (int)(Math.random()*5) - 2;	
 		}
 	}
 	void show()
 	{
 		noStroke();
 		fill(bacteriaColor,random(0,255),random(0,255)); 
		ellipse(leX, leY, bacteriaSize+1, bacteriaSize+1);
		fill(255);
		ellipse(mouseX,mouseY,15,15);
	}
 	   
 }
