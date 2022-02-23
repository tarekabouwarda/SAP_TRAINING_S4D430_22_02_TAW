@AbapCatalog.sqlViewName: 'ZI05CUST02'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Uebung 01 TAW'
@VDM.viewType: #BASIC
define view ZI_05_CustomerTP_02 as select from ZI_05_Customer_02 {
    key ID,
    Name,
    Street,
    Postcode,
    City,
    Country,
    Discount
}
