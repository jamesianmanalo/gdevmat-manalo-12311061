void setup()
{
  size(1020, 720, P3D);
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
  background(0);
}

void draw()
{
  //frame resetter
  int frameMax = 300;
  
  if (frameCount % frameMax == 0)
  {
    background(0);
  }
  
  //for x
  float gaussian = randomGaussian();
  float standardDeviation = 200;
  float mean = 0;
  
  //for extent
  float dGaussian = randomGaussian() * 10;
  float dStandardDeviation = 10;
  float dMean = 2;
  
  //for circle units
  float x = standardDeviation * gaussian + mean;
  float y = random(-360, 360);
  float e = dStandardDeviation * dGaussian + dMean;
  
  //paint
  fill(randomRGB(), randomAlpha());
  noStroke();
  circle(x, y, e);
}

//random color
color randomRGB()
{
  int r = int(random(256));
  int g = int(random(256));
  int b = int(random(256));
  
  return color(r, g, b);
}

//random opacity
int randomAlpha()
{
  return int(random(10, 101));
}
