public class AccountAutomations {
    public static Account setDefaultDescription(Account a){
        if (a.Description != null) return a;
        else {
            a.Description = 'Default description';
            return a;
        }
    }
    
    public static Account setDefaultBillingAddress(Account a){
        a.BillingStreet = '123 Main Street'; 
        a.BillingCity = 'San Francisco';
        a.BillingState = 'CA';
        a.BillingPostalCode = '94105';
        a.BillingCountry = 'USA';
        return a;
    }
    
    public static Account setDefaultShippingAddress(Account a){
        a.ShippingStreet = '123 Main Street'; 
        a.ShippingCity = 'San Francisco';
        a.ShippingState = 'CA';
        a.ShippingPostalCode = '94105';
        a.ShippingCountry = 'USA';
        return a;
    }
    
    public static Account setDefaultPhone(Account a) {
        if(a.Phone == null) {
            a.Phone = '(555) 555-5555';
        }
        return a;
    }
    
    public static Account createAccountWithDefaults(String accountName) {
        Account a = new Account(Name = accountName);
        a = setDefaultDescription(a);
        a = setDefaultBillingAddress(a);
        a = setDefaultShippingAddress(a);
        a = setDefaultPhone(a);
        return a;
    }
}