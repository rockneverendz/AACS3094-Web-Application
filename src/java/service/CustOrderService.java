package service;

import entity.Customer;
import entity.Custorder;
import entity.Orderlist;
import entity.OrderlistPK;
import java.util.ArrayList;
import javax.persistence.*;
import java.util.List;

public class CustOrderService {

    EntityManager em;

    public CustOrderService() {
        EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("AACS3094-Web-ApplicationPU");
        this.em = emfactory.createEntityManager();
    }

    public void addCustorder(Custorder custorder, ArrayList<Orderlist> cart, Customer customer) throws RollbackException {
        em.getTransaction().begin();
        em.persist(custorder);
        em.getTransaction().commit();

        cart.stream().map((orderlist) -> {
            orderlist.setCustorder(custorder);
            return orderlist;
        }).forEachOrdered((orderlist) -> {
            orderlist.setOrderlistPK(
                    new OrderlistPK(
                            orderlist.getProduct().getProductid(),
                            custorder.getOrderid()
                    )
            );
        });

        em.getTransaction().begin();
        custorder.setOrderlistList(cart);
        custorder.setCustid(customer);
        em.getTransaction().commit();
    }

    public boolean deleteCustorder(int id) throws RollbackException {
        Custorder custorder = findCustorderByID(id);
        if (custorder != null) {
            em.getTransaction().begin();
            em.remove(custorder);
            em.getTransaction().commit();
            return true;
        }
        return false;
    }

    public Custorder findByOrderID(int id) {
        return (Custorder) em.find(Custorder.class, id);
    }

    public List<Custorder> findByCustID(int id) {
        return (List<Custorder>) 
                em.createNamedQuery("Custorder.findByCustid")
                .setParameter("custid", id)
                .getResultList();
    }

    public boolean updateCustorder(Custorder newCustorder) throws RollbackException {
        Custorder thisCustorder = findByOrderID(newCustorder.getOrderid());
        if (thisCustorder != null) {

            em.getTransaction().begin();
            thisCustorder.setStatus(newCustorder.getStatus());
            thisCustorder.setTrackingno(newCustorder.getTrackingno());
            em.getTransaction().commit();

            return true;
        }
        return false;
    }

    public List<Custorder> findAll() {
        List custorder = em.createNamedQuery("Custorder.findAll").getResultList();
        return custorder;
    }

    public void close() {
        this.em.close();
    }
}
