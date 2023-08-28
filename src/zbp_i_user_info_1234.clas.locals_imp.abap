CLASS lhc_bookissued DEFINITION INHERITING FROM cl_abap_behavior_handler.

  PRIVATE SECTION.

    METHODS updateExReturnDate FOR DETERMINE ON SAVE
      IMPORTING keys FOR BookIssued~updateExReturnDate.

ENDCLASS.

CLASS lhc_bookissued IMPLEMENTATION.

  METHOD updateExReturnDate.

  Data : Rday type zdereturn_days_99,
         id type zdebookid_99,
         idate type zdeissue_date_99.

*
*
*
*
*
Read ENTITIES OF ZI_USER_INFO_1234 in LOCAL MODE
ENTITY BookIssued
FIELDS ( IssueDate  ) with CORRESPONDING #( keys )
RESULT Data(BookIssueDate).

loop at BookIssueDate into Data(BID).
idate = BID-IssueDate.
idate += 10.

MODIFY ENTITIES OF ZI_USER_INFO_1234 in LOCAL MODE
ENTITY BookIssued
UPDATE
FIELDS ( ExReturnDate )
with VALUE #(  ( %tky = BID-%tky ExReturnDate = idate ) )
REPORTED Data(modifyReported).
reported = CORRESPONDING #( Deep modifyReported ).

ENDLOOP.




  ENDMETHOD.

ENDCLASS.

CLASS lhc_UserData DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR UserData RESULT result.
    METHODS get_instance_features FOR INSTANCE FEATURES
      IMPORTING keys REQUEST requested_features FOR userdata RESULT result.

ENDCLASS.

CLASS lhc_UserData IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD get_instance_features.
  ENDMETHOD.

ENDCLASS.
