CREATE PROCEDURE UpdateWatermarkTable @LastDate varchar(2000)
AS
BEGIN
	BEGIN TRANSACTION;

	UPDATE [dbo].[WATERMARK_TBL]
	SET LastLoadDate = @LastDate
	
	COMMIT TRANSACTION;
END;