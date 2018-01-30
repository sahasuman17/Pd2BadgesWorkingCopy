public class MyController {

    private final Account account;

    public MyController() {
        account = [SELECT Id, Name, Site FROM Account 
                   WHERE Id = :ApexPages.currentPage().getParameters().get('id')];
    }

    public Account getAccount() {
    	//Comment for DEV release
        return account;
    }

    public PageReference save() {
        update account;
        return null;
    }
}