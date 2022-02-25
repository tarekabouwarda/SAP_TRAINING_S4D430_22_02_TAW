@AbapCatalog.sqlViewName: 'ZC05BOOKTP2'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Uebung 01 TAW'
@Metadata.allowExtensions: true
@ObjectModel: {
    createEnabled: true,
    updateEnabled: true,
    deleteEnabled: true
}

define view ZC_05_BookingTP_2 
as select from ZI_05_BookingTP_2 
//association [0..*] to ZC_00_FlightTP as _Flights on  _Flights.CarrierID    = ZI_00_ConnectionTP.CarrierID
//                                                   and _Flights.ConnectionID = ZI_00_ConnectionTP.ConnectionID
association [1] to ZC_05_CustomerTP as _Customer on _Customer.ID = ZI_05_BookingTP_2.CustomerID
{
key ZI_05_BookingTP_2.CarrierID,
key ZI_05_BookingTP_2.ConnectionID,
key ZI_05_BookingTP_2.FlightDate,
key ZI_05_BookingTP_2.BookingID,
ZI_05_BookingTP_2.Class,
ZI_05_BookingTP_2.OrderDate,
ZI_05_BookingTP_2.CustomerID,
@ObjectModel.association.type: [#TO_COMPOSITION_PARENT, #TO_COMPOSITION_ROOT]
_Customer
}
