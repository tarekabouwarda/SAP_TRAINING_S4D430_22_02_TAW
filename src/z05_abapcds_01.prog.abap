*&---------------------------------------------------------------------*
*& Report z05_abapcds_01
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z05_abapcds_01.

PARAMETERS p_reiseb TYPE s_country .

DATA lt_reiseb type table of ZI_ABAP_AgencyWithRevenue.

"select from ZI_ABAP_AgencyWithRevenue

SELECT FROM ZI_ABAP_AgencyWithRevenue
FIELDS *
WHERE CountryCode  = @p_reiseb
INTO TABLE @lt_reiseb
UP TO 10 ROWS.

IF sy-subrc <> 0.
ENDIF.

cl_demo_output=>display( lt_reiseb ).
