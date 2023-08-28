CLASS lhc_User DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR User RESULT result.
    METHODS isreturned FOR MODIFY
      IMPORTING keys FOR ACTION user~isreturned RESULT result.
      METHODS get_instance_features FOR INSTANCE FEATURES
      IMPORTING keys REQUEST requested_features FOR user RESULT result.

ENDCLASS.

CLASS lhc_User IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD isReturned.

  MODIFY ENTITIES OF ZC_RAP_USER_1234  in LOCAL MODE
  ENTITY User
  UPDATE
  FIELDS ( IsReturned )
  WITH VALUE #( For key in keys ( %tky = key-%tky IsReturned = abap_true ) )

  Failed failed
  reported reported.


  ENDMETHOD.

  method get_instance_features.

  ENDMETHOD.

ENDCLASS.
