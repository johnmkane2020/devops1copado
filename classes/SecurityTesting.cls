public without sharing class SecurityTesting 
{
    public String foor {get; set;}
    public String testing {get; set;}
    
  	public string myInput  {get;set;}
  	public string myoutput {get;set;}
  	public string myhrefoutput {get;set;}
  Public void MyMethode(){
   myoutput = myInput ;
   myhrefoutput = myInput;
   
  }

public PageReference init()
{
    testing = UserInfo.getSessionId();
    Account acc = [Select ID from Account LIMIT 1];
    return NULL;
}

    public SecurityTesting()
    {
        try {    
            String lastName = apexpages.currentpage().getparameters().get('lastName');
            String searchContacts = 'SELECT Id FROM Contact WHERE ' +
                '(IsDeleted = false and Name like \'%' + lastName + '%\')';
            List<Contact> lstCcontacts = database.query('SELECT Id FROM Contact WHERE ' +
            'Name = \'' + ApexPages.currentpage().getparameters().get('lastName')+'\'');
            List<Contact> lstContacts = database.query (searchContacts);
            System.debug(lstContacts);
            } catch (Exception e) {
                throw new AuraHandledException(e.getMessage());
            }

        testing = 'This is a test';
        testing = UserInfo.getSessionId();
        if(apexpages.currentpage().getparameters().get('Id') !=null) 
        {
        String test = ApexPages.currentPage().getParameters().get('Id');
  	    relatedCaseVulns(test);
        taintedfunc(test, 'static');
        }
    	
    }
    
    public void relatedCaseVulns(String test)
    {
  		String newtest = '\'' + test  + '\''; 
        String gcase = 'Select Description from Case where ID=' + string.escapeSingleQuotes(newtest);
        List<Case> a = Database.Query(gcase);
        
  
    }
    
    public void taintedfunc (String v, 
    String f)
    
    {
        try
        {
        String gg = v;
        String gcase = 'Select Name, Description from Account where Name = \'John \' and ID=' + '\'' + v + '\'';
        List<Account> a = database.query (gcase);
        }catch (Exception e)
        {
        }
    }
    
    @RemoteAction
    public static string testing(ID testid)
    {
        if(Schema.sObjectType.Account.isAccessible()) 
        {
        List<Account> act = [Select ID, Name from Account LIMIT 1];
        if(testid == null){
            if (Schema.sObjectType.Account.isDeletable())
            {
                delete (act);
            }
            
        }
        
            
        }
        return testid;
       
    }
    
     @RemoteAction
    public static string testings(ID testid)
    {
        if(Account.sObjectType.getDescribe().isDeletable()){} 
        List<Account> act = [Select ID, Name from Account LIMIT 1];
        if(testid == null){delete (act);}
        return testid;
       
    }

    @AuraEnabled
    public static List<Contact> getdeletedContacts(String lastName)
    {
        try {    
            String search = '%' + lastName;
        String searchContacts = 'SELECT Id FROM Contact WHERE ' +
            '(IsDeleted = false and Name like ' + search + '%\')';
        List<Contact> lstContacts = database.query (searchContacts);
        return lstContacts;
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
    
    @AuraEnabled
    public static string saveContact(String firstName, String lastName, String email, String phone){
        try {
            Contact newContact = new Contact();
            newContact.FirstName = firstName;
            newContact.LastName = lastName;
            newContact.Email = email;
            newContact.Phone = phone;
            if(Schema.getGlobalDescribe().get('Contact').getDescribe().isCreateable())
            {
                insert newContact;
            }
            return 'success';
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

}