HitterMeter hMeter;
HitterBall hBall;
//ResultBox resultBox = new ResultBox(250,50);
Base[] bases = new Base[4];

//Pitcher pitcher;
PitchMeter pMeter;

int player1Score;
int player2Score;

public void setup(){
  size(700,700);
  hMeter = new HitterMeter('b');
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
  //resultBox.displayNorm();
  int result = -1;
  if (hBall.keyPressed() != -1){
   result = hMeter.calcPitchCors(hBall.keyPressed());
   text("Your Hit: " + hMeter.resultMessage(result),250,250);
  }
}
  
//  resultBox.newDisplay(result);



  
  
  


