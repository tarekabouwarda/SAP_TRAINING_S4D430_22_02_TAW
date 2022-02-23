@AbapCatalog.sqlViewName: 'ZI05BOOKINGWC'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Basic View BookingWithCustomer'
define view ZI_05_BookingWithCustomer
  as select from ZI_05_Booking
    inner join   ZI_05_Customer on ZI_05_Booking.CustomerID = ZI_05_Customer.CustomerID
{
  key ZI_05_Booking.CarrierID,
  key ZI_05_Booking.ConnectionID,
  key ZI_05_Booking.FlightDate,
  key ZI_05_Booking.BookingID,
      //  key ZI_05_Customer.CustomerID,
      ZI_05_Booking.CustomerID,
      ZI_05_Booking.LuggageWeight,
      ZI_05_Booking.LuggageWeightUnit,
      ZI_05_Booking.FlightClass,
      ZI_05_Booking.Amount,
      ZI_05_Booking.NewPrice,
      ZI_05_Booking.CurrencyCode,
      ZI_05_Booking.OrderDate,
      ZI_05_Booking.CounterID,
      ZI_05_Booking.AgencyNumber,
      ZI_05_Customer.Name,
      ZI_05_Customer.Street,
      ZI_05_Customer.Postcode,
      ZI_05_Customer.City,
      ZI_05_Customer.Country,
      ZI_05_Customer.Discount,
      ZI_05_Booking.DaysAhead as DaysAhead
      
}
//where
//  ZI_05_Booking.Cancelled <> 'X'
