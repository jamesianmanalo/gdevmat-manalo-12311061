float amp = 50;
float freq = 20;
int time = 1234;


//the function that gets called at the very first frame
void setup()
{
  size(1280, 720, P3D); //set window size
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
  
}

//the function that gets called eery frame
void draw()
{
  background(0); //set background color of the whole window
  
  ////circle(x, y, extent)
  //circle(0, 0, 15);
  
  ////line(x1, y1, x2, y2) - 2D
  ////line(x1, y1, z1, x2, y2, z2) - 3D
  //strokeWeight(2); //changes the thickness of the line below it
  //color white = color(255, 255, 255); //declare color variable: color(r, g, b)
  //fill(white); //fills it with the color selected
  //stroke(white); //all strokes wil be the color selected
  //line(-75, -75, 75, 75);
  
  drawCartesianPlane();
  drawLinearFunction();
  drawLinearFunction2();
  drawQuadraticFunction();
  drawQuadraticFunction2();
  drawCircle();
  drawSineWave();
}

void drawCartesianPlane()
{
  strokeWeight(1);
  color white = color(255, 255, 255);
  fill(white);
  stroke(white);
  line(300, 0, -300, 0);
  line(0, -300, 0, 300);
  
  for (int i = -300; i <= 300; i+= 10)
  {
    line(i, -2, i, 2);
    line(-2, i, 2, i);
  }
  
}

void drawLinearFunction()
{
  /*
    f(x) = x + 2
    Let x be 4, then y = 6  (4, 6);
    Let x be -5, then y = -3  (-5, -3);
  */
  
  color red = color(255, 0, 0);
  fill(red);
  noStroke();
  
  for (int x = -200; x <= 200; x++)
  {
    circle(x, x + 2, 5);
  }
}

void drawLinearFunction2()
{
  // f(x) = -5x + 30
  
  color purple = color(125, 0, 255);
  fill(purple);
  noStroke();
  
  for (int x = -200; x <= 200; x++)
  {
    circle(x, (x * -5) + 30, 5);
  }
}

void drawQuadraticFunction()
{
  /*
  *  f(x) = x^2 - 2x - 5;
  *  Let x be 2, then y = 3
  *  Let x be -1, then y = -6
  */
  
  color green = color(0, 255, 0);
  fill(green);
  stroke(green);
  noStroke();
  for(float x = -300; x <= 300; x+=0.1f)
  {
    circle(x * 10, ((float)Math.pow(x, 2) + (x * 2) - 5), 5);
  }
}

void drawQuadraticFunction2()
{
  // f(x) = x^2 - 15x - 3
  
  color yellow = color(255, 255, 0);
  fill(yellow);
  stroke(yellow);
  noStroke();
  for(float x = -300; x <= 300; x+=0.1f)
  {
    circle(x * 10, ((float)Math.pow(x, 2) + (x * 15) - 3), 5);
  }
}

void drawCircle()
{
  color cyan = color(0, 255, 255);
  fill(cyan);
  stroke(cyan);
  float radius = 50;
  
  for (int x = 0; x <= 360; x++)
  {
    circle((float)Math.cos(x) * radius, (float)Math.sin(x) * radius, 5);
  }
}

void drawSineWave()
{
  color blue = color(0, 0, 255);
  fill(blue);
  stroke(blue);
  for (int x = -300; x <= 300; x++)
  {
    circle(x * 1.5, amp * ((float)Math.sin((x + time)/freq)), 5);
  }
}
