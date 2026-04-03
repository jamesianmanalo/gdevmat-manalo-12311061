public class Walker
{
  public float x;
  public float y;
  public float tx = 0, ty = 10000;
  
  //rgb perlin noise
  public float r;
  public float g;
  public float b;
  public float tr = 4000;
  public float tg = 5000;
  public float tb = 6000;
  
  //scale perlin
  public float tScale = 2000;
  
  void render()
  {
    circle(x, y, noiseScale());
  }
  
  void perlinWalk()
  {
    x = map(noise(tx), 0, 1, -640, 640);
    y = map(noise(ty), 0, 1, -360, 360);
    
    
    tx += 0.01f;
    ty += 0.01f;
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
}
