       IDENTIFICATION DIVISION.
       PROGRAM-ID. TEMPODECASA.
      ******************************************************
      ***   AREA DE COMENTARIOS - REMARKS
      ***   OBJETIVO: PROGRAMA QUE CALCULA TEMPO DE CASA
      ***   AUTOR: JULIANA SILVA SOARES
      ***   DATA : 27/12/2022
      ******************************************************

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
             DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOME PIC X(30) VALUE SPACES.
       77 WRK-ANOENTRADA PIC 9(04) VALUE ZEROS.
       77 WRK-SALARIO PIC 9(06)V99 VALUE ZEROS.
       77 WRK-AUMENTO PIC 9(03)V99 VALUE ZEROS.
       77 WRK-TEMPOCASA PIC 9(02) VALUE ZEROS.
       77 WRK-TEMPODECASA PIC 9(02) VALUE ZEROS.
       01 WRK-DATASISTEMA.
       02 WRK-DATAANO PIC 9(04).
       02 WRK-DATAMES PIC 9(02).
       02 WRK-DATADIA PIC 9(02).

       PROCEDURE DIVISION.
       0000-PRINCIPAL.
            PERFORM 0100-INICIAR.
            PERFORM 0200-PROCESSAR.
            PERFORM 0300-FINALIZAR.
            STOP RUN.

       0100-INICIAR.
           ACCEPT WRK-DATASISTEMA FROM DATE YYYYMMDD.
           DISPLAY 'NOME DO FUNCIONARIO: '.
             ACCEPT WRK-NOME.
           DISPLAY 'ANO DE ENTRADA NA EMPRESA: '.
             ACCEPT WRK-ANOENTRADA.
           DISPLAY 'SALARIO ATUAL: '
             ACCEPT WRK-SALARIO.
       0200-PROCESSAR.
               COMPUTE WRK-TEMPOCASA = WRK-DATAANO - WRK-ANOENTRADA.
               EVALUATE WRK-TEMPOCASA
                 WHEN 0 THRU 1
                   COMPUTE WRK-AUMENTO = 0
                 WHEN 2 THRU 5
                   COMPUTE WRK-AUMENTO = WRK-SALARIO * 0,05
                 WHEN 6 THRU 15
                   COMPUTE WRK-AUMENTO = WRK-SALARIO * 0,10
                 WHEN OTHER
                   COMPUTE WRK-AUMENTO = WRK-SALARIO * 0,15
               END-EVALUATE.
       0300-FINALIZAR.
             DISPLAY 'TEMPO DE CASA: ' WRK-TEMPOCASA ' ANO(S).'.
             DISPLAY 'AUMENTO SALARIO DE: R$' WRK-AUMENTO.
