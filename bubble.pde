class Bubble
{
 float X;//inicial variables of class
 float size;
 float speed=random(1,3);
 float Y;
 float R=random(0,255);
 float G=random(0,255);
 float B=random(0,255);
 float alpha=random(100,255);
 boolean visibility=true;
 float H;
 
 Bubble(float x, float s, float h)//obtaining the inicial numbers
 {
   X=x;
   size=s;
   Y=h;
   H=h;
 }
 
 void move()
 {
   Y=Y-speed;//moving the bubble up
   X=X+random(-2,2);//shaking the bubble
 }
 
 void display()//drawing the bubble
 {
   ellipseMode(CENTER);
   noStroke();
   fill(R,G,B,alpha);
   ellipse(X,Y,size,size);
 }
 
  void overCircle() {//cheking whether the bubble is clicked
   if(mousePressed){
   if(dist(X,Y,mouseX,mouseY)<=size/2)
   {
      score++;
      visibility=false;
   }
   }
}

   void reset()//reseting the bubble if it is pressed or leaving the window
  {
    if(visibility==false)
    {
      visibility=true;
      Y=H;
      X=random(0,width);
    }
    
    if(visibility==true && Y<=0)
    {
      Y=H;
      score--;
      X=random(0,width);
    }
  }
}
