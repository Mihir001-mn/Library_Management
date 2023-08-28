@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Book Master'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity ZI_BOOK_MASTER_1234 
as select from zbook_info_maste
association to ZI_CATEGORY_1234 as _Cate 
on $projection.Category = _Cate.Value

{
    key bookid as Bookid,
    key modelid as Modelid,
    book_name as BookName,
    author as Author,
    category as Category,
    available_books as AvailableBooks,
    total_books as TotalBooks,
    return_days as ReturnDays,
    @Semantics.amount.currencyCode : 'Currency'
    fine_amount as FineAmount,
    
    @Semantics.amount.currencyCode : 'Currency'
    price as Price,
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
    _Cate,
    _Cate.Description as CateDesc
    
    
}
