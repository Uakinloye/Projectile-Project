final int BALL_SIZE = 25;
final float GRAVITY = -0.20; // fall acceleration
int width = 200, height = width * 2;
float ballX, ballY;         // ball location
float deltaX, deltaY;       // ball velocity

boolean ballActivated = false;

void setup() 
{
  size(300,300);
  smooth();
  // Start the ball in the upper left.
  ballX = 100;
  ballY = 0;
  // Set the rate of change for x and y.
  deltaX = 5;
  deltaY = 0;
}

void draw() 
{
  background(255);
  
  if(ballActivated)
  {
    // Draw the ball at the current location.
    fill(80, 130, 190);
    ellipse(ballX, ballY, BALL_SIZE, BALL_SIZE);
    
    //Move the ball to the right and down.
    ballY += deltaY;
    deltaY += GRAVITY;
    
    //added this to make the ball bounce
    if(ballY >= height)
    {
      deltaY = -deltaY; 
      ballY = height - 1;
    }
    
    //and some damping to slow it down
    deltaY = 0.99 * deltaY;
  }
}

void mouseClicked()
{
  ballX = mouseX;
  ballY = mouseY;
  
  //only when this is true does the ball get drawn
  ballActivated = true;
  
  //added this so ball starts from zero when dropped
  deltaY = 0;

}
