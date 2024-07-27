package com.klef.ep.beans;


import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Base64;
import java.util.List;
import javax.ejb.EJB;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.klef.ep.models.Car;
import com.klef.ep.service.CarService;

@ManagedBean(name = "carBean", eager = true)
public class CarBean {

    @EJB(lookup = "java:global/carmanagement/CarServiceImpl!com.klef.ep.service.CarService")
     CarService service;

    private int id;
    private String name;
    private String model;
    private String description;
    private double price;
    private int year;
    private Part carImage;



    // Getters and setters for other fields
    public int getId() {
        return id;
    }

   public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public Part getCarImage() {
        return carImage;
    }

    public void setCarImage(Part carImage) {
        this.carImage = carImage;
    }

    public List<Car> getCarList() {
        return service.viewallCars();
    }

    public String add() {
        FacesContext context = FacesContext.getCurrentInstance();
        try {
            Car car = new Car();
            car.setName(name);
            car.setModel(model);
            car.setDescription(description);
            car.setPrice(price);
            car.setYear(year);
            car.setImage(convertImageToByteArray(carImage));
            service.addCar(car);
            context.addMessage(null, new FacesMessage(FacesMessage.SEVERITY_INFO, "Success", "Car added successfully"));
            return "success"; // Navigate to success page or show success message
        } catch (Exception e) {
            context.addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR, "Error", "An error occurred while adding the car. Please try again."));
            e.printStackTrace();
            return null; // Stay on the same page
        }
    }

    private byte[] convertImageToByteArray(Part carImage) {
        try (InputStream input = carImage.getInputStream()) {
            ByteArrayOutputStream output = new ByteArrayOutputStream();
            byte[] buffer = new byte[1024];
            int bytesRead;
            while ((bytesRead = input.read(buffer)) != -1) {
                output.write(buffer, 0, bytesRead);
            }
            return output.toByteArray();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    // Method to get Base64 image representation
    public String getImageBase64(Car car) {
        byte[] image = car.getImage();
        return image != null ? "data:image/jpeg;base64," + Base64.getEncoder().encodeToString(image) : null;
    }

    public String delete(Integer id) {
        service.deleteCar(id);
        FacesContext context = FacesContext.getCurrentInstance();
        context.addMessage(null, new FacesMessage(FacesMessage.SEVERITY_INFO, "Success", "Car deleted successfully"));
        return "viewcars";
    }
    public void downloadImage(int carId) {
        FacesContext context = FacesContext.getCurrentInstance();
        HttpServletResponse response = (HttpServletResponse) context.getExternalContext().getResponse();
        try {
            Car car = service.viewCarById(carId); // Assuming a method to get car by ID
            byte[] image = car.getImage();
            if (image != null) {
                response.reset();
                response.setContentType("image/jpeg"); // Change MIME type if needed
                response.setHeader("Content-Disposition", "attachment; filename=\"car_image.jpg\"");
                OutputStream output = response.getOutputStream();
                output.write(image);
                output.flush();
                output.close();
            } else {
                FacesMessage message = new FacesMessage(FacesMessage.SEVERITY_ERROR, "Error", "Image not found.");
                context.addMessage(null, message);
            }
        } catch (IOException e) {
            FacesMessage message = new FacesMessage(FacesMessage.SEVERITY_ERROR, "Error", "An error occurred while downloading the image.");
            context.addMessage(null, message);
            e.printStackTrace();
        }
        context.responseComplete();
    }
}