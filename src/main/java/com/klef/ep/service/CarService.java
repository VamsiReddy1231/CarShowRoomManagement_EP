package com.klef.ep.service;

import javax.ejb.Remote;
import java.util.List;

import com.klef.ep.models.Car;

@Remote
public interface CarService {
  public String addCar(Car car);
  public String updateCar(Car car);
  public String deleteCar(int eid);
  public List<Car> viewallCars();
  public Car viewCarById(int id);
}