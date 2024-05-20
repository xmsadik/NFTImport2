  METHOD if_le_shp_save_doc_prepare~modify_fields.
    DATA lt_delete TYPE TABLE OF znft_t_dlvit_cus.
    IF sy-uname = 'CB9980000121'.
      SELECT * FROM i_deliverydocumentitem
               WHERE deliverydocument = @delivery_document_in-deliverydocument
               INTO TABLE @DATA(lt_lips) PRIVILEGED ACCESS.
      LOOP AT lt_lips INTO DATA(ls_lips).
        READ TABLE delivery_document_items_in INTO DATA(ls_temp) WITH KEY deliverydocument = ls_lips-deliverydocument
                                                                          deliverydocumentitem = ls_lips-deliverydocumentitem.
        IF sy-subrc <> 0.
          APPEND VALUE #( messagetype = 'E'
                          messagetext = |{ ls_lips-deliverydocumentitem } nolu kalem silinemez| ) TO messages.
        ENDIF.
      ENDLOOP.
    ENDIF.

  ENDMETHOD.