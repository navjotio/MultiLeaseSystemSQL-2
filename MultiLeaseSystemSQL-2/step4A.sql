CREATE PROCEDURE INSERTLEASE

@STARTDATE DATE,
@FIRSTPAYMENTDATE DATE,
@MONTHLYPAYMENT MONEY,
@MONTHLYPAYMENTCOUNT INT,
@VECHILEID INT,
@CUSTOMERID INT,
@TERMS NTEXT
AS
BEGIN

INSERT INTO	DBO.Leases ([START DATE] , [FIRST PAYMENT DATE], [MONTHLY PAYMENT], [MONTHLY PAYMENT COUNT], VEHICLEID, CUSTOMERID, TERMS)
VALUES (@STARTDATE, @FIRSTPAYMENTDATE, @MONTHLYPAYMENT, @MONTHLYPAYMENTCOUNT, @VECHILEID, @CUSTOMERID, @TERMS)

END