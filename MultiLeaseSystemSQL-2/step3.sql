CREATE TRIGGER dbo.Leases_Update
on dbo.Leases
AFTER UPDATE 
AS 
BEGIN
	UPDATE DBO.Audits
	SET [CHANGE DATE]  = em.[FIRST PAYMENT DATE] FROM DBO.Leases
	AS eh
	INNER JOIN inserted AS em
	ON EH.[ID] = EH.[ID]

	UPDATE dbo.Audits
	SET [LEASEID] = EM.[ID] FROM DBO.Leases
	AS eh
	INNER JOIN inserted AS em
	ON EH.ID = EH.ID

	UPDATE dbo.Audits
	SET [OLD VALUE] = EM.[MONTHLY PAYMENT] FROM DBO.Leases
	AS eh	
	INNER JOIN inserted as em
	on EH.[ID] = EH.[ID]
	
	UPDATE dbo.Audits
	SET [NEW VALUE] = EM.[MONTHLY PAYMENT COUNT] FROM DBO.Leases
	AS eh 
	INNER JOIN inserted as em
	ON EH.[ID] = EH.[ID]

	
	
END
GO