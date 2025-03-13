package com.sportFlow.model;

import java.util.Date;

public class WorkoutSession {
    private int idWorkout;
    private Date dateWorkout;
    private int idCoach;
    private int idUser;

    public WorkoutSession() {}

    public WorkoutSession(int idWorkout, Date dateWorkout, int idCoach, int idUser) {
        this.idWorkout = idWorkout;
        this.dateWorkout = dateWorkout;
        this.idCoach = idCoach;
        this.idUser = idUser;
    }

    public int getIdWorkout() {
        return idWorkout;
    }

    public void setIdWorkout(int idWorkout) {
        this.idWorkout = idWorkout;
    }

    public Date getDateWorkout() {
        return dateWorkout;
    }

    public void setDateWorkout(Date dateWorkout) {
        this.dateWorkout = dateWorkout;
    }

    public int getIdCoach() {
        return idCoach;
    }

    public void setIdCoach(int idCoach) {
        this.idCoach = idCoach;
    }

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }
}