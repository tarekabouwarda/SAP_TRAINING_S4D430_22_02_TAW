@AbapCatalog.sqlViewName: 'ZI05DEMO01' //Name der SQL-View, max 16 Zeichen, muss sich zur SQL View unterscheiden
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Demo 1: Projections'
/*Projections*/
define view ZI_05_Demo01
  as select from scarr
{
      //key mandt as Mandt,
  key carrid   as CarrierID,
      carrname as CarrierName,
      currcode as CurrencyCode,
      url      as Url
}
