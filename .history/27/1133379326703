package com.ou.mtechminiproject.sandeep.finance;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import org.xml.sax.helpers.DefaultHandler;

public class PropertiesHandler extends DefaultHandler 
{
  private static ResourceBundle hrisBundle = null;

  static {
        hrisBundle = ResourceBundle.getBundle("EFIS");
  }
 
 
  public PropertiesHandler()
  {
  }
  
  public static final String getProperty(String propertyName) {
     String propertyValue = "";

     try {
       propertyValue = hrisBundle.getString(propertyName);
     } catch (MissingResourceException mrex) {
       System.out.println("Property : " + propertyName + ": not Found :" + mrex.getCause());
     }

     return propertyValue.trim();
  }
}