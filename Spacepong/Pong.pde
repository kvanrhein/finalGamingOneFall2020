   class Pong {
  float x1, y1;
  float x1Velocity, y1Velocity;
  PImage pongPict;
float diam =10;
 float rectSize = 200;
 int radius;
 AudioPlayer crashSound;
 Pong( float x1, float y1, float x1Velocity, float y1Velocity ) {
    this.x1 = x1;
    this.y1 = y1;
    this.x1Velocity = x1Velocity;
    this.y1Velocity = y1Velocity;
    this.radius= 20;
    pongPict = loadImage("asteriodNormal.png");
     crashSound = minim.loadFile("explosion.mp3");
  }
   void draw() {
    image(pongPict, x1, y1, radius *2, radius *2);
    update();
  }
   void update(){
     if (x1 > width - radius) {
      x1 = width - radius;
      x1Velocity = -x1Velocity;
    }
    if (x1 < radius) {
      x1 = radius;
      x1Velocity = -x1Velocity;
    }
    
    if (y1 > height - radius) {
     // y1 = height - radius;
      //y1Velocity = -y1Velocity;
      gameStage = 4;
      gameOver = new GameOver();
      //crashSound.cue(0);
      crashSound.play();
      points=0;
    
    }
    
    if (y1 < radius) {
      y1 = radius;
      y1Velocity = -y1Velocity;
    }
        
    if (!keyPressed) {
        x1 += x1Velocity;
        y1 += y1Velocity;
    }  
  }
  
  void bounceVertical() {
    y1Velocity = -y1Velocity;
  }
  
  void bounceHorizontal() {
    x1Velocity = -x1Velocity;
  }
}


  
  
  
  
//---------------------------------------  
  
class Lanet{
  float x, y;
  PImage lanetPict;

 Lanet( float x, float y) {
   this.x = x;
   this.y = y;
    lanetPict = loadImage("space.png");
  }

  void draw() {
    imageMode(CENTER);
    image(lanetPict, x, y,200,200);
   //image(lanetPict, x, y);
    x = mouseX;
    y = mouseY;
    fill(#ff8844);
   
//if (y>430){
 // game over
  
//}
 }
  int hitBy(Pong p) {
    int hitSide = 0;
    
    float pongBottom = p.y1 + p.radius;
    float pongTop = p.y1 - p.radius;
    float pongLeft = p.x1 - p.radius;
    float pongRight = p.x1 + p.radius;
    float lanetBottom = this.y + 20;
    float lanetTop = this.y - 20;
    float lanetLeft = this.x - 100;
    float lanetRight = this.x + 100;
    
    if (p.y1Velocity > 0) {
      if (pongBottom > lanetTop - 3 && pongBottom < lanetTop + 9 && pongRight > lanetLeft + 4 && pongLeft <  lanetRight - 4) {
        hitSide = 1;
      }
    }
    
    if (p.y1Velocity < 0) {
      if (pongTop > lanetBottom - 3 && pongTop < lanetBottom + 9 && pongRight > lanetLeft + 4 && pongLeft <  lanetRight - 4) {
        hitSide = 3;
      }      
    }
    
    if (p.x1Velocity > 0) {
      if (pongRight > lanetLeft - 3 && pongRight <lanetLeft + 9 && pongBottom > lanetTop + 4 && pongTop <  lanetBottom - 4) {
        hitSide = 4;
      }      
    }
      if (p.x1Velocity < 0) {
      if (pongLeft > lanetRight - 3 && pongLeft < lanetRight + 9 && pongBottom > lanetTop + 4 && pongTop <  lanetBottom - 4) {
        hitSide = 2;
      }      
    }

    return hitSide;
  }
}
  
  
  
  
  







//--------------------------
class Fire{
  float x2, y2;
  float x2Velocity, y2Velocity;
  PImage firePict;

 Fire(float x2, float y2) {
    this.x2 = x2;
    this.y2 = y2;
    firePict = loadImage("asteriodFlaming.png");
  }

  void draw() {
    image(firePict, x2, y2);
  }
}




//-----------------------------
class Moon{
  float x4, y4;
  float x4Velocity, y4Velocity;
  PImage moonPict;

 Moon( float x4, float y4) {
   this.x4 = x4;
    this.y4 = y4;
   moonPict = loadImage("new planet1 copy.png");
  }

  void draw() {
    image(moonPict, x4, y4);
  }
}
