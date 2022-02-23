@AbapCatalog.sqlViewName: 'ZI05CUSTREV'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Uebung 07'
define view ZI_05_CustomerWithRevenue as select from ZI_05_BookingWithCustomer {
    key CustomerID,
//    key ConnectionID,
    Name,
    Street,
    Postcode,
    City,
    Country,
 //   currency_conversion( amount => Amount, source_currency => , target_currency => a3, exchange_rate_date => a4 )
    sum(NewPrice) as TotalAmount,
    CurrencyCode,
    avg(DaysAhead as abap.dec( 16, 2 )) as AverageDaysAhead
//    Discount,
//    DaysAhead
}
group by CustomerID, Name, Street, Postcode, City, Country, CurrencyCode
having sum(NewPrice) > 25
