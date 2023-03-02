//class Planet
//{
//  ArrayList<Planet> children = new ArrayList<Planet>();
//  ArrayList<Planet> parent = new ArrayList<Planet>();
//  PVector position = new PVector();
//  float size;
//  color shade;
//  float angularVelocity;

//  void update()
//  {
//    push();
//    position.rotate(radians(angularVelocity));

//    for (var i=0; i < children.size(); ++i) {
//      var child = children.get(i);

//      child.update();
//    }

//    pop();
//  }
//  void render()
//  {
//    push();
//    translate(position.x, position.y);
//    stroke(shade);
//    strokeWeight(5);
//    //noFill();
//    fill(shade);
//    circle(0, 0, size);


//    for (var i=0; i < children.size(); ++i)
//    {
//      var child = children.get(i);
//      stroke(shade);
//      strokeWeight(2);
//      //line(0, 0, child.position.x, child.position.y);
//      child.render();
//    }
//    pop();
//  }
//}

//ArrayList<Star> allStars = new ArrayList<Star>();
//class Star
//{
//  PVector sposition = new PVector();
//  color StarColor;
//  float size;
//  float tspeed;

//  void render()
//  {
//    push();
//    fill(StarColor);
//    translate(sposition.x, sposition.y);
//    circle(0, 0, size);
//    pop();
//  }

//  void update()
//  {

//    if (StarColor == color(255, 255, 0) && (((millis()/10)*tspeed)%2 == 0))
//      StarColor = color(0);
//    else
//      StarColor = color(255, 255, 0);

//    render();
//  }
//}

//Planet sun;
//Planet earth;
//Planet moon;
//Planet mars;
//Planet marsmoon1;
//Planet marsmoon2;

//Star aStar;

//void setup()
//{
//  size(1000, 1000);
//  sun = new Planet();
//  sun.size = 150;
//  sun.shade = color(255, 255, 0);
//  sun.position.x = width/2;
//  sun.position.y = height/2;
//  sun.angularVelocity = 0;


//  earth = new Planet();
//  earth.parent.add (sun);
//  earth.size = 50;
//  earth.shade = color(0, 255, 0);
//  earth.position.x = 100 + ((earth.parent.get(0).size/2) + earth.size/2);
//  earth.angularVelocity = .3;
//  sun.children.add(earth);


//  moon = new Planet();
//  moon.parent.add (earth);
//  moon.size = 20;
//  moon.shade = color(255, 255, 255);
//  moon.position.x = 25 + ((moon.parent.get(0).size/2) + moon.size/2);
//  moon.angularVelocity = 1.75;
//  earth.children.add(moon);


//  mars = new Planet();
//  mars.parent.add(sun);
//  mars.size = 75;
//  mars.shade = color(255, 150, 0);
//  mars.position.x = 200 + ((mars.parent.get(0).size/2) + mars.size/2);
//  mars.angularVelocity = .5;
//  sun.children.add(mars);


//  //marsmoon1 = new Planet();
//  //marsmoon1.parent.add (mars);
//  //marsmoon1.size = 25;
//  //marsmoon1.shade = color(255, 255, 255);
//  //marsmoon1.position.x = 25 + ((marsmoon1.parent.get(0).size/2) + marsmoon1.size/2);
//  //marsmoon1.angularVelocity = 2.1;
//  //mars.children.add(marsmoon1);

//  //marsmoon2 = new Planet();
//  //marsmoon2.parent.add (mars);
//  //marsmoon2.size = 25;
//  //marsmoon2.shade = color(255, 255, 255);
//  //marsmoon2.position.x = 55 + ((marsmoon2.parent.get(0).size/2) + marsmoon2.size/2);
//  //marsmoon2.angularVelocity = 1.9;
//  //mars.children.add(marsmoon2);

//  for (var i = 0; i<1000; ++i)
//  {
//    aStar = new Star();
//    aStar.StarColor = color(255, 255, 0);
//    aStar.sposition.x = random(1000);
//    aStar.sposition.y = random(1000);
//    aStar.size = random(8);
//    aStar.tspeed = random(100);
//    allStars.add(aStar);
//  }
//}

//void draw ()
//{
//  background(0);
//  for (var i = 0; i < allStars.size(); ++i) {
//    allStars.get(i).render();
//  }
//  for (var i = 0; i < allStars.size(); ++i) {
//    allStars.get(i).update();
//  }
//  sun.render();
//  sun.update();
//}
