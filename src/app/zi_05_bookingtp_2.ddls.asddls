@AbapCatalog.sqlViewName: 'ZI05BOOKTP2'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Uebung 01 TAW'

@ObjectModel: {

    writeActivePersistence: 'ZV05BOOKING',

//    modelCategory: #BUSINESS_OBJECT,
    semanticKey: ['CustomerID'],
    representativeKey: ['CustomerID'],

    createEnabled: true,
    updateEnabled: true,
    deleteEnabled: true
}



define view ZI_05_BookingTP_2 as select from ZI_05_Booking_2 
association [1..1] to ZI_05_CustomerTP_02 as _Customer on _Customer.ID = ZI_05_Booking_2.CustomerID

{

    key CarrierID,
    key ConnectionID,
    key FlightDate,
    key BookingID,
    Class,
    OrderDate,
    CustomerID,
    @ObjectModel.association.type: [#TO_COMPOSITION_PARENT, #TO_COMPOSITION_ROOT]
    _Customer
}
