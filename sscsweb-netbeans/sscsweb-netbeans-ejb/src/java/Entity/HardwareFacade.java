/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author elia
 */
@Stateless
public class HardwareFacade extends AbstractFacade<Hardware> implements HardwareFacadeLocal {

  @PersistenceContext(unitName = "sscsweb-netbeans-ejbPU")
  private EntityManager em;

  @Override
  protected EntityManager getEntityManager() {
    return em;
  }

  public HardwareFacade() {
    super(Hardware.class);
  }
  
}
