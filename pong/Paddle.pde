class Paddle {
  float x;
  float y;
  
  Paddle(float x, float y) {
    this.x = x;
    this.y = y;
  }
  
  void draw() {
    x = mouseX;
    y = mouseY;
    fill(#32a89d);
    rectMode(CENTER);
    rect(x, y, 100, 40);
  }
  
  int hitBy(Ball b) {
    int hitSide = 0;
    
    float ballBottom = b.y + b.radius;
    float ballTop = b.y - b.radius;
    float ballLeft = b.x - b.radius;
    float ballRight = b.x + b.radius;
    float blockBottom = this.y + 20;
    float blockTop = this.y - 20;
    float blockLeft = this.x - 50;
    float blockRight = this.x + 50;
    
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

    return hitSide;
  }
}
