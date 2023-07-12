*&---------------------------------------------------------------------*
*& Report zot_10_ders_calismasi
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_10_ders_calismasi.

*if kullanımı

*data gv_langue type sy-langu.
*
* gv_langue = sy-langu.
*
* if
*
* gv_langue = 'T'.
*
* cl_demo_output=>write( |Merhaba Dünya| ).
*
* elseif
*
* gv_langue EQ 'E'.
*
*  cl_demo_output=>write( |HELLO WORLD| ).
*
*  ELSE.
*
*    cl_demo_output=>write( |dil bilmiyorum| ).
*
*  endif.
*
*  cl_demo_output=>display( ).

*data gv_num1 type i.
*    data  gv_num2 type i.
*
*      gv_num1 = 2.
*      gv_num2 = 5.
*
*      if
*      gv_num1 EQ gv_num2.
*      cl_demo_output=>write( |EŞİT| ).
*      elseif
*      gv_num1 GT gv_num2.
*      cl_demo_output=>write( |EŞİT DEĞİL| ).
*      elseif
*      gv_num1 LT gv_num2.
*       cl_demo_output=>write( |KÜÇÜK| ).
*      ELSE.
*
*      cl_demo_output=>write( |BULUNAMADI| ).
*
*     ENDIF.
*
*      cl_demo_output=>display( ).


*case kullanımı


*data: gv_langue type sy-langu.
*gv_langue = sy-langu.
*      case gv_langue.
*      when 'E'.
*      cl_demo_output=>write( |hello worl| ).
*      when 'T'.
*      cl_demo_output=>write( |Merhaba Dünya| ).
*      when others.
*      cl_demo_output=>write( |Başka dil bilmiyorum| ).
*      endcase.
*       cl_demo_output=>display( ).
*
*data: gv_name type string,
*      gv_surname type string.
*
*      gv_name = 'ece'.
*      gv_surname = 'arslan'.
*
*   case gv_name.
*
*     when 'ceren'.
*       case gv_surname.
*       when 'arslan'.
*            cl_demo_output=>write( |ceren arslan| ).
*       when others.
*            cl_demo_output=>write( |ceren arslan degilsin| ).
*       endcase.
*
*   when others.
*   cl_demo_output=>write( |sen ceren değilsin| ).
*   endcase.
*
*
*
*   cl_demo_output=>display( ).

"do kullanımı



*data: gv_text1 type char12.
*      gv_text1 = 'hello world'.
*
* data(gv_text2) = 'hello worlddddddd'.
* data(gv_bugun) = sy-datum.
*
* data(lv_num) = strlen( gv_text2 ).
*
* do lv_num TIMES.
* cl_demo_output=>write( sy-index ).
* ENDDO.
* cl_demo_output=>display( ).

*data count type i.
*
*count = 0.
*
*do 8 times.
*        count = count + 1.
*cl_demo_output=>write( count: ).
*enddo.
*cl_demo_output=>display( ).


*sırayla değerleri alacak once bir sonra 2 ...
*data: gv_num1 type i,
*      gv_num2 type i.
*
*      gv_num1 = 0.
*      gv_num2 = 0.
**her adımda num 1 1 artar
*      do 5 times.
*        gv_num1 = gv_num1 + 1.
*        cl_demo_output=>write( gv_num1: ).
**num1 ekrana yazar
**yeni döngünün her adımında num2 1 artar
*                   do 2 times.
*                   gv_num2 = gv_num2 + 1.
*                   cl_demo_output=>write( gv_num2 ).
*                   enddo.
*
*      enddo.
*      cl_demo_output=>display( ).
*2x5 den on satır ekrana yazar




*while kullanımı


*data gv_count type i.
*
*gv_count = 1.
*
*while gv_count < 10.
*
*cl_demo_output=>write( 'gv_count:' ).
*
*gv_count = gv_count + 1.
*
*endwhile.
*
*cl_demo_output=>display( ).


*WHILE lv_num > 0.
*  cl_demo_output=>write( sy-index ).
*  lv_num = lv_num - 1.
*ENDWHILE.




**********************************************************************************************************************
DATA: lv_number1 TYPE i VALUE 10,
      lv_number2 TYPE i VALUE 5.


DATA(lv_toplama) = lv_number1 + lv_number2.
DATA(lv_cikarma) = lv_number1 - lv_number2.
DATA(lv_carpma)  = lv_number1 * lv_number2.
DATA(lv_bolme)   = lv_number1 / lv_number2.

cl_demo_output=>write( |{ lv_number1 } + { lv_number2 } = { lv_toplama }| ).
cl_demo_output=>write( |{ lv_number1 } - { lv_number2 } = { lv_cikarma }| ).
cl_demo_output=>write( |{ lv_number1 } x { lv_number2 } = { lv_carpma }| ).
cl_demo_output=>write( |{ lv_number1 } / { lv_number2 } = { lv_bolme }| ).

cl_demo_output=>write( |Clear işleminden önce lv_bolme'nin değeri: { lv_bolme }| ).
CLEAR lv_bolme.
cl_demo_output=>write( |Clear işleminden sonra lv_bolme'nin değeri: { lv_bolme }| ).


lv_number2 = 0.

TRY.
    lv_bolme   = lv_number1 / lv_number2.
  CATCH cx_sy_zerodivide.
    cl_demo_output=>write( |Sıfıra bölme işlemi yapılamaz!| ).
  CATCH cx_sy_arithmetic_overflow.
    cl_demo_output=>write( |Aritmetik ovewflow| ).
ENDTRY.
cl_demo_output=>display( ).
