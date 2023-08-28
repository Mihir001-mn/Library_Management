CLASS zcl_calculate_1234 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_sadl_exit_calc_element_read.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_calculate_1234 IMPLEMENTATION.
  METHOD if_sadl_exit_calc_element_read~calculate.
data : lt_data type STANDARD TABLE OF ZC_USER_INFO_1234 with DEFAULT KEY,
       lv_count type i.

 lt_data = CORRESPONDING #( it_original_data ) .

 loop at lt_data ASSIGNING FIELD-SYMBOL(<lfs_ui>).
    select count( * )
    from zuser_book
    where user_id = @( <lfs_ui>-UserId )
    GROUP BY user_id
    into  @lv_count
    .
    ENDSELECT.
    <lfs_ui>-CurrentBookCount = lv_count .


 ENDLOOP.

 ct_calculated_data = CORRESPONDING #( lt_data ).

  ENDMETHOD.

  METHOD if_sadl_exit_calc_element_read~get_calculation_info.

  ENDMETHOD.

ENDCLASS.
