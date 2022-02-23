@AbapCatalog.sqlViewName: 'ZI05DEMO02'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Basic View Demo 02'
define view ZI_05_Demo02 
as select from spfli as Connection
inner join sflight as Flight on Connection.carrid = Flight.carrid
                            and Connection.connid = Flight.connid
inner join scarr as Carrier on Carrier.carrid = Flight.carrid
{
    key Carrier.mandt as Mandt,
    key Carrier.carrid as CarrierCarrid,
 //   key Flight.mandt as Mandt,
    key Flight.carrid as FlightCarrid,
    key Flight.connid as FlightConnid,
    key Flight.fldate as FlightFldate,
//    key Connection.mandt as Mandt,
    key Connection.carrid as ConnectionCarrid,
    key Connection.connid as ConnectionConnid,
    Carrier.carrname as Carrname,
    Carrier.currcode as Currcode,
    Carrier.url as Url,
    Flight.price as Price,
    Flight.currency as Currency,
    Flight.planetype as Planetype,
    Flight.seatsmax as Seatsmax,
    Flight.seatsocc as Seatsocc,
    Flight.paymentsum as Paymentsum,
    Flight.seatsmax_b as SeatsmaxB,
    Flight.seatsocc_b as SeatsoccB,
    Flight.seatsmax_f as SeatsmaxF,
    Flight.seatsocc_f as SeatsoccF,
    Connection.countryfr as Countryfr,
    Connection.cityfrom as Cityfrom,
    Connection.airpfrom as Airpfrom,
    Connection.countryto as Countryto,
    Connection.cityto as Cityto,
    Connection.airpto as Airpto,
    Connection.fltime as Fltime,
    Connection.deptime as Deptime,
    Connection.arrtime as Arrtime,
    Connection.distance as Distance,
    Connection.distid as Distid,
    Connection.fltype as Fltype,
    Connection.period as Period
}
