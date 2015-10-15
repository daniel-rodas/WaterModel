/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Rodas
 */
class MolecularBond {
  AtomInterface atomA;
  AtomInterface atomB;

  MolecularBond( AtomInterface a, AtomInterface b )
  {
    atomA = a;
    atomB = b;
  }
}

