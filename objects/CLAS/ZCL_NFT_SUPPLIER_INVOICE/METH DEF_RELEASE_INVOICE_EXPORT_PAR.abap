  METHOD def_release_invoice_export_par.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_complex_type        TYPE REF TO /iwbep/if_v4_pm_cplx_type,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_complex_type = mo_model->create_complex_type_by_struct(
                                    iv_complex_type_name      = 'RELEASE_INVOICE_EXPORT_PAR'
                                    is_structure              = VALUE tys_release_invoice_export_par( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_complex_type->set_edm_name( 'ReleaseInvoiceExportParameters' ) ##NO_TEXT.


    lo_primitive_property = lo_complex_type->get_primitive_property( 'SUCCESS' ).
    lo_primitive_property->set_edm_name( 'Success' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_scale_floating( ).

  ENDMETHOD.