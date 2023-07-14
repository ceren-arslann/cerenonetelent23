*&---------------------------------------------------------------------*
*& Report zot_10_p_twitter
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zot_10_p_twitter.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
  PARAMETERS: p_twid TYPE c LENGTH 2,
              p_twit TYPE c LENGTH 256.
SELECTION-SCREEN END OF BLOCK b1.

SELECTION-SCREEN BEGIN OF BLOCK b2 WITH FRAME TITLE TEXT-002.

  PARAMETERS: p_twat  RADIOBUTTON GROUP g1 DEFAULT 'X' USER-COMMAND g1,
              p_twdgs RADIOBUTTON GROUP g1,
              p_tsil  RADIOBUTTON GROUP g1,
              p_tgstr RADIOBUTTON GROUP g1.

SELECTION-SCREEN END OF BLOCK b2.

DATA lt_tweet_modify TYPE TABLE OF zot_10_t_tweetid.

START-OF-SELECTION.

  IF

      p_twid = space
      AND  p_twat = 'X'
      OR p_twid = space
      AND p_twdgs = 'X'
      OR p_twid = space
      AND p_tsil = 'X'.


    MESSAGE 'TWEET ID GİRİLMESİ ZORUNLU!' TYPE 'I'.

  ELSE.

    CASE 'X'.

      WHEN p_twat.

        TRY.

            APPEND VALUE #(   twitterid = p_twid
                    tweet = p_twit ) TO lt_tweet_modify.
            INSERT zot_10_t_tweetid  FROM TABLE lt_tweet_modify.
          CATCH cx_sy_open_sql_db.
            cl_demo_output=>display( 'bu id var farklı giriniz.' ).
        ENDTRY.


      WHEN p_twdgs.
        UPDATE zot_10_t_tweetid SET tweet = p_twit
     WHERE twitterid = p_twid.


      WHEN p_tsil.

        DELETE FROM zot_10_t_tweetid  WHERE twitterid = p_twid.

        COMMIT WORK AND WAIT.

      WHEN p_tgstr.
        SELECT tweet
     FROM zot_10_t_tweetid
        INTO TABLE @DATA(abapitter).
        cl_demo_output=>display( abapitter ).
    ENDCASE.

  ENDIF.
