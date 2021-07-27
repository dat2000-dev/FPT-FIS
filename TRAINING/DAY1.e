*&---------------------------------------------------------------------*
*& Report ZPG_DAY1
*& CREATE BY: TRINH XUAN DAT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZPG_DAY1.

PARAMETERS: S_A TYPE I DEFAULT '1',
            S_B TYPE I DEFAULT '1',
            PT TYPE ZDE_OPERATOR,
            RESULT TYPE P LENGTH 10 DECIMALS 2.
DATA res TYPE P LENGTH 10 DECIMALS 2.
*-------------------------------------------

AT SELECTION-SCREEN. " Dua ket qua ra man hinh nhap pramater de tien theo doi.

*-------------------------VERSION (CASE - WHEN) -----------------------
CASE PT.
  WHEN '+'.
    res = S_A + S_B.
  WHEN '-'.
    res = S_A - S_B.
  WHEN '*' or 'X' or 'x'.
    res = S_A * S_B.
  WHEN '/' or ':'.
    IF S_B = '0'.
      MESSAGE 'Mau so khong the bang 0!' TYPE 'I' DISPLAY LIKE 'E'.
    ENDIF.
    res = S_A / S_B.
  WHEN OTHERS.
    MESSAGE 'Khong ton tai toan tu!' TYPE 'I' DISPLAY LIKE 'E'.
ENDCASE.

RESULT = res.

*-------------------------VERSION (IF - ELSE) -----------------------
*IF PT = '+' or PT = '-' or PT = '*' or PT = '/' or PT = 'x' or PT = 'X' or PT = ':'.
*  IF PT = '/' or PT = ':'.
*    IF S_B = '0'.
*      MESSAGE 'Mau so khong the bang 0!' TYPE 'I' DISPLAY LIKE 'E'.
*      STOP.
*    ELSE.
*      res = S_A / S_B.
*    ENDIF.
*  ELSEIF PT = '+'.
*    res = S_A + S_B.
*  ELSEIF PT = '-'.
*    res = S_A - S_B.
*  ELSEIF PT = '*' or PT = 'x' or PT = 'X'.
*    res = S_A * S_B.
*   ENDIF.
*ELSE.
*  MESSAGE 'Khong ton tai phep tinh!' TYPE 'I' DISPLAY LIKE 'E'.
*  STOP.
*ENDIF.
*
*RESULT = res.


*------------------------------------
*$ Chú ý:
*2 chuong trinh co tinh tuong doi nhu nhau
*Uu tien chuong trinh 1 de khong mat tinh tong quan
*phong cach code ro rang ranh mach
*Nhung thu ban nen lam: Code trong 2p cho 1 chuong trinh, neu chua duoc hay luyen tap thay nhieu

