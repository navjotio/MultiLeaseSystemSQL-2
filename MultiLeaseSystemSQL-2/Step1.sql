USE [ML635232534]
GO
BEGIN TRANSACTION
ALTER TABLE [dbo].[Leases] DROP CONSTRAINT [FK_Lease_Vehicle]






ALTER TABLE [dbo].[Vehicles] DROP CONSTRAINT [PK_Vehicles] WITH ( ONLINE = OFF )


ALTER TABLE [dbo].[Vehicles] ADD  CONSTRAINT [PK_Vehicles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [ID]([ID])


ALTER TABLE [dbo].[Leases]  WITH CHECK ADD  CONSTRAINT [FK_Lease_Vehicle] FOREIGN KEY([VEHICLEID])
REFERENCES [dbo].[Vehicles] ([ID])
ALTER TABLE [dbo].[Leases] CHECK CONSTRAINT [FK_Lease_Vehicle]








COMMIT TRANSACTION

