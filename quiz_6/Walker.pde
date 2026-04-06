public class Walker
{
  
  PVector mousePos()
  {
    float x = mouseX - Window.windowWidth / 2;
    float y = -(mouseY - Window.windowHeight / 2);
    return new PVector (x, y);
  }
  
  //Red Lightsaber
  void drawLightsaber()
  {
    PVector mouse = mousePos();
    
    //red glow
    mouse.normalize().mult(350);
    strokeWeight(15);
    stroke(255, 100, 100);
    line(0, 0, mouse.x, mouse.y);
    
    //white glow
    mouse.normalize().mult(350);
    strokeWeight(11);
    stroke(255, 255, 255);
    line(0, 0, mouse.x, mouse.y);
    
    //black handle
    mouse.normalize().mult(60);
    strokeWeight(14);
    stroke(0, 0, 0);
    line(0, 0, mouse.x, mouse.y);
    
    //magnitude printer
    println(mouse.mag());
  }


  //Blue Lightsaber
  void drawLightsaberOpposite()
  {
    PVector mouse = mousePos();
    
    //blue glow
    mouse.normalize().mult(350);
    strokeWeight(15);
    stroke(0, 255, 255);
    line(0, 0, -mouse.x, -mouse.y);
    
    //white glow
    mouse.normalize().mult(350);
    strokeWeight(11);
    stroke(255, 255, 255);
    line(0, 0, -mouse.x, -mouse.y);
    
    //black handle
    mouse.normalize().mult(60);
    strokeWeight(14);
    stroke(0, 0, 0);
    line(0, 0, -mouse.x, -mouse.y);
  }
  
  //render lightsabers
  public void render()
  {
    drawLightsaber();
    drawLightsaberOpposite();
  }
}
