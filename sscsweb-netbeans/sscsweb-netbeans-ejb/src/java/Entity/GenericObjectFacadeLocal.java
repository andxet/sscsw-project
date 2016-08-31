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
public interface GenericObjectFacadeLocal {

  void create(GenericObject genericObject);

  void edit(GenericObject genericObject);

  void remove(GenericObject genericObject);

  GenericObject find(Object id);

  List<GenericObject> findAll();

  List<GenericObject> findRange(int[] range);

  int count();
  
}
