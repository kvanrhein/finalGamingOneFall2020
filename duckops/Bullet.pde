

class Bullet{
  float x;
  float y;
  float xvelo;
  float yvelo;

  Bullet (float x,float y,float xvelo,float yvelo) { 
  this.x=x;
  this.y=y;
  this.xvelo=xvelo;
  this.yvelo=yvelo;
  }

  void draw(){
  fill(#ff0000);
  ellipse(x,y,10,10);
  x=x+xvelo;
  y=y+yvelo;

  }

}
