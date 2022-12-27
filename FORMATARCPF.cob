      ******************************************************************
      * Author: Juliana Soares
      * Date: 27/12/2022
      * Purpose: Receber e formatar a saída de um
      *          CPF (Cadastro de Pessoas Físicas).
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. FORMATARCPF.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
             DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WRK-CPF    PIC X(11) VALUE ZEROS.
       77  WRK-CPF-ED PIC ZZZ.ZZZ.ZZ9/99.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           ACCEPT WRK-CPF.
           MOVE WRK-CPF TO WRK-CPF-ED.
           DISPLAY 'CPF ' WRK-CPF-ED.
            STOP RUN.
