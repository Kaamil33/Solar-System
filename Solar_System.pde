Planet sun;
Planet earth;
Planet moon;
Planet mars;
Planet marsmoon1;
Planet marsmoon2;

void setup()
{
  size(1000, 1000);
  sun = new Planet();
  sun.size = 150;
  sun.shade = color(255, 255, 0);
  sun.position.x = 0;
  sun.angularVelocity = 0;


  earth = new Planet();
  earth.size = 50;
  earth.shade = color(0, 255, 0);
  earth.position.x = 200;
  earth.angularVelocity = .3;
  sun.children.add(earth);


  moon = new Planet();
  moon.size = 20;
  moon.shade = color(255, 255, 255);
  moon.position.x = 50; 
  moon.angularVelocity = -1.2;
  earth.children.add(moon);


  mars = new Planet();
  mars.size = 75;
  mars.shade = color(255, 150, 0);
  mars.position.x = 400; 
  mars.angularVelocity = .5;
  sun.children.add(mars);
}


void draw ()
{
  background(0);
  stroke(255);
  for (var gx = 0; gx<= width; gx += 50) {
    line(gx, 0, gx, height);
  }
  for (var gy = 0; gy<height; gy+= 50) {
    line(0, gy, width, gy);
  }
  push();
  translate(width/2, height/2);
  sun.render();
  sun.update();
  pop();
}
