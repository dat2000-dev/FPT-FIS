*&---------------------------------------------------------------------*
*& Report ZPG_LOOP_V1
*& CREATE BY: TRINh XUAN DAT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZPG_LOOP_V1.

*Problem: Given an integer n greater than 0, return the sum of integers from 1 to n
*Example:
*Input: 10
*Output: 25

PARAMETERS: Input TYPE I OBLIGATORY,
            Output TYPE I.
DATA: result TYPE I VALUE 0, tmp TYPE I, cmp TYPE I.

AT SELECTION-SCREEN.

cmp = Input.

DO cmp TIMES.
  tmp = Input mod 2.
  IF tmp = 1.
    result = result + Input.
  ENDIF.
  Input = Input - 1.
ENDDO.

Output = result.
