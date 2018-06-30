/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package regsiterbean;

import java.io.Serializable;

/**
 *
 * @author wathm
 */
public class RegisterBean implements Serializable
{
    String fullname;
    String email;
    String contact;
    String reason;
    String type;
    
    public RegisterBean(){
        
    }
    public RegisterBean(String fullname,String email,String contact,String reason,String type){
        this.setFullname(fullname);
        this.setEmail(email);
        this.setContact(contact);
        this.setReason(reason);
        this.setType(type);
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
    
    
    
}
