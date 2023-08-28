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

  METHOD get_instance_features.

    READ ENTITIES OF zi_user_1234 IN LOCAL MODE
    ENTITY User
    FIELDS ( IsReturned ) WITH CORRESPONDING #( keys )
    RESULT DATA(Book_returned)
    FAILED failed.

    result =
    VALUE #(
    FOR book IN Book_returned
    LET returned = COND #( WHEN book-IsReturned = abap_true
                                 THEN if_abap_behv=>fc-o-disabled
                                 ELSE if_abap_behv=>fc-o-enabled )

                               IN ( %tky = book-%tky
                               %action-isReturned = returned

                                )

                                 ).



  ENDMETHOD.

  METHOD isReturned.

    MODIFY ENTITIES OF zi_user_1234 IN LOCAL MODE
    ENTITY User
    UPDATE
    FIELDS ( IsReturned )
    WITH VALUE #( FOR key IN keys ( %tky = key-%tky IsReturned = abap_true ) )


    FAILED failed
    REPORTED reported.

    READ ENTITIES OF zi_user_1234 IN LOCAL MODE
    ENTITY User
    ALL FIELDS WITH CORRESPONDING #( keys )
    RESULT DATA(userdata).

    result = VALUE #( FOR userrec IN userdata

   (  %tky = userrec-%tky %param = userrec )

    ).





  ENDMETHOD.

ENDCLASS.
