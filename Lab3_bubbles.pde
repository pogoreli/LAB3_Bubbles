Bubble Bubble1;//creating 4 bubbles
Bubble Bubble2;
Bubble Bubble3;
Bubble Bubble4;

int score;//creating the score variable

void setup()
{
  frameRate(30);
  size(400,400);//creating the window
  
  Bubble1=new Bubble(random(10,width-10),random(20,50),height);//inicializing the bubbles
  Bubble2=new Bubble(random(10,width-10),random(20,50),height);
  Bubble3=new Bubble(random(10,width-10),random(20,50),height);
  Bubble4=new Bubble(random(10,width-10),random(20,50),height);
  
}

void draw()
{
  background(255);//cleaning the screen
  
  Bubble1.move();//calling the functions of each bubble
  Bubble1.display();
  Bubble1.overCircle();
  Bubble1.reset();
  
  Bubble2.move();
  Bubble2.display();
  Bubble2.overCircle();
  Bubble2.reset();
  
  Bubble3.move();
  Bubble3.display();
  Bubble3.overCircle();
  Bubble3.reset();
  
  Bubble4.move();
  Bubble4.display();
  Bubble4.overCircle();
  Bubble4.reset();
  
  score();//displaying the score
  
}


 
 
