//Player player1,player2;
  Pitch p = new Pitch();
  PitchMeter m = new PitchMeter();
  int hitboxCoordinates;
  int meterCoordinates;
  boolean alreadyPressed = false;
 
  String winner;
  int numStrikes = 0;
  int baseNumber;
  int score;
  public void setup() {
    size(700,700);
  }
    public void draw() {
      //Puke green background
        background(0,255,0);
        //fill(0,139,0);
        
        
        textSize(35);
        text(frameRate, 20, 40);
        
        //Bases:
        
        fill(255);
        //Northwest
        rect(0,0,20,20);
        //Southwest
        rect(0,400,20,20);
        //Northeast
        rect(400,0,20,20);
        //Southeast
        rect(400,400,20,20);
        
        //Hitbox:
        
        //Strike leftbound
        fill(255,0,0);
        rect(0,600,231,100);
        
        //Single leftbound
        fill(20,255,20);
        rect(232,600,281,100);
        
        //rect(0,600,700,100);
        p.display();
        m.display();
        m.throwPitch();
        m.getMoving();
        p.throwPitch();
        meterCoordinates = m.keyPressed();
        int ans = checkPitchCors(meterCoordinates);
        
        if (m.isKeyPressed()){
          if (ans == 0){
            p.setSpeed(10);
            p.checkWalls();
          }
          if (ans == 1){
            p.setSpeed(20);
            p.checkWalls();
          }
          if (ans == 2){
            p.setSpeed(30);
            p.checkWalls();
          }
          if (ans == 3){
            p.setSpeed(40);
            p.checkWalls();
          }
          if (ans == 4){
            p.setSpeed(50);
            p.checkWalls();
          }
        }
        p.throwPitch();
        hitboxCoordinates = p.keyPressed();
        int result = checkCoordinates(hitboxCoordinates);
        if (result == 0){
          text ("Strike!", 50, 50);
          numStrikes++;
        }
        if (result == 1){
          text ("Single!", 50, 50);
          baseNumber += 1;
        }
        if (result == 2){
          text("Double!", 50, 50);
          baseNumber += 2;
        }
        if (result == 3){
          text("Triple!", 50,50);
          baseNumber += 3;
        }
        if (result == 4){
          text("Home run!",50, 50);
          baseNumber += 4;
        }
       println(getScore());
    }
    public int checkCoordinates(int cor){
      /* Values:
      Strike : 0
      Single : 1
      Double : 2
      Triple : 3
      Homerun : 4
      */
      if ((cor > 231 && cor < 282) || (cor > 433 && cor < 484)){
        return 1;
      }
      if ((cor >= 282 && cor < 318) || (cor >= 398 && cor < 434)){
        return 2;
      }
      if ((cor >= 318 && cor < 347) || (cor >= 369 && cor < 398)){
        return 3;
      }
      if (cor >= 347 && cor < 369){
        return 4;
      }
      return 0;
     
      }     
      public int checkPitchCors(int cor){
      /* Values:
      Strike : 0
      Single : 1
      Double : 2
      Triple : 3
      Homerun : 4
      */
      if ((cor > 231 && cor < 282) || (cor > 433 && cor < 484)){
        return 1;
      }
      if ((cor >= 282 && cor < 318) || (cor >= 398 && cor < 434)){
        return 2;
      }
      if ((cor >= 318 && cor < 347) || (cor >= 369 && cor < 398)){
        return 3;
      }
      if (cor >= 347 && cor < 369){
        return 4;
      }
      return 0;
     
      }
      public int getScore(){
        score = baseNumber / 4;
        return score;
      }
 
  public class PitchMeter{
    int x, y, speed;
    int r;
    color c;
 
    public PitchMeter() {
      x = 625;
      y = 0;
      r = 75;
      c = color(0, 255, 0);
      speed = 5;
    }
    public void throwPitch(){
      y += speed;
      checkWalls();
    }
   
    public void checkWalls() {
      if (y < r) {
        speed *= -1;
        y = r;
      }
      if (y > height - r) {
        speed *= -1;
        y = height - r;
      }
    }
    public void display() {
      fill(c);
      ellipse(x, y, r * 2, r * 2);
      throwPitch();
    }
    public boolean isKeyPressed(){
      return (keyPressed() >= 0);
    }
    public int keyPressed(){
      if (key == 'p'){
        speed = 0;
        return y;
      }
      return -1;
    }
    public int getY(){
      return y;
    }
    public void getMoving(){
      if (key == '0'){
        speed = 5;
      }
    }
  }
 
  public class Pitch{
    int x, y, s;
    int r;
    color c;
 
    public Pitch() {
      x = 0;
      y = 625;
      r = 50;
      c = color(0, 255, 0);
      s = 5;
    }
    public int getSpeed(int cor){
      if ((cor >= 282 && cor < 318) || (cor >= 398 && cor < 434)){
        return  2 * s;
      }
      if ((cor >= 318 && cor < 347) || (cor >= 369 && cor < 398)){
        return 3 * s;
      }
      if (cor >= 347 && cor < 369){
        return 4 * s;
      }
      else{
        return s;
      }
    }
    public void throwPitch(){
      x += s;
      checkWalls();
    }
    public void checkWalls() {
      if (x < r) {
        s *= -1;
        x = r;
      }
      if (x > width - r){
        s *= -1;
        x = width - r;
      }
    }
    public void display() {
      fill(c);
      ellipse(x, y, r * 2, r * 2);
    }
    public int keyPressed(){
      if (key == ' '){
        s = 0;
        return x;
      }
      return 0;
    }
    public void setSpeed(int newSpeed){
      s = newSpeed;
    }
}
