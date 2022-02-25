class ZCL_I_A_ZCM_05_CUSTOMER definition
  public
  inheriting from /BOBF/CL_LIB_A_SUPERCL_SIMPLE
  final
  create public .

public section.

  methods /BOBF/IF_FRW_ACTION~EXECUTE
    redefinition .
protected section.
private section.
ENDCLASS.



CLASS ZCL_I_A_ZCM_05_CUSTOMER IMPLEMENTATION.


  method /BOBF/IF_FRW_ACTION~EXECUTE.

   DATA customers TYPE ZTI05_CUSTOMERTP_02.
    DATA message TYPE REF TO zcm_CUSTOMER.

    " Daten lesen
    io_read->retrieve(
      EXPORTING
        iv_node       = is_ctx-node_key
        it_key        = it_key
      IMPORTING
        eo_message    = eo_message
        et_data       = customers
        et_failed_key = et_failed_key ).

    " Nachrichten-Container erstellen
    IF eo_message IS NOT BOUND.
      eo_message = /bobf/cl_frw_factory=>get_message( ).
    ENDIF.

    " Daten sequentiell durchlaufen
    LOOP AT customers REFERENCE INTO DATA(customer).
    customer->discount = customer->discount * '1.05'.

*      IF connection->flighttype = 'X'.
*        connection->flighttype = ''.
*      ELSE.
*        connection->flighttype = 'X'.
*      ENDIF.

      " Nachricht erzeugen
      message = NEW zcm_customer(
        textid       = zcm_00_connection=>co_switch_successful
        severity     = zcm_00_connection=>co_severity_info
        i_discount = customer->discount ).
      eo_message->add_cm( message ).

      " Daten zurückschreiben
      io_modify->update(
        EXPORTING
          iv_node = is_ctx-node_key
          iv_key  = customer->key
          is_data = customer ).
    ENDLOOP.

  endmethod.
ENDCLASS.
