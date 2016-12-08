/*
   Thursday, December 08, 20161:45:02 AM
   User: 
   Server: DMVM
   Database: DisplayMonkey
   Application: 
*/

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Display
	DROP CONSTRAINT FK_Display_Canvas
GO
ALTER TABLE dbo.Canvas SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Display ADD CONSTRAINT
	FK_Display_Canvas FOREIGN KEY
	(
	CanvasId
	) REFERENCES dbo.Canvas
	(
	CanvasId
	) ON UPDATE  CASCADE 
	 ON DELETE  CASCADE 
	
GO
ALTER TABLE dbo.Display SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
