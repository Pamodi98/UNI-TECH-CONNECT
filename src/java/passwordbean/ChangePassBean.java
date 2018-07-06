/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package passwordbean;

import java.io.Serializable;

/**
 *
 * @author wathm
 */
public class ChangePassBean implements Serializable{
    
    String oldpass;
    String newpass;
    String conpass;
    
    public ChangePassBean(){
        
    }
     public ChangePassBean(String oldpass,String newpass,String conpass)
     {
        setOldpass(oldpass);
        setNewpass(newpass);
        setConpass(conpass);
        
    }

    public String getOldpass() {
        return oldpass;
    }

    public void setOldpass(String oldpass) {
        this.oldpass = oldpass;
    }

    public String getNewpass() {
        return newpass;
    }

    public void setNewpass(String newpass) {
        this.newpass = newpass;
    }

    public String getConpass() {
        return conpass;
    }

    public void setConpass(String conpass) {
        this.conpass = conpass;
    }
    
}
