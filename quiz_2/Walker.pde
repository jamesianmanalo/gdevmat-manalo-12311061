class Walker
{
  float x;
  float y;
  
  void render()
  {
    fill(randomRGB());
    stroke(randomAlpha());
    circle(x, y, 30);
  }
  
  void randomWalk()
  {
    int rng = int(random(8));
    
    if (rng == 0)
    {
      y+=10;
    }
    else if (rng == 1)
    {
      y-=10;
    }
    else if (rng == 2)
    {
      x+=10;
    }
    else if (rng == 3)
    {
      x-=10;
    }
    else if (rng == 4)
    {
      x+=10;
      y+=10;
    }
    else if (rng == 5)
    {
      x-=10;
      y+=10;
    }
    else if (rng == 6)
    {
      x+=10;
      y-=10;
    }
    else if (rng == 7)
    {
      x-=10;
      y-=10;
    }
  }
  
  void randomWalkBias()
  {
    float rngWalkBias = random(1);
    
    if (rngWalkBias <= 0.2)
    {
      y+=10;
    }
    else if (rngWalkBias <= 0.4)
    {
      y-=10;
    }
    else if (rngWalkBias <= 0.8)
    {
      x+=10;
    }
    else if (rngWalkBias <= 0.6)
    {
      x-=10;
    }
  }
  
  color randomRGB()
  {
    int r = int(random(256));
    int g = int(random(256));
    int b = int(random(256));
    
    return color(r, g, b);
  }
  
  int randomAlpha()
  {
    return int(random(101));
  }
}
