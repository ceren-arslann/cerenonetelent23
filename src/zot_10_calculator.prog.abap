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

 CASE 'X'.
    WHEN p_toplam.
      cl_demo_output=>display( |Sonuç: { p_sayi1 + p_sayi2 }| ).
    WHEN p_cikar.
      cl_demo_output=>display( |Sonuç: { p_sayi1 - p_sayi2 }| )..
    WHEN p_carpma.
      cl_demo_output=>display( |Sonuç: { p_sayi1 * p_sayi2 }| ).


    WHEN p_bolme.

      TRY.
          cl_demo_output=>display( |Sonuç: { p_sayi1 / p_sayi2 }| ).
        CATCH cx_sy_zerodivide.
          cl_demo_output=>display( 'Sıfıra bölünemez.' ).

      ENDTRY.

  ENDCASE.


*yaptığım bazı denemeler
**********************************************************************************
*SELECTION-SCREEN BEGIN OF BLOCK b2 WITH FRAME TITLE TEXT-001.

*PARAMETERS: pa_sayi1 TYPE i,
*pa_sayi2 TYPE i.
*SELECTION-SCREEN END OF BLOCK b2.
*SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-002.

**PARAMETERS: pa_toplam RADIOBUTTON GROUP c1,
*              pa_cıkar  RADIOBUTTON GROUP c1,
*              pa_carpma RADIOBUTTON GROUP c1,
*              pa_bolme  RADIOBUTTON GROUP c1.

*SELECTION-SCREEN END OF BLOCK b1.




*DATA gv_sonuc TYPE i.
*gv_ıslem TYPE c LENGTH 1,
*IF ( pa_toplam = ‘+’ OR
*pa_cıkar = ‘-‘ OR
*pa_carpma = ‘*’ OR
*pa_bolme= ‘/’ AND pa_sayi2 <> 0 ).
*
*CASE pa_ıslem.


*WHEN ‘+’.
*gv_sonuc = gv_sayi1 + pa_sayi2.
*WHEN ‘-‘.
*gv_sonuc = gv_sayi1 – pa_sayi2.
*WHEN ‘*’.
*gv_sonuc = gv_sayi1 * pa_sayi2.
*WHEN ‘/’.
*gv_sonuc = gv_sayi1  / pa_sayi2.


*ENDCASE.

*cl_demo_output=>write( gv_sonuc ).

*ELSEIF pa_ıslem = ‘/’ AND pa_sayi2 = 0.

*WRITE ‘No division by zero!’.
*ELSE.

*WRITE ‘Invalid operator!’.

*ENDIF.

********************************************************************************
*  CASE abap_true.
*
*    WHEN p_toplam.
*      gv_sonuc = p_sayi1 + p_sayi2.
*    WHEN p_cıkar.
*      gv_sonuc = p_sayi1 - p_sayi2.
*    WHEN p_carpma.
*      gv_sonuc = p_sayi1 * p_sayi2.
*    WHEN p_bolme.
*      gv_sonuc = p_sayi1 + p_sayi2.
*
*  ENDCASE.
*
*  TRY.
*     gv_sonuc = p_sayi1 / p_sayi2.
*  CATCH cx_sy_zerodivide.
*      cl_demo_output=>write( |Sifira bölünemez.| ).
*  ENDTRY.
*
*
*  cl_demo_output=>write( gv_sonuc ).
*
*  cl_demo_output=>display(  ).
