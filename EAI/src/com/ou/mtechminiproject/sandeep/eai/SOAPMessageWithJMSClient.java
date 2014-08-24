/*
 * @(#)ReceiveSOAPMessageWithJMS.java	1.4 02/05/02
 *
 * Copyright (c) 2004 Sun Microsystems, Inc. All Rights Reserved.
 *
 * Sun grants you ("Licensee") a non-exclusive, royalty free, license to use,
 * modify and redistribute this software in source and binary code form,
 * provided that i) this copyright notice and license appear on all copies of
 * the software; and ii) Licensee does not utilize the software in a manner
 * which is disparaging to Sun.
 *
 * This software is provided "AS IS," without a warranty of any kind. ALL
 * EXPRESS OR IMPLIED CONDITIONS, REPRESENTATIONS AND WARRANTIES, INCLUDING ANY
 * IMPLIED WARRANTY OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE OR
 * NON-INFRINGEMENT, ARE HEREBY EXCLUDED. SUN AND ITS LICENSORS SHALL NOT BE
 * LIABLE FOR ANY DAMAGES SUFFERED BY LICENSEE AS A RESULT OF USING, MODIFYING
 * OR DISTRIBUTING THE SOFTWARE OR ITS DERIVATIVES. IN NO EVENT WILL SUN OR ITS
 * LICENSORS BE LIABLE FOR ANY LOST REVENUE, PROFIT OR DATA, OR FOR DIRECT,
 * INDIRECT, SPECIAL, CONSEQUENTIAL, INCIDENTAL OR PUNITIVE DAMAGES, HOWEVER
 * CAUSED AND REGARDLESS OF THE THEORY OF LIABILITY, ARISING OUT OF THE USE OF
 * OR INABILITY TO USE SOFTWARE, EVEN IF SUN HAS BEEN ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGES.
 *
 * This software is not designed or intended for use in on-line control of
 * aircraft, air traffic, aircraft navigation or aircraft communications; or in
 * the design, construction, operation or maintenance of any nuclear
 * facility. Licensee represents and warrants that it will not use or
 * redistribute the Software for such purposes.
 */

package com.ou.mtechminiproject.sandeep.eai;


/**
 * This sample program shows a JMS message listener can use the MessageTransformer
 * utility to convert JMS messages back to SOAP messages.
 */
public class SOAPMessageWithJMSClient {
   
    /**    
     * The main program to send SOAP messages with JMS and ReceiveSOAPMessageWithJMS.
     */    
    public static void main (String[] args) {

        String topicName = JNDINames.TEST_MDB_TOPIC;
        String usage = "\nUsage: enter parameter Send or Receive (followed by optional Topic name). \n"+
                       "To Receive message: \"appclient -client SOAPtoJMSMessageSampleClient.jar Receive\" \n"+
                       "To Send message: \"appclient -client SOAPtoJMSMessageSampleClient.jar Send\"";                      

        if (args.length > 0) {
            if (args[0].equalsIgnoreCase("Receive")){
                if (args.length > 1) {
                    topicName = args[1];
                }
                try {
                    ReceiveSOAPMessageWithJMS rsm = new ReceiveSOAPMessageWithJMS(topicName);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } else if (args[0].equalsIgnoreCase("Send")){
                if (args.length > 1) {
                    topicName = args[1];
                }
                try {
                    SendSOAPMessageWithJMS ssm = new SendSOAPMessageWithJMS(topicName);
                    ssm.send();
                    ssm.close();
                    System.out.println("Finished");
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } else {
              System.out.println(usage);
            }            
        } else {
            System.out.println(usage);
        }

    }
}
