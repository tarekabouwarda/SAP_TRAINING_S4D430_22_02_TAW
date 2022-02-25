@AbapCatalog.sqlViewName: 'ZI05CUST02'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Uebung 01 TAW'
@VDM.viewType: #BASIC

@ObjectModel: {
    transactionalProcessingEnabled: true,
    compositionRoot: true,
    writeActivePersistence: 'scustom',

    modelCategory: #BUSINESS_OBJECT,
    semanticKey: ['ID'],
    representativeKey: ['ID'],

    createEnabled: true,
    updateEnabled: true,
    deleteEnabled: true
}


define view ZI_05_CustomerTP_02 as select from ZI_05_Customer_02 
association [*] to ZI_05_BookingTP_2 as _Bookings on _Bookings.CustomerID = ZI_05_Customer_02.ID
{
    key ID,
    Name,
    Street,
    Postcode,
    City,
    Country,
    Discount,
    @ObjectModel.association. type: [#TO_COMPOSITION_CHILD]
    _Bookings
}
