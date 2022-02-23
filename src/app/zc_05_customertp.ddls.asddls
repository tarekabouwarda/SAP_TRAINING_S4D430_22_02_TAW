@AbapCatalog.sqlViewName: 'ZC05CUSTTP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Uebung01 TAW'
define view ZC_05_CustomerTP 
as select from ZI_05_CustomerTP_02 
//association [0..*] to ZC_00_FlightTP as _Flights on  _Flights.CarrierID    = ZI_00_ConnectionTP.CarrierID
//                                                   and _Flights.ConnectionID = ZI_00_ConnectionTP.ConnectionID

association to ZC_05_BookingTP_2 as _Bookings on _Bookings.ID = ZI_05_CustomerTP_02.ID

{
    key ID,
    Name,
    Street,
    Postcode,
    City,
    Country,
    Discount,
    _Bookings
}
