       IDENTIFICATION DIVISION.
       PROGRAM-ID. INVESTIMENTOFINANCEIRO.
      ******************************************************
      ***   AREA DE COMENTARIOS - REMARKS
      ***   OBJETIVO: CALCULO DE UM INVESTIMENTO FINANCEIRO
      ***   AUTOR: JULIANA SOARES
      ***   DATA : 27/12/2022
      ******************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
             DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-VALOR      PIC 9(06)V99       VALUE ZEROS.
       77 WRK-MESES      PIC 9(03)          VALUE ZEROS.
       77 WRK-TAXAMES    PIC 9(02)          VALUE ZEROS.
       77 WRK-VALOR-ED   PIC ZZZ.ZZ9,99     VALUE ZEROS.
       PROCEDURE DIVISION.
       0100-INICIAR.
           DISPLAY 'VALOR INVESTIDO: '.
             ACCEPT WRK-VALOR.
           DISPLAY  'MESES DE APLICACAO: '
             ACCEPT WRK-MESES.
           DISPLAY 'TAXA MENSAL: '
             ACCEPT WRK-TAXAMES.
       0200-PROCESSAR.
            PERFORM WRK-MESES TIMES
              COMPUTE WRK-VALOR = WRK-VALOR * (WRK-TAXAMES / 100 + 1 )
            END-PERFORM.
       0300-FINALIZAR.
        MOVE WRK-VALOR TO WRK-VALOR-ED
         DISPLAY 'VALOR CORRIGIDO: R$' WRK-VALOR-ED.
         STOP RUN.
