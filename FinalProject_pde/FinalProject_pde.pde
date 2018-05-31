  //Player player1,player2;
  Pitch p = new Pitch();
  PitchMeter m = new PitchMeter();
  int hitboxCoordinates;
  boolean alreadyPressed = false;
  
  String winner;
  public void setup() {
    size(700,700);
  }
  public void draw() {
    background(255);
    fill(0,139,0);
    text(frameRate, 20, 20);
    rect(0,0,20,20);
    rect(0,400,20,20);
    rect(400,0,20,20);
    rect(400,400,20,20);
    rect(0,600,700,100);
    p.display();
    m.display();
    m.throwPitch();
    p.setSpeed();
    p.throwPitch();
    hitboxCoordinates = p.keyPressed();
    int result = checkCoordinates(hitboxCoordinates);
    if (result == 0){
      text ("Strike!", 50, 50);
    }
    if (result == 1){
      text ("Single!", 50, 50);
    }
    if (result == 2){
      text("Double!", 50, 50);
    }
    if (result == 3){
      text("Triple!", 50,50);
    }
    if (result == 4){
      text("Home run!",50, 50);
    }
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
      keyPressed();
    }
    
    public void checkWalls() {
      if (y < r) {
        speed *= -1;
        y = r;//prevents 2 true in a row
      }
      if (y > height - r) {
        speed *= -1;
        y = height - r;//prevents 2 true in a row
      }
    }
    public void display() {
      fill(c);
      ellipse(x, y, r * 2, r * 2);
      throwPitch();
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
      keyPressed();
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
    public void setSpeed(){
      s = getSpeed(m.keyPressed());
    }
  }
      
      
  
  
