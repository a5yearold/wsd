/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.wsd;

import java.util.*;
import java.io.Serializable;
import javax.xml.bind.annotation.*;


@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "tutors")
public class Tutors implements Serializable {
    @XmlElement(name = "tutor")
    private ArrayList<Tutor> list = new ArrayList<Tutor>();

    public Tutors() {
    }
    
    public ArrayList<Tutor> getList() {
        return list;
    }
    public void addTutor(Tutor tutor) {
        list.add(tutor);
    }
    public void removeTutor(Tutor tutor) {
        list.remove(tutor);
    }
    
    public Tutor getTutor(String email) {
        for (Tutor tutor : list) {
            if (tutor.getEmail() == email) {
                return tutor;
            }
        }
        return null;
    }
    
    public Tutor login(String email, String password) {
        //For each tutor in the xml list...
        for (Tutor tutor : list) {
            if (tutor.getEmail().equals(email) && tutor.getPassword().equals(password))
                return tutor;
        }
        return null;
    }
}
 