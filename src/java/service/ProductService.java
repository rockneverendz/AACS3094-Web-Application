package service;

import entity.Product;
import javax.persistence.*;

//import java.util.List;

public class ProductService {

    EntityManager em;
    
    public ProductService() {
        EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("AACS3094-Web-ApplicationPU");
        this.em = emfactory.createEntityManager();
        this.em.getTransaction().begin();
    }

    public void addProduct(Product product) throws RollbackException{
        em.persist(product);
        em.getTransaction().commit();
    }

    public Product findProdByID(int id) {
        return (Product) em.find(Product.class, id);
    }
//
//    public boolean deleteCustomer(int id) {
//        Product product = findCustByID(id);
//        if (product != null) {
//            em.remove(product);
//            em.getTransaction().commit();
//            return true;
//        }
//        return false;
//    }
    
    public int countProduct(){
        return (int) em.createNativeQuery("SELECT COUNT(*) FROM NBUSER.PRODUCT").getSingleResult();
    } 

//    public List<Customer> findAll() {
//        List Custlist = em.createNamedQuery("Customer.findAll").getResultList();
//        return Custlist;
//    }

//    public boolean updateCustomer(Customer newCustomer) {
//        Customer thisCustomer = findCustByID(newCustomer.getCustid());
//        if (thisCustomer != null) {
//            thisCustomer.setCustname(newCustomer.getCustname());
//            thisCustomer.setDob(newCustomer.getDob());
//            thisCustomer.setPassword(newCustomer.getPassword());
//            em.getTransaction().commit();
//            return true;
//        }
//        return false;
//    }
    
    public void close() {
        this.em.close();
    }
}
