color c = color(200,200,200);
 
 public void setup()
{
size(500,500);

}
public void draw()
{
  fill(c);
sierpinski(500,500,1000);
}
public void mouseDragged()//optional
{
c= color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
}


public void sierpinski(int x, int y, int len) 
{
  if(len<=60)
  triangle(x,y,x-len,y,x-(len/2),y-len);
  else{
    
  sierpinski(x,y,len/2);
  sierpinski(x-(len/2),y,len/2);
  sierpinski(x-(len/4),y-(len/2),len/2);
  }

}
