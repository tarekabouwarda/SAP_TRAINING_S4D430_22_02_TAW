*&---------------------------------------------------------------------*
*& Report z05_demo_01
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z05_demo_01.

PARAMETERS p_cuco TYPE s_currcode.

DATA carriers TYPE TABLE OF zi_05_demo01.

SELECT FROM zi_05_demo01
FIELDS carrierid, carriername, currencycode, url
WHERE currencycode = @p_cuco
ORDER BY PRIMARY KEY
INTO TABLE @carriers
UP TO 10 ROWS.

IF sy-subrc <> 0.
ENDIF.

cl_demo_output=>display( carriers ).
