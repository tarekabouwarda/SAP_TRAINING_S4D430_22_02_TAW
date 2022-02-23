@AbapCatalog.sqlViewName: 'ZI05CUSTOMER'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Customer TAW'
define view ZI_05_Customer
  as select from scustom
{
      // key mandt as Mandt,
  key id       as CustomerID,
      concat_with_space(form, name, 1)     as Name, //ja
      form as Form,
      street   as Street,

      postcode as Postcode,
      city     as City,
      country  as Country,
      // region as Region,
      //telephone as Telephone,
      //custtype as Custtype,
      discount as Discount,
      
      cast (discount as abap.fltp) / 100.0 as DiscountFactor, 
      
      division(cast (discount as abap.int4), 100, 2) as DiscountDivision
      
      // langu as Langu,
      //  email as Email,
      // webuser as Webuser
//      concat_with_space(form, name, 1) as NewName
      
}
