class Rain
{
  float Height;
  float Width;
  float X;
  float Y;
  float Yspeed;
  
  Rain()
  {
    X=400;
    Y=-100;
    Yspeed=5;
  }
  Rain(float _X, float _Y,float _Yspeed)
  {
    X=_X;
    Y=_Y;
    Yspeed=_Yspeed;
  }
  
void Render()
{
  image(Raindrop,X,Y);
  Y=Y+Yspeed;

  if(Y>600)
  {Y=-100;}
  if(millis()/1000>5)
  {
  Yspeed=Yspeed+(7/8*Yspeed);
}
}
}