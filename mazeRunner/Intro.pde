

class Intro {
PImage mouse;
  Intro() {  
  
  mouse=loadImage("squeak.png");

  }
  
  void draw() {
    background(255);
     textFont(font, 20);
   fill(0);
   fill(0);
 text("Welcome to Maze Runner",100,40);
 textFont(font, 10);
 text("Now that you've entered this maze, there's no way out ",1,75);
 text("unless you work for it! Dont worry though, it's not too bad ",1,105);
 text("just help Lenny find his cheese at the end of every maze.",1,135);
 text( "You are timed, and beware of fake walls that can help you ", 1,165);
 text("in the maze or get you stuck. This is not an easy task ", 1, 195);
 text("but it is possible. Now good luck!Press any key to continue", 1, 225);
 textFont(font, 30);
 text("and don't loose!",90,270);
 textFont(font,2);
 mouse.resize(320,320);
 image(mouse,200,380 );
  }
  
  void keyPressed() {
    //just go back to levelOne if key is pressed
    gameStage = 1;
    levelOne = new LevelOne();     
  }
}
