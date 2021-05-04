public class OppViewController {
    public Opportunity record {get;set;}
    public OppViewController(ApexPages.StandardController controller) {
        Id recordId = controller.getId();

        String query = 'SELECT ' +
            String.join( new List<String>(sObjecttype.Opportunity.fields.getMap().keySet()), ',') +
        ' FROM Opportunity WHERE Id = :recordId';

        record = Database.query(query);
    }
}
