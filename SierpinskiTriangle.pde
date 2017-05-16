public void setup()
{
	background(200);
	size(400,400);

}
public void draw()
{
	background(0);
	sierpinski(0, 400, 200);
}
public void mouseDragged() //optional
{

}
public void sierpinski(int x, int y, int len) 
{
	int r = (int)(Math.random()*255); 
 	int g = (int)(Math.random()*255); 
 	int b = (int)(Math.random()*255); 

 	if(len <= 10) 
 	{ 
		fill(r,g,b); 
 		//triangle(x, y, x + len/2, y - len/2, x + len/2, y + len/2);	 
 		triangle(x,y,x+len/2, y - len/2, x + len,y );
 	} 
 	else 
	{ 
		fill(r,g,b); 
		sierpinski(x, y, len/2); 
		sierpinski(x+len/2, y, len/2); 
		sierpinski(x+len/4, y-len/2, len/2); 
	} 

}

