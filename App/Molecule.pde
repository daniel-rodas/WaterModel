
public abstract class Molecule extends PVector
{
  private StateOfMatter state;
  protected ArrayList<MolecularBond> bonds  = new ArrayList<MolecularBond>();

  protected Atom a;
  protected Particle p;

  Molecule ( PVector loc )
  {
    this.set(loc);
    state = new ConcreteStateLiquid();
  }

  void ChangeState()
  {
    state.ChangeState(this);
  }

  public StateOfMatter getState() 
  {
    return state;
  }

  public void setState(StateOfMatter s) 
  {
    state = s;
  }

  public void Vaporize() 
  {
    state = new ConcreteStateGas();
    state.ChangeState(this);
  }

  public void Cumbust() 
  {
    state = new ConcreteStatePlasma();
    state.ChangeState(this);
  }

  public void Melt() {
    throw new UnsupportedOperationException("Not supported yet.");
  }

  public void Freeze() 
  {
    state = new ConcreteStateSolid();
    state.ChangeState(this);
  }

  public void Thaw() {
    throw new UnsupportedOperationException("Not supported yet.");
  }

  public void changeState() {
  }

  public void Condense()
  {
    state = new ConcreteStateLiquid();
    state.ChangeState(this);
  }

  public abstract ArrayList<AtomInterface> getAtoms();

  public PVector getLocation()
  {
    return this.get();
  }
  
  public void setLocation(PVector loc)
  {
    this.set(loc);
  }

  public void drawAtoms( ArrayList<AtomInterface> atoms )
  {
    for ( int i = 0; i < atoms.size (); i++ )
    {
      a = (Atom) atoms.get(i);
      a.draw();
    }
  }
}

