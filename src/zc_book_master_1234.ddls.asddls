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
define root view entity ZC_BOOK_MASTER_1234
 as projection on ZI_BOOK_MASTER_1234 as Book
{ 
   @Search.defaultSearchElement: true
    @EndUserText.label: 'Book Id'
    key Bookid,
    @EndUserText.label: 'Model Id'
    key Modelid,
    @EndUserText.label: 'Book Name'
    BookName,
    @EndUserText.label: 'Author'
    Author,
    @EndUserText.label: 'Category'
    Category,
    CateDesc,
    
    @EndUserText.label: 'Available Books'
    AvailableBooks,
    @EndUserText.label: 'Total Books'
    TotalBooks,
    @EndUserText.label: 'Return Days'
    ReturnDays,
     @Semantics.amount.currencyCode : 'Currency'
     @EndUserText.label: 'Fine Amount'
    FineAmount,
   
     @Semantics.amount.currencyCode : 'Currency'
     @EndUserText.label: 'Book Price'
    Price,
    @EndUserText.label: 'Currency'
    Currency,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt
}
