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
public interface HardwareFacadeLocal {

  void create(Hardware hardware);

  void edit(Hardware hardware);

  void remove(Hardware hardware);

  Hardware find(Object id);

  List<Hardware> findAll();

  List<Hardware> findRange(int[] range);

  int count();
  
}
