Dots ps;

void setup() {
  size(600, 600);
  ps = new Dots(new PVector(width/2, 50));
  
  }

float rectX = 50;
float rectY = 100;
float rectWidth = 50;
float rectHeight= 50;

int xPos = 200;
int yPos = 200;
int xDir = 1;
int yDir =1;
int speed=1;


void draw() {
  background(0);
  rect(xPos, yPos, 40, 40);
  xPos=xPos+xDir*speed;
  
  if (xPos > width -199 || xPos< 50)
  {
    xDir=-xDir;
    yPos= yPos + 90;
  }
  if( yPos > height -300|| yPos < 90){
    xPos= 300;
  }
ps.addDot();
  ps.run();
   
 }
