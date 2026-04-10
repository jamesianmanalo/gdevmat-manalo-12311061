Walker[] walkers = new Walker[100];

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  for (int i = 0; i < walkers.length; i++)
  {
    walkers[i] = new Walker();
    
    // random position
    walkers[i].position = new PVector(
      random(Window.left, Window.right),
      random(Window.bottom, Window.top)
    );
    
    // random scale
    walkers[i].scale = random(10, 40);
  }
  
  //myWalker.acceleration = new PVector (-0.01, 01);
}


/* 
Vector Motion 101

1. Add velocity to position
2. Draw the object at the position

*/
void draw()
{
  //flush the screen with a light-gray color
  background(80);
  
  for (int i = 0; i < walkers.length; i++)
  {
    walkers[i].update();
    walkers[i].render();
    walkers[i].checkEdges();
  }
}
