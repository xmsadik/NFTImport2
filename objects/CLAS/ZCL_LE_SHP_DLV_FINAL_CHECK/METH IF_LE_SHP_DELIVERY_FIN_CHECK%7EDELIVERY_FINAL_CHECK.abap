  METHOD if_le_shp_delivery_fin_check~delivery_final_check.
    IF sy-uname = 'CB9980000121'.
      IF delivery_document_items_in is initial.
        message = VALUE #( messagetype = 'E'
                         messagetext = |{ delivery_document_in-deliverydocument } nolu teslimat silinemez| ).
      ENDIF.
    ENDIF.
  ENDMETHOD.