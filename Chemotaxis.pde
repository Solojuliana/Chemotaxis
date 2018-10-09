Bacteria[] teehee; 
 void setup()   
 {     
 	//initialize bacteria variables here   
 	size(600,600);
 	teehee = new Bacteria[10];
 	for(int i = 0; i <teehee.length; i++){
 		teehee[i] = new Bacteria();
 	}
 	frameRate(50);
 }   

void draw()   
{    
 	//move and show the bacteria
 	background(70,210,247);
 	for(int i = 0; i < teehee.length; i++){
 		teehee[i].show();
 		teehee[i].walk();
 	}
 	for(int j = 0; j < 10; j++){
 		fill(89,171,232);
 		ellipse((int)(Math.random()*500) + 50, (int)(Math.random()*500)+50, 20,20);
 	}
}

 class Bacteria    
 {     
 	//member variables
 	int x , y;
 	//lots of java!   
 	Bacteria()
 	{
 		x = 300;
 		y = 300;
 	}
 	void walk()
 	{
 		x = x + (int)(Math.random()*5)-2;
 		y = y + (int)(Math.random()*5)-2;
 		if(mouseX > x)
 		{
 			x = x + (int)(Math.random()*5)+1;
 		} if (mouseY > y)
 		{
 			y = y + (int)(Math.random()*5)+1;
 		}  if (mouseX < x)
 		{
 			x = x - (int)(Math.random()*5)+1;
 		}  if (mouseY < y)
 		{
 			y = y - (int)(Math.random()*5)+1;
 		}  if(mouseX > x && mouseY > y)
 		{
 			x = x + (int)(Math.random()*5)+1;
 			y = y + (int)(Math.random()*5)+1;
 		}  if(mouseX > x && mouseY < y)
 		{
 			x = x + (int)(Math.random()*5)+1;
 			y = y - (int)(Math.random()*5)+1;
 		} if(mouseX < x && mouseY > y)
 		{
 			x = x - (int)(Math.random()*5)+1;
 			y = y + (int)(Math.random()*5)+1;
 		} if(mouseX < x && mouseY < y){
 			x = x -(int)(Math.random()*5)+1;
 			y = y -(int)(Math.random()*5)+1;
 		}
 	}
 	void show()
 	{
 		if(mouseX < x){
 			fill(250,143,35);
 			ellipse(x,  y, 45, 20);
 			triangle(x+24,y, x + 35, y-5, x +35, y +5);
 			fill(0);
 			ellipse(x - 15, y, 5,5);
 		} else if (mouseX > x){
 			fill(250,143,35);
 			ellipse(x,  y, 45, 20);
 			triangle(x-24,y, x - 35, y-5, x -35, y +5);
 			fill(0);
 			ellipse(x + 15, y, 5,5);
 		}
 	}
 }    
