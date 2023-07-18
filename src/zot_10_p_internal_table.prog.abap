*&---------------------------------------------------------------------*
*& Report zot_10_p_internal_table
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_10_p_internal_table.


data gt_materia type table of zot_00_t_materia.

select matnr,
       maktx,
       matkl,
       menge,
       meins
from zot_00_t_materia into table @data(gt_materiaa).

data gt_material type table of zot_00_t_materia.

gt_material = value #( base gt_material

                       ( matnr = '000000000000000011'
                         maktx = 'eyeliner'
                         matkl = 'C'
                         menge = 2
                         meins = 'ST' )

                       ( matnr = '000000000000000012'
                         maktx = 'rimel'
                         matkl = 'C'
                         menge = 4
                         meins = 'ST' )

                       ( matnr = '000000000000000013'
                         maktx = 'concealer'
                         matkl = 'C'
                         menge = 10
                         meins = 'ST' )

                       ( matnr = '000000000000000014'
                         maktx = 'eyesshadow'
                         matkl = 'C'
                         menge = 5
                         meins = 'ST' )

                       ( matnr = '000000000000000015'
                         maktx = 'blush'
                         matkl = 'C'
                         menge = 30
                         meins = 'ST' )


                          ).


  loop at gt_materia into data(ls_mater).
  read table  gt_materia into data(ls_mater_read) with key meins = ls_mater-meins.

  if sy-subrc = 0.

  ls_mater-menge += 10.
    MODIFY gt_materia FROM ls_mater.
  ENDIF.
ENDLOOP.

data gt_mat type table of zot_00_t_materia.

APPEND LINES OF gt_materia TO gt_mat.
APPEND LINES OF gt_material TO gt_mat.


            types: begin of lty_collectt,
            matkl type zot_00_t_materia-matkl,
            menge type zot_00_t_materia-menge,
            end of lty_collectt.


   data gt_material_collectt type table of lty_collectt.
   data gs_material_collectt type lty_collectt.

loop at gt_materia into data(ls_materiall).
        gs_material_collectt = value #( menge = ls_materiall-menge
                                       matkl = ls_materiall-matkl ).

    collect gs_material_collectt into gt_material_collectt.


endloop.



cl_demo_output=>display( gt_material_collectt ).
