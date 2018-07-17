package controller;

import helper.Log;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 * @author fabio chiarani
 * @author luigi capogrosso
 */

public class WarehouseHistoryControllerTest {
    
    public WarehouseHistoryControllerTest() {
    }
    
    @Test
    public void administrationControllerCheckRegexText() {
        Log.INFO(getClass().getName(), "administrationControllerCheckRegexText", "STARTING", "");
        
        AdministrationController controller = new AdministrationController();
        final String regexText              = "^[A-Za-z0-9 ]+$";
        final String regexPrice             = "^[.0-9]+$";
        final String regexDate              = "(^(((0[1-9]|1[0-9]|2[0-8])[\\/](0[1-9]|1[012]))|((29|30|31)[\\/](0[13578]|1[02]))|((29|30)[\\/](0[4,6,9]|11)))[\\/](19|[2-9][0-9])\\d\\d$)|(^29[\\/]02[\\/](19|[2-9][0-9])(00|04|08|12|16|20|24|28|32|36|40|44|48|52|56|60|64|68|72|76|80|84|88|92|96)$)";
        
        Log.INFO(getClass().getName(), "administrationControllerCheckRegexText", "STARTING ASSERT", "resRegexTxt");
        boolean resRegexTxt = controller.CheckRegex("Prova testo31 1", regexText);
        assertTrue(resRegexTxt);
        
        Log.INFO(getClass().getName(), "administrationControllerCheckRegexText", "STARTING ASSERT", "resRegexTxt1");
        boolean resRegexTxt1 = controller.CheckRegex("Prova", regexText);
        assertTrue(resRegexTxt1);
        
        Log.INFO(getClass().getName(), "administrationControllerCheckRegexText", "STARTING ASSERT", "resRegexNumber");
        boolean resRegexNumber = controller.CheckRegex("3112", regexText);
        assertTrue(resRegexNumber);
                 
        Log.INFO(getClass().getName(), "administrationControllerCheckRegexText", "STARTING ASSERT", "resRegexTxt2");
        boolean resRegexTxt2 = controller.CheckRegex("CIAO !121", regexText);
        assertFalse(resRegexTxt2);
        
        Log.INFO(getClass().getName(), "administrationControllerCheckRegexText", "STARTING ASSERT", "resRegexPrice");
        boolean resRegexPrice = controller.CheckRegex("10,99", regexPrice);
        assertFalse(resRegexPrice);
                
        Log.INFO(getClass().getName(), "administrationControllerCheckRegexText", "STARTING ASSERT", "resRegexPrice1");
        boolean resRegexPrice1 = controller.CheckRegex("10", regexPrice);
        assertTrue(resRegexPrice1);
          
        Log.INFO(getClass().getName(), "administrationControllerCheckRegexText", "STARTING ASSERT", "resRegexPrice2");
        boolean resRegexPrice2 = controller.CheckRegex("10.99", regexPrice);
        assertTrue(resRegexPrice2);
        
        Log.INFO(getClass().getName(), "administrationControllerCheckRegexText", "STARTING ASSERT", "resRegexDate");
        boolean resRegexDate = controller.CheckRegex("31/12/1996", regexDate);
        assertTrue(resRegexDate);
        
        Log.INFO(getClass().getName(), "administrationControllerCheckRegexText", "STARTING ASSERT", "resRegexDate1");
        boolean resRegexDate1 = controller.CheckRegex("31/12/", regexDate);
        assertFalse(resRegexDate1);
        
        Log.INFO(getClass().getName(), "administrationControllerCheckRegexText", "STARTING ASSERT", "resRegexDate2");
        boolean resRegexDate2 = controller.CheckRegex("/12/", regexDate);
        assertFalse(resRegexDate2);
        
        Log.INFO(getClass().getName(), "administrationControllerCheckRegexText", "STARTING ASSERT", "resRegexDate3");
        boolean resRegexDate3 = controller.CheckRegex("32/12/2018", regexDate);
        assertFalse(resRegexDate3);
        
        Log.INFO(getClass().getName(), "administrationControllerCheckRegexText", "STARTING ASSERT", "resRegexDate4");
        boolean resRegexDate4 = controller.CheckRegex("30/02/2018", regexDate);
        assertFalse(resRegexDate4);
        
        Log.INFO(getClass().getName(), "administrationControllerCheckRegexText", "STARTING ASSERT", "resRegexDate4");
        boolean resRegexDate5 = controller.CheckRegex("30/13/2018", regexDate);
        assertTrue(resRegexDate5);
    }
}
