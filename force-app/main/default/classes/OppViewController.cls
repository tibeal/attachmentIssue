public class OppViewController {
    public Opportunity record {get;set;}
    public OppViewController(ApexPages.StandardController controller) {
        String query = 'SELECT ' +
            String.join( new List<String>(sObjecttype.Opportunity.fields.getMap().keySet()), ',') +
        ' FROM Opportunity LIMIT 1';

        record = Database.query(query);
    }
}
