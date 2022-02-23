@AbapCatalog.sqlViewName: 'ZC05CUSTTP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Uebung01 TAW'
define view ZC_05_CustomerTP 
as select from ZI_05_CustomerTP_02 
//association [0..*] to ZC_00_FlightTP as _Flights on  _Flights.CarrierID    = ZI_00_ConnectionTP.CarrierID
//                                                   and _Flights.ConnectionID = ZI_00_ConnectionTP.ConnectionID

association [*] to ZC_05_BookingTP_2 as _Bookings on _Bookings.CustomerID = ZI_05_CustomerTP_02.ID

{
key ZI_05_CustomerTP_02.ID,
ZI_05_CustomerTP_02.Name,
ZI_05_CustomerTP_02.Street,
ZI_05_CustomerTP_02.Postcode,
ZI_05_CustomerTP_02.City,
ZI_05_CustomerTP_02.Country,
ZI_05_CustomerTP_02.Discount,
    _Bookings
}
