package com.example.LAB4.Model;

import java.util.Objects;

public class Car {

    private String model;
    private String brand;
    private String liter;
    private String year;
    private String color;
    private int id;


    public Car(String model, String brand, String liter, String year, String color, int id) {
        this.model = model;
        this.brand = brand;
        this.liter = liter;
        this.year = year;
        this.color = color;
        this.id = id;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getLiter() {
        return liter;
    }

    public void setLiter(String liter) {
        this.liter = liter;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Car(){

    }

    @Override
    public String toString() {
        return "User{" +
                "Model='" + model + '\'' +
                ", Brand='" + brand + '\'' +
                ", Liter='" + liter + '\'' +
                ", Year='" + year + '\'' +
                ", Color='" + color + '\'' +

                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Car)) return false;
        Car car = (Car) o;
        return getModel().equals(car.getModel()) && getBrand().equals(car.getBrand()) && getLiter().equals(car.getLiter())
                && getYear().equals(car.getYear()) && getColor().equals(car.getColor());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getModel(), getBrand(), getLiter(), getYear(), getColor());
    }
}
