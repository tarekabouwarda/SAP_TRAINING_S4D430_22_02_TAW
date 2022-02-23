@AbapCatalog.sqlViewName: 'ZI05CUSTOMER02'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Uebung 01'
@VDM.viewType: #BASIC
define view ZI_05_Customer_02 as select from scustom {

    key id as ID,
    name as Name,
    street as Street,
    postcode as Postcode,
    city as City,
    country as Country,
    discount as Discount
}
