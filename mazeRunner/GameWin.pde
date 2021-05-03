class GameWin {
  //instance variables
  AudioPlayer winner;
  PImage win;
  GameWin() {  
    win = loadImage("winner.jpg");
    winner = minim.loadFile("win sound.mp3");
    winner.cue(0);
    winner.play();
  }
  
  void draw() {
    background(win);
    textSize(50);
    text("You Won!", 100, 180);
    fill(0,0,0,0);
    stroke(0);
    rect(190,400,370,100);
    fill(0);
    textSize(35);
    text("Play Again",210,470);
  }
  
  void mouseClicked() {
    if(dist(mouseX,mouseY,200,400)<400){
    //just go back to intro screen if key is pressed
    gameStage = 0;
    intro = new Intro();    
        }
  
  }
}
