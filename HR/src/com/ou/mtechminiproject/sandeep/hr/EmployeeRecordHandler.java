package com.ou.mtechminiproject.sandeep.hr;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

public class EmployeeRecordHandler 
{
  public EmployeeRecordHandler()
  {
  }
  
  public static int createEmployeeRecord(EmployeeBean emp){ 
    int newEmployeeID = Utility.xmlDbDir.listFiles(Utility.xmlFileFilter).length +1;
    
    return generateXMLFile(generateXMLString(emp),newEmployeeID);    
  }
  
  public static EmployeeBean getEmployeeDetails(int empId){
   
    XMLFileHandler xmlHandler = new XMLFileHandler();
    ParseEmployeeRecord parser = new ParseEmployeeRecord(xmlHandler);
    
    Utility.empBean = new EmployeeBean();
    parser.parse(Utility.xmlDbDir.getAbsolutePath()+"/"+empId+".xml");
    
    return Utility.empBean;
  }  
  
  public static void updateEmployeeRecord(EmployeeBean emp, int empId){    
    generateXMLFile(generateXMLString(emp),empId);    
  }

  public static void deleteEmployeeDetails(int empId){
    File obsEmpRec = new File(Utility.xmlDbDir.getAbsolutePath()+"/"+empId+".xml");
  
    obsEmpRec.delete();  
  }  

  public static String generateXMLString(EmployeeBean emp){
    StringBuffer empXMLRecord = new StringBuffer("<Employee>");   
    
    empXMLRecord.append("<FirstName>"+emp.getFirstName() +"</FirstName>");
    empXMLRecord.append("<MiddleName>"+emp.getMiddleName() +"</MiddleName>");
    empXMLRecord.append("<LastName>"+emp.getLastName() +"</LastName>");
    empXMLRecord.append("<Address>"+emp.getAddress() +"</Address>");
    empXMLRecord.append("<Designation>"+emp.getDesignation() +"</Designation>");
    empXMLRecord.append("<Gender>"+emp.getGender() +"</Gender>");
    empXMLRecord.append("<JoiningDate>"+emp.getJoiningDate() +"</JoiningDate>");
    empXMLRecord.append("</Employee>");
    
    return empXMLRecord.toString();
  }
  
  public static int generateXMLFile(String xmlContent,int empID){  
       
    try{
        String newFileName = Utility.xmlDbDir.getAbsolutePath()+"/"+empID + ".xml";
        File file = new File(newFileName);
        if (!file.exists()) {
          file.createNewFile();
        }
        FileWriter filewriter = new FileWriter(file, false);
        filewriter.write(xmlContent);
        
        filewriter.close();
        
        return empID;     
    } catch (IOException ioe){
      ioe.printStackTrace();      
      return -1;
    }
  }
}