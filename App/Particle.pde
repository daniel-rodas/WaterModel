public class Particle extends PVector {
  float fillColor = random(50);
  protected float[] location = new float[4];
  protected float[] particleColor = new float[4];

  float r ;
  float theta ;

  Particle() {
    location[0] = random( 10, 550 ) ; // X
    location[1] = random( 40, 350 ) ; // Y
    location[2] =   random( 9 ) ; // Width
    location[3] =   location[2] ; // Height
    theta = 0;
    r = height * 0.45;
  }

  public void draw()
  {
    circle();
  }

  public void changeColor()
  {
    particleColor[0] = random(255);
    particleColor[1] = random(255);
    particleColor[2] = random(255);
    particleColor[3] = random(255);
  }

  public void circle()
  {
    // Converting from polar (r, theta) to Cartesian (x,y)
//    float x = r * cos(theta);
//    float y = r * sin(theta);
    
    float x = ( location[0] ) * cos(theta + location[0] );
    float y = ( location[1] ) * sin(theta + location[1] );

    noStroke();
    ellipseMode(RADIUS);  // Set ellipseMode to RADIUS
    fill( particleColor[0], particleColor[1], particleColor[2], particleColor[3] );  // Set fill to white
    ellipse( x , y , location[2], location[3] );  // Draw white ellipse using RADIUS mode

    ellipseMode(CENTER);  // Set ellipseMode to CENTER
    fill( particleColor[0], particleColor[1], particleColor[2], particleColor[3] ); // Set fill to gray
    ellipse( x , y, location[2], location[2] );   // Draw gray ellipse using CENTER mode

    // increment the angle over time.
    theta += 0.06;
  }
   
  float getX(float r , float theta)
  {
    return r * cos(theta);
  } 
  
  float getY(float r , float theta)
  {
    return r * sin(theta);
  }
}

