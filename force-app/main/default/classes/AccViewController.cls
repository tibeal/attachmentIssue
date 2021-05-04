public class AccViewController {
    public Account record {get;set;}

    public AccViewController(ApexPages.StandardController controller) {
        Id recordId = controller.getId();

        String query = 'SELECT ' +
            String.join( new List<String>(sObjecttype.Account.fields.getMap().keySet()), ',') +
        ' FROM Account WHERE Id = :recordId';

        record = Database.query(query);
    }
}