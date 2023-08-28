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


define root view entity ZC_USER_INFO_1234
    as projection on ZI_USER_INFO_1234 as UserData {
    
    @Search.defaultSearchElement: true
    @EndUserText.label: 'User Id'
    key UserId,
     @EndUserText.label: 'User Name'
    UserName,
     @EndUserText.label: 'User Email'
    Email,
     @EndUserText.label: 'User Password'
    Password,
     @EndUserText.label: 'User Type'
    UserType,
     @EndUserText.label: 'User Address'
    UserAddress,
     @EndUserText.label: 'Book Limit'
    BookLimit,
     @EndUserText.label: 'User Status'
    UserStatus,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_CALCULATE_1234'
    @EndUserText.label: 'Current Book Count'
    virtual CurrentBookCount : abap.int4 ,
    _BookIssued : redirected to composition child ZC_STUDENT_BOOK_1234
    
    
    
    
    
    
    }
