@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumtion view for master'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity ZC_USER_1234 
as projection on ZI_USER_1234 as User
{   @Search.defaultSearchElement: true
    @EndUserText.label: 'Issue Id'
    key Issueid,
    
     @EndUserText.label: 'Book Id'
     BookID,
     @EndUserText.label: 'Model Id'
    
    Modelid,
     @EndUserText.label: 'User Id'
    UserId,
     @EndUserText.label: 'Issue Date'
    IssueDate,
     @EndUserText.label: 'Expected Return Date'
    ExReturnDate,
     @EndUserText.label: 'Actual Return Date'
    AcReturnDate,
     @EndUserText.label: 'Is Returned'
    IsReturned,
     @EndUserText.label: 'Fine'
     @Semantics.amount.currencyCode : 'Currency'
    Fine,
     @EndUserText.label: 'Fine Status'
    FineStatus,
     @EndUserText.label: 'Currency'
    Currency
}
