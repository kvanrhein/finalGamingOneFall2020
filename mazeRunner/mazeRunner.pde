float x;
float y;
int gameStage;
int timer;
PFont font;

//Game levels, in no particular order
GameOver gameOver;
GameWin gameWin;
Intro intro;
LevelOne levelOne;
LevelTwo levelTwo;
LevelThree levelThree;
LevelOneComplete levelOneComplete;
GameSceneOne GameSceneOne;
LevelTwoComplete levelTwoComplete;
GameSceneTwo GameSceneTwo;
//LevelThreeComplete levelThreeComplete;
GameSceneThree GameSceneThree;
import ddf.minim.*;
Minim minim;
AudioPlayer lose,winner;


void setup() {
  size(600, 600);
  gameStage = 0;
  intro = new Intro();
   timer = 100;
   font=createFont("PressStart2P-Regular.ttf", 30);
   minim = new Minim(this);
  lose = minim.loadFile("game over lol.mp3");
 winner = minim.loadFile("win sound.mp3");
}

void draw() {
  
   background(80);
  
        //textAlign(CENTER, CENTER);
  textSize(50);
  textFont(font,50);
  text(timer, 300,300);
  
   if (frameCount % 60 == 0 && timer > 0) { // if the frameCount is divisible by 60, then a second has passed. it will stop at 0
    timer --;
    fill(0);
  }
  if (timer == 0) {
    textSize(50);
    text("GAME OVER", width/2, height*0.7);
    lose.cue(0);
    lose.play();
  }
  

  
  switch(gameStage) {
    case 0:  //intro rules
      intro.draw();
    break;
    case 1:  //level 1
      levelOne.draw();
    break;
    case 6:  //Game Scene One
      GameSceneOne.draw();
    break;
    case 5:  //level complete
      levelOneComplete.draw();
    break;
    case 2:  //level 2
      levelTwo.draw();
    break;
    case 8:  //Scene two
      GameSceneTwo.draw();
    break;
    case 7:  //Level 2 complete
      levelTwoComplete.draw();
    break;
    case 9:  //Level 3
      levelThree.draw();
    break;
    case 10:  //Scene three
      GameSceneThree.draw();
    break;
    case 3:  //game win
      gameWin.draw();
    break;
    case 4:  //game over
      gameOver.draw();
    break;
    
    
    

  }
}

void keyPressed() {
  
  
  switch(gameStage) {
    case 0:  //intro rules
      intro.keyPressed();
    break;
    case 1:  //level 1
      levelOne.keyPressed();
    break;
    case 6:  //level complete
      GameSceneOne.keyPressed();
    break;
    case 7:
            levelTwoComplete.keyPressed();
    break;
    case 9:  //Level 3
      levelThree.keyPressed();
    break;
     case 5:  //level complete
      levelOneComplete.keyPressed();
    break;
    case 2:  //level 2
      levelTwo.keyPressed();
    break;
        case 8:  //Scene two
      GameSceneTwo.keyPressed();
    break;
     case 10:  //Scene three
      GameSceneThree.keyPressed();
    break;
  }  
}
  void mouseClicked(){
  switch(gameStage){
  case 3:  //game win
      gameWin.mouseClicked();
    break;
    case 4:  //game over
      gameOver.mouseClicked();
    break;
  
  }
  }
  
