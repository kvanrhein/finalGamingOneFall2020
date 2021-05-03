class GameOver {
  //instance variables
   AudioPlayer lose,winner;
   
  GameOver() {  
    lose = minim.loadFile("game over lol.mp3");
   lose.cue(0);
    lose.play();
  }
  
  void draw() {
    background(#ff0000);
    textSize(70);
    text("Game", 20, 200);
    text("Over", 20, 400);
  fill(0,0,0,0);
    stroke(0);
    rect(190,420,370,100);
    fill(0);
    textSize(35);
    text("Play Again",210,490);
  }
  
  void mouseClicked() {
    if(dist(mouseX,mouseY,200,400)<200){
    //just go back to intro screen if key is pressed
    gameStage = 0;
    intro = new Intro();    
        }
  
  }
}
  
  
