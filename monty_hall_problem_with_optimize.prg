*FOXPRO code
*Monty_Hall_problem test
*autor alex; alexeyzapolskiy@gmail.com
*24.06.2024

CLEAR ALL 
LOCAL lni, lnw, lnv, lnTrue, lnTryings, lnQty
*lni - ���������� �����
*lnw - ����� �����, �� ������� ����
*lnv - ��� �����
*lnTrue - ���������� ����������
*lnTryings - ���������� �������
*lnQty - ���������� ������

lnQty = 3
LOCAL ARRAY arr1(lnQty)
lnTrue = 0
lnTryings = 1000000
FOR lni = 1 TO lnTryings
    arr1=0 && ������� ������
    lnw = FLOOR(RAND()*lnQty)+1
    arr1[lnw] = 1
    lnv = FLOOR(RAND()*lnQty)+1
    IF arr1[lnv] = 0
        lnTrue = lnTrue + 1
    ENDIF
ENDFOR
?100*lnTrue/lnTryings