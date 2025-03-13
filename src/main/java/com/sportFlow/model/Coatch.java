package com.sportFlow.model;

public class Coatch {
      private int idCoatch;
      private String speciality;

  public Coatch(){}


    public Coatch(int idCoatch, String speciality) {
        this.idCoatch = idCoatch;
        this.speciality = speciality;
    }

    public int getIdCoatch() {
        return idCoatch;
    }

    public void setIdCoatch(int idCoatch) {
        this.idCoatch = idCoatch;
    }

    public String getSpeciality() {
        return speciality;
    }

    public void setSpeciality(String speciality) {
        this.speciality = speciality;
    }
}
