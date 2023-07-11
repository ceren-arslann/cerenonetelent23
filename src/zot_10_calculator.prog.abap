*&---------------------------------------------------------------------*
*& Report zot_10_calculator
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_10_calculator.

SELECTION-SCREEN BEGIN OF BLOCK b2 WITH FRAME TITLE TEXT-001.
  PARAMETERS: p_sayi1 TYPE i,
              p_sayi2 TYPE i.


SELECTION-SCREEN END OF BLOCK b2.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-002.

  PARAMETERS: p_toplam RADIOBUTTON GROUP c1,
              p_cıkar  RADIOBUTTON GROUP c1,
              p_carpma RADIOBUTTON GROUP c1,
              p_bolme  RADIOBUTTON GROUP c1.

SELECTION-SCREEN END OF BLOCK b1.

DATA: gv_sonuc TYPE i.

START-OF-SELECTION.



  CASE abap_true.

    WHEN p_toplam.
      gv_sonuc = p_sayi1 + p_sayi2.
    WHEN p_cıkar.
      gv_sonuc = p_sayi1 - p_sayi2.
    WHEN p_carpma.
      gv_sonuc = p_sayi1 * p_sayi2.
    WHEN p_bolme.
      gv_sonuc = p_sayi1 + p_sayi2.

  ENDCASE.

  TRY.
     gv_sonuc = p_sayi1 / p_sayi2.
  CATCH cx_sy_zerodivide.
      cl_demo_output=>write( |Sifira bölünemez.| ).
  ENDTRY.


  cl_demo_output=>write( gv_sonuc ).

  cl_demo_output=>display(  ).
