HitterMeter hMeter;
HitterBall hBall;
//ResultBox resultBox = new ResultBox(250,50);
Base[] bases = new Base[4];
Pitcher pitcher;
PitchMeter pMeter;
ThrowedBall ball;
DefenseMeter d;

int i = 0;

int player1Score;
int player2Score;
int x;

public void setup(){
  size(900,700);
  hMeter = new HitterMeter('b');
  hBall = new HitterBall(hMeter);
  pMeter = new PitchMeter();
  bases[0] = new Base(1,410,410); //Southeast
  bases[1] = new Base(2,410,10); //Northeast
  bases[2] = new Base(3,10,10); //Northwest
  bases[3] = new Base(4,10,410); //Southwest
  ball = new ThrowedBall();
  pitcher = new Pitcher();
  d = new DefenseMeter();
}

public void draw(){
  background(10,103,0);
  textSize(30);
  fill(255);
  text("Your Hit: ", 250, 250);
  for (int i = 0; i < 4; i++){
    bases[i].display();
  }
  int x = -1;
  int speed = 0;
  if (pMeter.isKeyPressed()){
    x = pMeter.calcPitch(pMeter.keyPressed());
    System.out.println(pMeter.keyPressed());
    System.out.println(x);

    if (x == 1){
      speed = 20;
    }
    if (x == 0 || x == 3){
      speed = 10;
    }
    if (x == 2){
      speed = 40;
    }
  }
  if (hBall.getx() >= 700){
    speed = 0;
  }
  hBall.throwPitch(speed);
  hMeter.display();
  hBall.display();
  pMeter.display();
  pitcher.display();
  ball.display();
//resultBox.display();
  //resultBox.displayNorm();
  int result = -1;
  if (hBall.keyPressed() != -1){
   result = hMeter.calcPitchCors(hBall.keyPressed());
   System.out.println(hBall.keyPressed());
   fill(255);
   text(hMeter.resultMessage(result),250,250);
   if (i < 25){
     ball.animate();
     i++;
   }
   else{
     ball.animate(result);
   }
   if (hMeter.resultMessage(result).equals("Strike!")){
     d.setSpeed(3);
   }
   if (hMeter.resultMessage(result).equals("Single!")){
     d.setSpeed(6);
   }
   if (hMeter.resultMessage(result).equals("Double!")){
     d.setSpeed(9);
   }
   if (hMeter.resultMessage(result).equals("Triple!")){
     d.setSpeed(12);
   }
   if (hMeter.resultMessage(result).equals("Home Run!")){
     d.setSpeed(15);
   }
  // ball.animate(result);
  }
  if (d.gety() > 650){
    d.setSpeed(0);
  }
  if (d.pressKey() != -1){
    if (d.pressKey() >= 275 && d.pressKey() <= 425){
      text("Defense wins!",300,300);
    }
    else{
      text("Hitter wins!",300,300);
    }
  }
  d.display();
  d.playDefense();
}
// 
//resultBox.newDisplay(result);
/*
public class ResultBox{
  String result;
  int x, y;
  public ResultBox(int x, int y){
    this.x = x;
    this.y = y;
    this.displayNorm();
  }
  public void displayNorm(){
    //textSize(40);
    //text("Result: ", x, y);
  }
  public void newDisplay(int r){
    String result = "";
    if (r == 0){
      result = "Strike!";
    }
    if (r == 1){
      result = "Single!";
    }
    if (r == 2){
      result = "Double!";
    }
    if (r == 3){
      result = "Triple!";
    }
    if (r == 4){
      result = "Home run!";
    }
    textSize(40);
    text("Result: " + result, x, y);
  }
  
  public void display(){
    fill(0);
    //textSize(50);
    //text("Score:",650,50);
    rect(700,0,200,700);
    fill(255,255,0);
    rect(800,0,10,700);
    textSize(5000);
    
    text("Hi",50,0);
  }
  
  public void drawStrike(){
    fill(255,0,0);
    text("X",750,50);
  }
}
    
  */
