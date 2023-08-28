@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface view for student'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Metadata.allowExtensions: true
define view entity ZI_Student_book_1234 
as select from zuser_book
association to parent ZI_USER_INFO_1234 
as _student on $projection.UserId = _student.UserId
{
 
 key issueid as Issueid,
  bookid as Bookid,
 modelid as Modelid,
 user_id as UserId,
 issue_date as IssueDate,
 ex_return_date as ExReturnDate,
 ac_return_date as AcReturnDate,
 is_returned as IsReturned,
 @Semantics.amount.currencyCode: 'Currency'
 fine as Fine,
 fine_status as FineStatus,
 currency as Currency,
 @Semantics.user.createdBy: true
       created_by            as CreatedBy,
       @Semantics.systemDateTime.createdAt: true
       created_at            as CreatedAt,
       @Semantics.user.lastChangedBy: true
       last_changed_by       as LastChangedBy,
       @Semantics.systemDateTime.lastChangedAt: true
       last_changed_at       as LastChangedAt,
       @Semantics.systemDateTime.localInstanceLastChangedAt: true
       local_last_changed_at as LocalLastChangedAt,
 _student
    
}
