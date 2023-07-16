*&---------------------------------------------------------------------*
*& Report zot_10_p_zaman
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_10_p_zaman.


DATA gs_zaman TYPE zot_10_t_zmn.
SELECT-OPTIONS: s_zmnid FOR gs_zaman-zamanid.

START-OF-SELECTION.

  DATA: lv_tarih1   TYPE date,
        lv_tarih2   TYPE date,
        lv_zaman1   TYPE time,
        lv_zaman2   TYPE time,
        lv_yıl      TYPE i,
        lv_ay       TYPE i,
        lv_gun      TYPE i,
        lv_saniye   TYPE i,
        lv_gun_deff TYPE i.

  SELECT baslngc_trh,
  baslngc_saati,
   bitis_trh,
   bitis_saati

  FROM zot_10_t_zmn WHERE zamanid  IN @s_zmnid INTO TABLE @DATA(lt_zaman).

  LOOP AT lt_zaman INTO DATA(ls_tarih).

        lv_tarih1 = ls_tarih-baslngc_trh.
        lv_tarih2 = ls_tarih-bitis_trh.
        lv_zaman1 = ls_tarih-baslngc_saati.
        lv_zaman2 = ls_tarih-bitis_trh.

   lv_gun_deff = CONV int2( lv_tarih2 - lv_tarih1 ).

  lv_yıl = lv_gun_deff div 365.
  lv_gun_deff = lv_gun_deff mod 365.

  lv_ay = lv_gun_deff div 30.
  lv_gun = lv_gun_deff.

endloop.
*bu kisimda callfunction işlemi yapmak lazımmış , analamadan yapmak istemedim.************************************



*    DATA(lv_s) = lv_saniye.
*    DATA(lv_dk) = lv_s DIV 60.
*    DATA(lv_saat) = lv_s DIV 3600.
*
*    IF sy-index MOD 6 = 0.
*      NEW-LINE.
*    ENDIF.
*
*    IF lv_yıl NE 0.
*      WRITE: |{ lv_yıl  } YIL|.
*    ENDIF.
*    IF lv_ay NE 0.
*      WRITE: |{ lv_ay  } AY|.
*    ENDIF.
*    IF lv_gun NE 0.
*      WRITE: |{ lv_gun } GÜN|.
*    ENDIF.
*    IF lv_saat NE 0.
*      WRITE: |{ lv_saat } SAAT|.
*    ENDIF.
*    IF lv_dk NE 0.
*      WRITE: |{ lv_dk } DAKİKA|.
*    ENDIF.
*    IF lv_s NE 0.
*      WRITE: |{ lv_s } SANİYE|.
*    ENDIF.
*
*  ENDLOOP.
