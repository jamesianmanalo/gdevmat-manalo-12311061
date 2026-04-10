public class Walker
{
    public PVector position = new PVector();
    public PVector velocity = new PVector();
    public PVector acceleration = new PVector();
    
    public float velocityLimit = 10;
    
    //rgb perlin noise
    public float r;
    public float g;
    public float b;
    public float tr = 3000;
    public float tg = 4000;
    public float tb = 5000;
    
    //scale perlin
    public float tScale = 2000;
    
    public void update()
    {
      this.acceleration = PVector.random2D();
      this.velocity.add(this.acceleration);
      this.velocity.limit(velocityLimit);
      this.position.add(this.velocity);
    }
  
  public void render()
  {
     blackHole();
     oMatter();
  }
  
  //for Black Hole
  void blackHole()
  {
    float x = random(-540, 540);
    float y = random(-360, 360);
    
    fill(255);
    noStroke();
    circle(x, y, 50);
  }
  
  
  //for other matter
  void oMatter()
  {
    //for x (gaussian)
    float gaussian = randomGaussian();
    float standardDeviation = 200;
    float mean = 0;
    
    //for extent (gaussian)
    float dGaussian = randomGaussian() * 10;
    float dStandardDeviation = 10;
    float dMean = 2;
   
    //for circle units (gaussian)
    float x = standardDeviation * gaussian + mean;
    float y = random(-360, 360);
    float e = dStandardDeviation * dGaussian + dMean;
    
    //paint
    fill(noiseRGB(), noiseScale());
    noStroke();
    circle(x, y, e);
  }
  
  color noiseRGB()
  {
    r = map(noise(tr), 0, 1, 0, 255);
    g = map(noise(tg), 0, 1, 0, 255);
    b = map(noise(tb), 0, 1, 0, 255);
      
    tr += 0.05f;
    tg += 0.05f;
    tb += 0.05f;
    return color(r, g, b);
  }
    
  float noiseScale()
  {
    tScale += 0.02f;
    return map(noise(tScale), 0, 1, 5, 150);
  }
    
    
  public void checkEdges()
  {
    if (this.position.x > Window.right)
    {
      this.position.x = Window.left;
    }
    else if (this.position.x < Window.left)
    {
      this.position.x = Window.right;
    }
    
    if (this.position.y > Window.top)
    {
      this.position.y = Window.bottom;
    }
    else if (this.position.y < Window.bottom)
    {
      this.position.y = Window.top;
    }
  }
}
