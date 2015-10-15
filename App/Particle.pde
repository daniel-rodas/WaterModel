public class Particle extends PVector
{
  float fillColor ;
  protected float[] size = new float[2];
  protected float[] particleColor = new float[4];
  protected float oscillation;
  protected float radius;
  protected float theta;
  protected float x;
  protected float y;
  PVector velocity;
  PVector acceleration;
  protected PVector origin = new PVector();

  Particle( PVector loc ) 
  {
    origin = loc.get() ;
    acceleration = new PVector(0, 0.05);
    velocity = new PVector(random(-1, 1), random(-2, 0));
    size[0] =   random( 5 ) ; // Width
    size[1] =   size[0] ; // Height
  }

  public void draw()
  { 
    noStroke();
    ellipseMode(RADIUS);  // Set ellipseMode to RADIUS
    fill( particleColor[0], particleColor[1], particleColor[2], particleColor[3] );
    ellipse( this.x + origin.x + x, this.y + origin.y + y, size[0], size[1]  ); 
    // increment the angle over time.
    theta += oscillation  ;
  }

  public void reset()
  {
    oscillation = 1;
    radius = 1;
    theta = 1;
    velocity.set(PI,PI);
    acceleration.set(PI,PI);
  }

  // Method to update location
  void update() {
    velocity.add(acceleration);
    this.add(velocity);
  }

  /*
   *  Converting from polar (r, theta) to Cartesian (x,y)
   *  float x = r * cos(theta);
  /*/

  public void setX(float X)
  {
    x = X;
  }

  public float getX()
  {
    return x;
  }

  public void setY( float Y )
  {
    y = Y;
  }

  public float getY()
  {
    return y;
  }

  float getPolarX(float r, float t)
  {
    return r * cos(t);
  } 
  /*
   * float y = r * sin(theta);
  /**/
  float getPolarY(float r, float t)
  {
    return r * sin(t);
  }

  public PVector makeBullsEye()
  {
    return this.get();
  }

  public PVector getLocation()
  {
    return this;
  }

  public void setOscillation(float o)
  {
    oscillation = o;
  }

  public float getOscillation()
  {
    return oscillation;
  }

  public void setRadius( float r )
  {
    radius = r;
  }

  public float getRadius()
  {
    return radius;
  }

  public void setTheta( float t )
  {
    theta = t;
  }

  public float getTheta()
  {
    return theta;
  }
}

