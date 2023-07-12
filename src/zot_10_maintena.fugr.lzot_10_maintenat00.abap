*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZOT_10_T_PITSMT.................................*
DATA:  BEGIN OF STATUS_ZOT_10_T_PITSMT               .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZOT_10_T_PITSMT               .
CONTROLS: TCTRL_ZOT_10_T_PITSMT
            TYPE TABLEVIEW USING SCREEN '0007'.
*...processing: ZOT_10_T_P_AILE.................................*
DATA:  BEGIN OF STATUS_ZOT_10_T_P_AILE               .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZOT_10_T_P_AILE               .
CONTROLS: TCTRL_ZOT_10_T_P_AILE
            TYPE TABLEVIEW USING SCREEN '0003'.
*...processing: ZOT_10_T_P_EGITM................................*
DATA:  BEGIN OF STATUS_ZOT_10_T_P_EGITM              .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZOT_10_T_P_EGITM              .
CONTROLS: TCTRL_ZOT_10_T_P_EGITM
            TYPE TABLEVIEW USING SCREEN '0009'.
*...processing: ZOT_10_T_P_MAST.................................*
DATA:  BEGIN OF STATUS_ZOT_10_T_P_MAST               .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZOT_10_T_P_MAST               .
CONTROLS: TCTRL_ZOT_10_T_P_MAST
            TYPE TABLEVIEW USING SCREEN '0001'.
*.........table declarations:.................................*
TABLES: *ZOT_10_T_PITSMT               .
TABLES: *ZOT_10_T_P_AILE               .
TABLES: *ZOT_10_T_P_EGITM              .
TABLES: *ZOT_10_T_P_MAST               .
TABLES: ZOT_10_T_PITSMT                .
TABLES: ZOT_10_T_P_AILE                .
TABLES: ZOT_10_T_P_EGITM               .
TABLES: ZOT_10_T_P_MAST                .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
