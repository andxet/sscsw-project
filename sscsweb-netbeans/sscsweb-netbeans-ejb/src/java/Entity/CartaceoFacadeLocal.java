/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author elia
 */
@Local
public interface CartaceoFacadeLocal {

  void create(Cartaceo cartaceo);

  void edit(Cartaceo cartaceo);

  void remove(Cartaceo cartaceo);

  Cartaceo find(Object id);

  List<Cartaceo> findAll();

  List<Cartaceo> findRange(int[] range);

  int count();
  
}
