/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package calanderbeanss;

import java.io.Serializable;

/**
 *
 * @author wathm
 */
public class TechCalanderBean  implements Serializable{
    
    private  String title;
    private  String date;
    private String description;
    
    
    
    public TechCalanderBean(){
        
    }
    public TechCalanderBean(String title,String date,String description){
        
        setTitle(title);
        setDate(date);
        setDescription(description);
    }
    

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
  
    
    
    
}
