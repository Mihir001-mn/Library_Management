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

define root view entity ZC_USERDATAINFORMATION_1234 
as projection on ZUserdatainformation_1234 as UserInfo
{
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
    LastChangedAt
}
