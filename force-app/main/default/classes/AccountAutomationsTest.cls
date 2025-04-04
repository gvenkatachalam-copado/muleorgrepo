@IsTest
private class AccountAutomationsTest {
    
    @isTest static void testDefaultDescription(){
        // Test when description is null
        Account acc = new Account(Name = 'Test Account');
        acc = AccountAutomations.setDefaultDescription(acc);
        System.assertEquals('Default description', acc.Description, 'Description should be set to default when null');
        
        // Test when description is not null
        acc.Description = 'Custom Description';
        acc = AccountAutomations.setDefaultDescription(acc);
        System.assertEquals('Custom Description', acc.Description, 'Description should not change when already set');
    }
    
    @isTest static void testDefaultBillingAddress(){
        Account acc = new Account(Name = 'Test Account');
        acc = AccountAutomations.setDefaultBillingAddress(acc);
        System.assertEquals('123 Main Street', acc.BillingStreet, 'Billing Street should be set');
        System.assertEquals('San Francisco', acc.BillingCity, 'Billing City should be set');
        System.assertEquals('CA', acc.BillingState, 'Billing State should be set');
        System.assertEquals('94105', acc.BillingPostalCode, 'Billing PostalCode should be set');
        System.assertEquals('USA', acc.BillingCountry, 'Billing Country should be set');
    }
    
    @isTest static void testDefaultShippingAddress(){
        Account acc = new Account(Name = 'Test Account');
        acc = AccountAutomations.setDefaultShippingAddress(acc);
        System.assertEquals('123 Main Street', acc.ShippingStreet, 'Shipping Street should be set');
        System.assertEquals('San Francisco', acc.ShippingCity, 'Shipping City should be set');
        System.assertEquals('CA', acc.ShippingState, 'Shipping State should be set');
        System.assertEquals('94105', acc.ShippingPostalCode, 'Shipping PostalCode should be set');
        System.assertEquals('USA', acc.ShippingCountry, 'Shipping Country should be set');
    }
    
    @isTest static void testDefaultPhone(){
        // Test when phone is null
        Account acc = new Account(Name = 'Test Account');
        acc = AccountAutomations.setDefaultPhone(acc);
        System.assertEquals('(555) 555-5555', acc.Phone, 'Phone should be set to default when null');
        
        // Test when phone is not null
        acc.Phone = '(999) 999-9999';
        acc = AccountAutomations.setDefaultPhone(acc);
        System.assertEquals('(999) 999-9999', acc.Phone, 'Phone should not change when already set');
    }
    
    @isTest static void testCreateAccountWithDefaults(){
        Test.startTest();
        Account acc = AccountAutomations.createAccountWithDefaults('Test Account');
        Test.stopTest();
        
        System.assertEquals('Test Account', acc.Name, 'Account name should be set');
        System.assertEquals('Default description', acc.Description, 'Description should be set');
        System.assertEquals('123 Main Street', acc.BillingStreet, 'Billing Street should be set');
        System.assertEquals('(555) 555-5555', acc.Phone, 'Phone should be set');
    }
}