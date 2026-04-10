Walker[] walkers = new Walker[100];
Walker blackHole = new Walker();
Walker otherMatter = new Walker();

void setup()
{
  size(1080, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
}

//PVector mousePos()
//{
//  float x = mouseX - Window.windowWidth / 2;
//  float y = -(mouseY - Window.windowHeight / 2);
//  return new PVector(x, y);
//}

void draw()
{
  background(0);
  
  blackHole.blackHole();
  blackHole.oMatter();
  blackHole.render();
  
  
  //PVector direction = PVector.sub(target.position, w.position);
}
