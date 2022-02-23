@AbapCatalog.sqlViewName: 'ZC05BOOKTP2'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Uebung 01 TAW'
define view ZC_05_BookingTP_2 
as select from ZC_05_CustomerTP 
//association [0..*] to ZC_00_FlightTP as _Flights on  _Flights.CarrierID    = ZI_00_ConnectionTP.CarrierID
//                                                   and _Flights.ConnectionID = ZI_00_ConnectionTP.ConnectionID
association [1] to ZC_05_CustomerTP as _Customer on _Customer.ID = ZC_05_CustomerTP.ID
{
    key ID,
    Name,
    Street,
    Postcode,
    City,
    Country,
    Discount,
    _Customer
}
