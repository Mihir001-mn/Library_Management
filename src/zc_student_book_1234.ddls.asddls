@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumtion view for user data'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Search.searchable: true
@Metadata.allowExtensions: true 
view entity ZC_STUDENT_BOOK_1234 
as projection on ZI_Student_book_1234 as BookIssued
{ 
@Search.defaultSearchElement: true
    key Issueid,
    Bookid,
    Modelid,
    UserId,
    IssueDate,
    ExReturnDate,
    AcReturnDate,
    IsReturned,
     @Semantics.amount.currencyCode: 'Currency'
    Fine,
    FineStatus,
    Currency,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    /* Associations */
    _student : redirected to parent ZC_USER_INFO_1234
}
