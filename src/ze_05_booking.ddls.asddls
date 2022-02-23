@AbapCatalog.sqlViewAppendName: 'ZE05BOOK'
@EndUserText.label: 'Uebung 12 TAW'
extend view ZI_05_Booking with ZE_05_Booking 
//  association [*] to sbook as _Bookings on  _Bookings.carrid = Flight.carrid
//                                        and _Bookings.connid = Flight.connid
//                                        and _Bookings.fldate = Flight.fldate

association [*] to stravelag as _TravelAgency on _TravelAgency.agencynum = sbook.agencynum
{
    sbook.custtype as CustomerType,
    sbook.smoker as IsSmoker,
   _TravelAgency
}
