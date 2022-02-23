@AbapCatalog.sqlViewName: 'ZI05DEMO03'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Basic View Demo 03'
define view ZI_05_Demo_03 as select from sflight {
key mandt as Mandt,
key carrid as Carrid,
key connid as Connid,
key fldate as Fldate,
@Semantics.amount.currencyCode: 'Currency'
price as Price,
currency as Currency,
planetype as Planetype,
seatsmax as Seatsmax,
seatsocc as Seatsocc,
paymentsum as Paymentsum,
seatsmax_b as SeatsmaxB,
seatsocc_b as SeatsoccB,
seatsmax_f as SeatsmaxF,
seatsocc_f as SeatsoccF
}

//@Semantics.amount.currencyCode: 'Currency'
//@Semantics.quantitiy.unitOfMeasure: '<Feld>'
