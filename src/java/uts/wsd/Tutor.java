/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.wsd;

import java.util.*;
import java.io.Serializable;
import javax.xml.bind.annotation.*;

/**
 *
 * @author deocr
 */
@XmlAccessorType(XmlAccessType.FIELD)
public class Tutor implements Serializable {
    
    @XmlElement(name = "name")
    private String name;
    @XmlElement(name = "email")
    private String email;
    @XmlElement(name = "password")
    private String password;
    @XmlElement(name = "dob")
    private String dob;
    @XmlElement(name = "specialty")
    private String specialty;
    @XmlElement(name = "status")
    private String status;
    
    public Tutor(String name, String email, String password, String dob, String specialty, String status) {
     this.name = name;
     this.email = email;
     this.password = password;
     this.dob = dob;
     this.specialty = specialty;
     this.status = status;
    }
    public Tutor() {
        
    }
    
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    
    public String getDob() {
        return dob;
    }
    public void setDob(String dob) {
        this.dob = dob;
    }
    
    public String getSpecialty() {
        return specialty;
    }
    public void setSpecialty(String specialty) {
        this.specialty = specialty;
    }
    
    public String getStatus() {
        return status;
    }
    public void setStatus(String status) {
        this.status = status;
    }
    
}
