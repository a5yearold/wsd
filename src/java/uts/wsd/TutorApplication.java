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

public class TutorApplication {
    private String tutorPath;
    private Tutors tutors;

    public TutorApplication() {
    }

    public String getFilePath() {
        return tutorPath;
    }

    public void setFilePath(String tutorPath) throws JAXBException, FileNotFoundException, IOException {
        this.tutorPath = tutorPath;
     

        // Create the unmarshaller
        JAXBContext jc = JAXBContext.newInstance(Tutors.class);
        Unmarshaller u = jc.createUnmarshaller();

        // Now unmarshal the object from the file
        FileInputStream fin = new FileInputStream(tutorPath);
        tutors = (Tutors)u.unmarshal(fin); // This loads the "???" object
        fin.close();
        
    }
    
    public void updateXML(Tutors tutors, String filePath) throws Exception {
        this.tutors = tutors;
        this.tutorPath = filePath;
        JAXBContext jc = JAXBContext.newInstance(Tutors.class);
        Marshaller m = jc.createMarshaller();
        m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
        FileOutputStream fout = new FileOutputStream(filePath);
        m.marshal(tutors, fout);
        fout.close();
    }

    public Tutors getTutors() {
        return tutors;
    }

    public void setTutors(Tutors tutors) {
        this.tutors = tutors;
    }
    
}
