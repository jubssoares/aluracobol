       IDENTIFICATION DIVISION.
       PROGRAM-ID. MEDIAVENDAS.
      ******************************************************
      ***   AREA DE COMENTARIOS - REMARKS
      ***   OBJETIVO: CALCULAR A MÉDIA DE DOIS VALORES RECEBIDOS (VENDA)
      ***   AUTOR: JULIANA SOARES
      ***   DATA : 26/12/2022
      ******************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WRK-VENDA1    PIC 9(05)V99 VALUE ZEROS.
       77  WRK-VENDA2    PIC 9(05)V99 VALUE ZEROS.
       77  WRK-MEDIA     PIC 9(06)V99 VALUE ZEROS.
       77  WRK-MEDIA-ED  PIC $ZZ.ZZZ,99    VALUE ZEROS.
       PROCEDURE DIVISION.
           DISPLAY 'ENTRE COM 1a VENDA '.
           ACCEPT WRK-VENDA1.
            DISPLAY 'ENTRE COM 2a VENDA '.
            ACCEPT WRK-VENDA2.
              COMPUTE WRK-MEDIA = (WRK-VENDA1 + WRK-VENDA2) /  2.
            DISPLAY 'MEDIA VENDAS (SEM FORMATACAO) ' WRK-MEDIA.
              MOVE WRK-MEDIA TO WRK-MEDIA-ED.
            DISPLAY 'MEDIA VENDAS (COM FORMATACAO) ' WRK-MEDIA-ED.
           STOP RUN.
