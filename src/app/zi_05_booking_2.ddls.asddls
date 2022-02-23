@AbapCatalog.sqlViewName: 'ZI05BOOK2'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Uebung 01 TAW'
@VDM.viewType: #BASIC
define view ZI_05_Booking_2 as select from sbook {
    key carrid as CarrierID,
    key connid as ConnectionID,
    key fldate as FlightDate,
    key bookid as BookingID,
    class as Class,
    order_date as OrderDate,
    customid as CustomerID
    
}
