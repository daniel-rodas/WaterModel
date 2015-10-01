public class Particle {
  float fillColor = random(50);
  protected float[] location = new float[4];
  protected float[] particleColor = new float[4];
  
  float zoom = 1;
  float angle = 0;

  Particle() {
    location[0] = random( - 550 , 550 ) ; // X
    location[1] = random( - 450 , 550 ) ; // Y
    location[2] =   random( 9 ) ; // Width
    location[3] =   random( 6 ) ; // Height
  }

  public void init()
  {
  }

  public void setup()
  {
  }

  public void draw()
  {
    keyPressed() ;
    scale(zoom);
    rotate(angle);
    circle();
  }

  public void circle()
  {
    noStroke();
    ellipseMode(RADIUS);  // Set ellipseMode to RADIUS
    fill(random(245));  // Set fill to white
    ellipse( location[0], location[1], location[2], location[2] );  // Draw white ellipse using RADIUS mode

    ellipseMode(CENTER);  // Set ellipseMode to CENTER
    fill( particleColor[0], particleColor[1], particleColor[2], particleColor[3] ); // Set fill to gray
    ellipse( location[0], location[1], location[2], location[2] );   // Draw gray ellipse using CENTER mode
  }
  
  
void keyPressed() {
  if (key == CODED)
  {
    if (keyCode == UP)
    {
      zoom += 0.3;
    }
    else if (keyCode == DOWN)
    {
      zoom -= 0.3;
    }
    else if (keyCode == RIGHT)
    {
      angle += 0.3;
    }
    else if (keyCode == LEFT)
    {
      angle -= 0.3;
    }
  }
  
  if (key == ' ')
  {
    angle = 0;
    zoom = 1;

  }
}

}

