*&---------------------------------------------------------------------*
*& Include zot_10_i_report_sel
*&---------------------------------------------------------------------*



TABLES: eban, ekpo.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
        select-options s_satno for eban-banfn.
        parameters: p_sattur type eban-bsart.

selection-screen end of block b1.

SELECTION-SCREEN BEGIN OF BLOCK b2 WITH FRAME TITLE TEXT-002.
        select-options s_sasno for ekpo-ebeln.
        parameters: p_sastur type ekpo-matkl.

selection-screen end of block b2.


SELECTION-SCREEN BEGIN OF BLOCK b3 WITH FRAME TITLE TEXT-003.
    PARAMETERS: r_sat RADIOBUTTON GROUP gr1,
                r_sas RADIOBUTTON GROUP gr1.
SELECTION-SCREEN END OF BLOCK b3.
