/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.wsd;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;
import javax.xml.bind.Unmarshaller;

/**
 *
 * @author 12493526
 */

public class StudentApplication {
    private String studentPath;
    private Students students;

    public StudentApplication() {
    }

    public String getFilePath() {
        return studentPath;
    }

    public void setFilePath(String studentPath) throws JAXBException, FileNotFoundException, IOException {
        this.studentPath = studentPath;
     

        // Create the unmarshaller
        JAXBContext jc = JAXBContext.newInstance(Students.class);
        Unmarshaller u = jc.createUnmarshaller();

        // Now unmarshal the object from the file
        FileInputStream fin = new FileInputStream(studentPath);
        students = (Students)u.unmarshal(fin); // This loads the "???" object
        fin.close();
        
    }
    
    public void updateXML(Students students, String studentPath) throws Exception {
        this.students = students;
        this.studentPath = studentPath;
        JAXBContext jc = JAXBContext.newInstance(Students.class);
        Marshaller m = jc.createMarshaller();
        m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
        FileOutputStream fout = new FileOutputStream(studentPath);
        m.marshal(students, fout);
        fout.close();
    }

    public Students getStudents() {
        return students;
    }

    public void setStudents(Students students) {
        this.students = students;
    }
    
}
