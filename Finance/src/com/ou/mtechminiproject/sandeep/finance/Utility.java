package com.ou.mtechminiproject.sandeep.finance;
import java.io.File;

public class Utility 
{
  public Utility()
  {
  }
  
  public static final File xmlDbDir = new File(PropertiesHandler.getProperty("XMLFilePath"));
  public static final File penXMLDbDir = new File(PropertiesHandler.getProperty("PendingXMLFilePath"));
  public static final XMLFileFilter xmlFileFilter = new XMLFileFilter();  
  public static EmployeeBean empBean;
}