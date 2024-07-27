package com.klef.ep.service;
import com.klef.ep.models.Car;
import java.util.List;
import javax.ejb.Stateless;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;


@Stateless
@TransactionManagement(TransactionManagementType.BEAN)
public class CarServiceImpl implements CarService
{

  @Override
  public String addCar(Car car) {
      EntityManagerFactory emf= Persistence.createEntityManagerFactory("jpa");
       EntityManager  em= emf.createEntityManager();
       
          em.getTransaction().begin();
          em.persist(car);
          em.getTransaction().commit();
          
          
          em.close();
          emf.close();
           return "success";
  }

  @Override
  public String updateCar(Car car) {
    EntityManagerFactory emf= Persistence.createEntityManagerFactory("jpa");
    EntityManager  em= emf.createEntityManager();
     em.getTransaction().begin();
          Car e = em.find(Car.class, car.getId());
          if (e != null) {
             e.setName(car.getName());
             e.setPrice(car.getPrice());
             e.setDescription(car.getDescription());
             e.setImage(car.getImage());
             e.setYear(car.getYear());
              em.getTransaction().commit();
          } else {
              em.getTransaction().rollback();
              em.close();
              return "event not found";
          }
          em.close();
          return "event Updated Successfully";
  }

  @Override
  public String deleteCar(int eid) {
    EntityManagerFactory emf= Persistence.createEntityManagerFactory("jpa");
    EntityManager  em= emf.createEntityManager();
    
      em.getTransaction().begin();
          Car e= em.find(Car.class, eid);
          if (e != null) {
              em.remove(e);
              em.getTransaction().commit();
          } else {
              em.getTransaction().rollback();
              em.close();
              return "Event not found";
          }
          em.close();
          return "Event Deleted Successfully";
  }

  @Override
  public List<Car> viewallCars() {
    EntityManagerFactory emf= Persistence.createEntityManagerFactory("jpa");
    EntityManager  em= emf.createEntityManager();
    
     List<Car> cars = em.createQuery("SELECT c FROM Car c", Car.class).getResultList();
          em.close();
          return cars;
  }

  @Override
  public Car viewCarById(int id) {
    
    EntityManagerFactory emf= Persistence.createEntityManagerFactory("jpa");
    EntityManager  em= emf.createEntityManager();
         
    Car e = em.find(Car.class, id);
    
    if(e==null) {
      em.close();
      emf.close();
      
      return null;
    }
    em.close();
    emf.close();
    
    return e;   
    
  }

}