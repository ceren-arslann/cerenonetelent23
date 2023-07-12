*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZOT_10_T_PILTSM.................................*
DATA:  BEGIN OF STATUS_ZOT_10_T_PILTSM               .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZOT_10_T_PILTSM               .
CONTROLS: TCTRL_ZOT_10_T_PILTSM
            TYPE TABLEVIEW USING SCREEN '0001'.
*.........table declarations:.................................*
TABLES: *ZOT_10_T_PILTSM               .
TABLES: ZOT_10_T_PILTSM                .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
