@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'User Book Information'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}

define root view entity ZI_USER_1234
 as select from zuser_book
 
{
    key issueid as Issueid,
     bookid as BookID,
    
modelid as Modelid,
user_id as UserId,
issue_date as IssueDate,
ex_return_date as ExReturnDate,
ac_return_date as AcReturnDate,
is_returned as IsReturned,
@Semantics.amount.currencyCode : 'Currency'
fine as Fine,
fine_status as FineStatus,
currency as Currency


}
