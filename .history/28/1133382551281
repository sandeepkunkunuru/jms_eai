package com.ou.mtechminiproject.sandeep.finance;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

public class EmployeeRecordHandler 
{
  public EmployeeRecordHandler()
  {
  }
  
  public static EmployeeBean getEmployeeDetails(int empId){
   
    XMLFileHandler xmlHandler = new XMLFileHandler();
    ParseEmployeeRecord parser = new ParseEmployeeRecord(xmlHandler);
    
    Utility.empBean = new EmployeeBean();
    parser.parse(Utility.xmlDbDir.getAbsolutePath()+"/"+empId+".xml");
    
    return Utility.empBean;
  }  
  
  public static void updateEmployeeRecord(EmployeeBean emp, int empId){    
    File obsEmpRec = new File(Utility.penXMLDbDir.getAbsolutePath()+"/"+empId+".xml");  
    obsEmpRec.delete(); 
    generateXMLFile(generateXMLString(emp),empId); 
  }

  public static int[] getPendingRecords(){
    File penEmpRecDir = new File(Utility.penXMLDbDir.getAbsolutePath());
    String[] fileNames = penEmpRecDir.list();
    int[] empIDs = new int[fileNames.length];
    
    for(int i = 0;i < fileNames.length; i++){
      empIDs[i] = Integer.parseInt(fileNames[i].substring(0,fileNames[i].indexOf(".")));
    }
    
    return empIDs;
  }
  
  public static void deleteEmployeeDetails(int empId){
    File obsEmpRec = new File(Utility.xmlDbDir.getAbsolutePath()+"/"+empId+".xml");
  
    obsEmpRec.delete();  
  }  

  public static String generateXMLString(EmployeeBean emp){
    StringBuffer empXMLRecord = new StringBuffer("<Employee>");   
    
    empXMLRecord.append("<Name>"+emp.getName() +"</Name>");
    empXMLRecord.append("<Designation>"+emp.getDesignation() +"</Designation>");
    empXMLRecord.append("<BasicSalary>"+emp.getBasicSalary() +"</BasicSalary>");
    empXMLRecord.append("<HRA>"+emp.getHRA() +"</HRA>");
    empXMLRecord.append("<LTA>"+emp.getLTA() +"</LTA>");
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