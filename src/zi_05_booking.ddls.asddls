@AbapCatalog.sqlViewName: 'ZI05BOOKING'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Uebung 02 TAW'
define view ZI_05_Booking
  as select from sbook
{
      //key mandt as Mandt,
  key carrid     as CarrierID, //ja
  key connid     as ConnectionID, //ja
  key fldate     as FlightDate, //ja
  key bookid     as BookingID, //ja
      customid   as CustomerID, //ja
//      @Semantics.quantitiy.unitOfMeasure: 'LuggageWeightUnit'
@Semantics.quantity.unitOfMeasure: 'LuggageWeightUnit'
      luggweight as LuggageWeight, //ja
      wunit      as LuggageWeightUnit, //ja
      class      as FlightClass, //ja
      forcuram   as Amount, //ja
@Semantics.amount.currencyCode: 'CurrencyCode'      
      forcurkey  as CurrencyCode, //ja
      order_date as OrderDate, //ja
      counter    as CounterID, //ja
      agencynum  as AgencyNumber, //ja
      cancelled as Cancelled,
      @EndUserText.label: 'Flight Class'
      case when class = 'Y' then 'Economy'
      when class = 'C' then 'Business'
       when class = 'F' then 'First'
       else class
       end as NewClass,
       
      
   currency_conversion(
   amount => forcuram,
   source_currency => forcurkey,
   round => '',
   target_currency => cast('USD' as abap.cuky),
   exchange_rate_date => fldate )                 as NewPrice,
     cast('USD' as abap.cuky)                        as NewCurrency,
     
   dats_days_between(order_date, fldate) as DaysAhead
}
where cancelled <> 'X'
