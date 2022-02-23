@AbapCatalog.sqlViewName: 'ZI05DEMO04'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Demo Literals'
define view ZI_05_Demo04
  as select from sbook
{
  bookid       as BookingID,
  'Hallo Welt' as String1,
  42           as Integer1,
  3.14         as FloatingPointNumber1,
  cancelled    as Cancelled,
  case cancelled
      when '' then 'Flug gebucht'
      when 'X' then 'Buchung storniert'
      else cancelled
      end      as CancelledText,
  class,
  luggweight,
  wunit,
  case when class = 'F' then ''
         when luggweight > 25 and wunit = 'KG' then 'X'
         else ''
         end   as ExcessLuggage
}
