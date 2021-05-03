class Block {
  float x;
  float y;
  int c;
  boolean hit;
  
  Block(float x, float y, int c) {
    this.x = x;
    this.y = y;
    this.c = c;
    this.hit = false;
}
  
  void draw() {
  
    if(hit == false) {
      rectMode(CORNER);
      fill(c);
      rect(x, y, 50, 20);
    }  
  }
 
  int hitBy(Ball b) {
    if(hit){
      return 0;  
    }
   
    int hitSide = 0;
    
    float ballBottom = b.y + b.radius;
    float ballTop = b.y - b.radius;
    float ballLeft = b.x - b.radius;
    float ballRight = b.x + b.radius;
    float blockBottom = this.y + 10;
    float blockTop = this.y - 10;
    float blockLeft = this.x - 25;
    float blockRight = this.x + 25;
    
    if (b.yVelo > 0) {
      if (ballBottom > blockTop - 3 && ballBottom < blockTop + 9 && ballRight > blockLeft + 4 && ballLeft <  blockRight - 4) {
        hitSide = 1;
      }
    }
    
    if (b.yVelo < 0) {
      if (ballTop > blockBottom - 3 && ballTop < blockBottom + 9 && ballRight > blockLeft + 4 && ballLeft <  blockRight - 4) {
        hitSide = 3;
      }      
    }
    
    if (b.xVelo > 0) {
      if (ballRight > blockLeft - 3 && ballRight < blockLeft + 9 && ballBottom > blockTop + 4 && ballTop <  blockBottom - 4) {
        hitSide = 4;
      }      
    }
    
    if (b.xVelo < 0) {
      if (ballLeft > blockRight - 3 && ballLeft < blockRight + 9 && ballBottom > blockTop + 4 && ballTop <  blockBottom - 4) {
        hitSide = 2;
      }      
    }
    
    if(hitSide>0) {
      hit = true;
    }
    return hitSide;
  }





}
    
