void setup()
{
  size(1080, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
}

//spectacular reference
Walker skyWalker = new Walker();

void draw()
{
  //flush the screen with gray background
  background(130);
  
  //render both lightsabers and magnitude printer
  skyWalker.drawLightsaber();
  skyWalker.drawLightsaberOpposite();
  skyWalker.render();
}
