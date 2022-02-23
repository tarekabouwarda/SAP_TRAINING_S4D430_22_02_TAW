@AbapCatalog.sqlViewName: 'ZC05PARTNERREV'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Uebung 08'
define view ZC_05_PartnerWithRevenue 
as select from ZI_05_CustomerWithRevenue {
    key CustomerID,
    'C' as type,
    Name,
    Street,
    Postcode,
    City,
    Country,
    TotalAmount,
    CurrencyCode,
    AverageDaysAhead 
 //   type as Type
}

union select from ZI_ABAP_AgencyWithRevenue {
key ID as CustomerID,
'A' as type,
Name,
Street,
Postcode,
City,
CountryCode as Country,
Amount as TotalAmount,
CurrencyCode,
DaysAhead as AverageDaysAhead
}
