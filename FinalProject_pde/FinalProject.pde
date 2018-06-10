HitterMeter hMeter;
HitterBall hBall;
ResultBox resultBox = new ResultBox(250,50);
Base[] bases = new Base[4];
Runner r;
Pitcher pitcher;
PitchMeter pMeter;

int player1Score;
int player2Score;

public void setup(){
  size(900,700);
  hMeter = new HitterMeter('a');
  hBall = new HitterBall(hMeter);
  pMeter = new PitchMeter();
  bases[0] = new Base(1,410,410); //Southeast
  bases[1] = new Base(2,410,10); //Northeast
  bases[2] = new Base(3,10,10); //Northwest
  bases[3] = new Base(4,10,410); //Southwest
}

public void draw(){
  background(10,103,0);
  textSize(30);
  text("Your Hit: ", 250, 250);
  for (int i = 0; i < 4; i++){
    bases[i].display();
  }
  hMeter.display();
  pMeter.display();
  //pitcher.display();
  hBall.display();
  hBall.throwPitch();
resultBox.display();
  //resultBox.displayNorm();
  int result = -1;
  if (hBall.keyPressed() != -1){
   result = hMeter.calcPitchCors(hBall.keyPressed());
   System.out.println(hBall.keyPressed());
   text("Your Hit: " + hMeter.resultMessage(result),250,250);
  }
  pMeter.throwPitch();
  
//  r.setOutcome();
 // r.doTheHitting();
  //r.startRunning();
  //r.running();
  //r.continueRunning();
}
  
//  resultBox.newDisplay(result);

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
  
}
    

  
  
  


