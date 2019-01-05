package service;

import entity.Product;
import javax.persistence.*;
import java.util.List;

public class ProductService {

    EntityManager em;

    public ProductService() {
        EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("AACS3094-Web-ApplicationPU");
        this.em = emfactory.createEntityManager();
        this.em.getTransaction().begin();
    }

    public void addProduct(Product product) throws RollbackException {
        em.persist(product);
        em.getTransaction().commit();
    }

    /**
     * @param id
     *        ID of the product which needs to be deleted
     *
     * @return true if successfully committed 
     *         false if product not found
     *
     * @throws RollbackException 
     *         If commit fails
     */
    public boolean deleteProduct(int id) throws RollbackException {
        Product product = findProdByID(id);
        if (product != null) {
            em.remove(product);
            em.getTransaction().commit();
            return true;
        }
        return false;
    }

    public Product findProdByID(int id) {
        return (Product) em.find(Product.class, id);
    }

    /**
     * @param newProduct 
     *        The modified product
     * 
     * @return true if successfully committed
     *         false if product not found
     * 
     * @throws RollbackException
     *         If commit fails
     */
    public boolean updateProduct(Product newProduct) throws RollbackException{
        Product thisProduct = findProdByID(newProduct.getProductid());
        if (thisProduct != null) {
            
            thisProduct.setName(newProduct.getName());
            thisProduct.setDescription(newProduct.getDescription());
            thisProduct.setRating(newProduct.getRating());
            thisProduct.setDaterelease(newProduct.getDaterelease());
            thisProduct.setPrice(newProduct.getPrice());
            thisProduct.setPoster(newProduct.getPoster());
            thisProduct.setGenre(newProduct.getGenre());
            thisProduct.setTrailer(newProduct.getTrailer());

            em.getTransaction().commit();
            return true;
        }
        return false;
    }
    
    public int countProduct() {
        return (int) em.createNativeQuery("SELECT COUNT(*) FROM NBUSER.PRODUCT").getSingleResult();
    }

    public List<Product> findAll() {
        List ProductList = em.createNamedQuery("Product.findAll").getResultList();
        return ProductList;
    }
    
    public void close() {
        this.em.close();
    }
}
