﻿--Unrepeatable data
--T1
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ
BEGIN TRAN
SELECT SDT FROM dbo.GiaoVien WHERE TenGV=N'Nguyễn Phạm Hương'
WAITFOR DELAY '00:00:05'
SELECT SDT FROM dbo.GiaoVien WHERE TenGV=N'Nguyễn Phạm Hương'
COMMIT

