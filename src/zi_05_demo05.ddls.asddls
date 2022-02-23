@AbapCatalog.sqlViewName: 'ZI05DEMO05'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Demo 05: Arithmetic operations'
define view ZI_05_Demo05
  as select from sflight
{
  seatsmax                           as SeatsMaxE,
  seatsmax_b                         as SeatsMaxB,
  seatsmax_f                         as SeatsMaxF,
  seatsocc                           as SeatsOccupiedE,
  seatsmax + seatsmax_b + seatsmax_f as TotalSeatsMax,
  seatsmax - seatsocc                as FreeSeatsE,
  price                              as OldPrice,
  price * 2                          as DoublePrice,
  cast (price as abap.fltp) * 1.1    as NewPrice,
  ( cast(seatsocc as abap.fltp) / cast (seatsmax as abap.fltp) ) * 100.0 as OccupancyRate,
//  cast(1.1 as abap.dec( 16, 2 )) as Decimal --> vom fltp kann man nicht in einen anderen Datentyp casten
'LH ' as Char1,
cast('LH' as s_carr_id) as CarrierId

}
