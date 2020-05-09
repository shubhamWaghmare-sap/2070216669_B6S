CLASS zcl_fill_ztoriginal_tabl DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_fill_ztoriginal_tabl IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA: lt_contents TYPE TABLE OF ztoriginal.
    lt_contents = VALUE #( ( id = 'I517012' amount = 10  )
                           ( id = 'I517013' amount = 100  )
                           ( id = 'I517014' amount = 1000  ) ).
     MODIFY ztoriginal FROM TABLE @lt_contents.
     out->write( sy-dbcnt ).
  ENDMETHOD.

ENDCLASS.
