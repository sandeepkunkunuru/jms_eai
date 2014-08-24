package com.ou.mtechminiproject.sandeep.hr;

import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class XMLFileHandler extends DefaultHandler 
{

  private String nodeName = ""; 
  private EmployeeBean empBean;
 
  public XMLFileHandler()
  {
  }
     
  public void startDocument()
      throws SAXException {     
    empBean = new EmployeeBean();
  }
  
  /**
   * Receive notification of the start of an element.
   * @param namespaceURI - The Namespace URI, or the empty string if the element has no Namespace URI or if Namespace processing is not being performed.
   * @param localName - The local name (without prefix), or the empty string if Namespace processing is not being performed.
   * @param qName - The qualified name (with prefix), or the empty string if qualified names are not available.
   * @param atts - The attributes attached to the element. If there are no attributes, it shall be an empty Attributes object.
   * @throws SAXException - Any SAX exception, possibly wrapping another exception.
   */
  public void startElement(String namespaceURI, String localName, String qName, Attributes atts)
      throws SAXException {
      
      if(localName !=  null && localName.length() != 0){
       nodeName = localName;  
       System.out.println("in If"+localName);
      }
      System.out.println("Out If"+localName);
  }
  
  public void characters(char[] ch, int start, int length)
                throws SAXException{
    String textContent = String.valueOf(ch,start,length);
       
    if(nodeName.equalsIgnoreCase("FirstName")){
      empBean.setFirstName(textContent);  
    }else if(nodeName.equalsIgnoreCase("MiddleName")){
      empBean.setMiddleName(textContent);   
    }else if(nodeName.equalsIgnoreCase("LastName")){
      empBean.setLastName(textContent); 
    }else if(nodeName.equalsIgnoreCase("Address")){
      empBean.setAddress(textContent); 
    }else if(nodeName.equalsIgnoreCase("Designation")){
      empBean.setDesignation(textContent); 
    }else if(nodeName.equalsIgnoreCase("Gender")){
      empBean.setGender(textContent); 
    }else if(nodeName.equalsIgnoreCase("JoiningDate")){
      empBean.setJoiningDate(textContent); 
    } 
    System.out.println(nodeName +"-" + textContent);
  }
  
   public void endDocument()
      throws SAXException {     
    Utility.empBean = empBean;
  } 
}