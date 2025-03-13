package com.sportFlow.model;

import java.util.Date;

public class Member {

private int idMember;
private Date dateBirth;
private String sportPratique;

public Member(){}


    public Member(int idMember, Date dateBirth, String sportPratique) {
        this.idMember = idMember;
        this.dateBirth = dateBirth;
        this.sportPratique = sportPratique;
    }

    public int getIdMember() {
        return idMember;
    }

    public void setIdMember(int idMember) {
        this.idMember = idMember;
    }

    public Date getDateBirth() {
        return dateBirth;
    }

    public void setDateBirth(Date dateBirth) {
        this.dateBirth = dateBirth;
    }

    public String getSportPratique() {
        return sportPratique;
    }

    public void setSportPratique(String sportPratique) {
        this.sportPratique = sportPratique;
    }
}
