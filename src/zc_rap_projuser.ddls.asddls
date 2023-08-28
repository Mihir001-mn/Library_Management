@EndUserText.label: 'projection of USER Table'
@AccessControl.authorizationCheck:  #NOT_REQUIRED
@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity ZC_RAP_PROJUSER 
as projection on ZC_RAP_USER_1234 as user
{

    @Search.fuzzinessThreshold: 0.7   // In case there is a Spelling mistake
//    @ObjectModel.text.element: [ 'Modelid' ] //for combining two fields 
//    @UI.textArrangement: #TEXT_FIRST // to give th r preference to the combined field
  @Search.defaultSearchElement: true
    key Issueid  ,
    Modelid,
    UserId,
    IssueDate,
    ExReturnDate,
    AcReturnDate,
    IsReturned,
    Fine,
    FineStatus,
    Currency
}
