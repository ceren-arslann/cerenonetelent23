*&---------------------------------------------------------------------*
*& Report zot_10_calculator
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_10_calculator.

selection-SCREEN begin of block b2 with frame title text-001.
parameters: p_sayi1 type i,
            p_sayi2 type i.
selection-SCREEN end of block b2.

  selection-SCREEN begin of block b1 with frame title text-002.

parameters: p_toplam radiobutton group c1,
            p_cıkar radiobutton group c1,
            p_carpma radiobutton group c1,
            p_bolme radiobutton group c1.

            selection-SCREEN end of block b1.

   data: gv_sonuc type i.
          start-of-selection.

          case abap_true.

            when p_toplam.
            gv_sonuc = p_sayi1 + p_sayi2.
            when p_cıkar.
              gv_sonuc = p_sayi1 - p_sayi2.
            when p_carpma.
              gv_sonuc = p_sayi1 * p_sayi2.
            when p_bolme.
              gv_sonuc = p_sayi1 / p_sayi2.

          endcase.

          cl_demo_output=>write( gv_sonuc ).
           cl_demo_output=>display(  ).
