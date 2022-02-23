@AbapCatalog.sqlViewName: 'ZI05BOOKTP2'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Uebung 01 TAW'
define view ZI_05_BookingTP_2 as select from ZI_05_Booking_2 {
    key CarrierID,
    key ConnectionID,
    key FlightDate,
    key BookingID,
    Class,
    OrderDate,
    CustomerID
}
