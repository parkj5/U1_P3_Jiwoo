import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


Minim minim;
AudioPlayer song;


Rain firstRain;
Rain secondRain;
Rain thirdRain;
Rain forthRain;
Rain fifthRain;
Rain siRain;
Rain seRain;
Rain eiRain;
Rain niRain;
Rain teRain;
PImage Raindrop;
PImage Cloudy;
PImage Person;
int Yperson=700;

Rain[]Storm=new Rain[200];


void setup()
{
  size(1280,480);
  imageMode(CENTER);
  rectMode(CENTER);
  
  
  minim = new Minim(this);
  song= minim.loadFile("Sad_rain.mp3");
  
  Cloudy=loadImage("Cloudy.jpg");
  Cloudy.resize(1280,480);
  Raindrop=loadImage("Raindrop.png");
  Raindrop.resize(15,30);
  Person=loadImage("Person.png");
  Person.resize(150,180);
  Storm[0]= new Rain();
  Storm[1]=new Rain(200,-150,3);
  Storm[2]=new Rain(600,-600,4);
  Storm[3]=new Rain(500,-750,2);
  Storm[4]=new Rain(700,-700,3);
  Storm[5]=new Rain(400,-600,3);
  Storm[6]=new Rain(900,-850,3);
  Storm[7]=new Rain(80,-700,4);
  Storm[8]=new Rain(1200,-650,3);
  Storm[9]=new Rain(710,-500,2);
  
  for(int i=10; i<100; i++)
  {
    Storm[i]= new Rain(random(0,1280), random(-2000,-1500), random(3,5));
  }
  
}
void draw()
{
  background(0,0);
    if(millis()>2000)
  {
  song.play();
}
  image(Cloudy,640,240);
  image(Person,mouseX,Yperson);
  Yperson=Yperson-1;
  if(Yperson<400)
  {
  Yperson=400;
}
  
    for(int i=0; i<100;i++)
  {
    Storm[i].Render();
 if(dist(Storm[i].X,Storm[i].Y,mouseX,Yperson)<100)
  {
    Storm[i].X=(int)random(0,1280);
    Storm[i].Y=(int)random(-2000,-1500);
  }  
 
}  
}