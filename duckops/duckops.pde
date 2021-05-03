int gameStage;

PImage gun;
//Game levels, in no particular order
GameOver gameOver;
GameWin gameWin;
Intro intro;
LevelOne levelOne;
LevelTwo levelTwo;
LevelThree levelThree;
void setup() {
  size(800, 600);

 // gun = loadImage("gun.png");
  gameStage = 0;
  intro = new Intro();
}

void draw() {
  switch(gameStage) {
    case 0:  //intro rules
      intro.draw();
    break;
    case 1:  //level 1
      levelOne.draw();
    break;
    case 2:  //level 2
      levelTwo.draw();
    break;
    case 3:  //level3
      levelThree.draw();
    break;
    case 4:  //game win
      gameWin.draw();
    break;
     case 5:  //game over
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
    case 2:  //level 2
      levelTwo.keyPressed();
    break;
    case 3:  //game win
      levelThree.keyPressed();
    break;
    case 4:  //game over
      gameWin.keyPressed();
    break;
    case 5:
    gameOver.keyPressed();
    break;
  }  
}
