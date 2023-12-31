USE [Inventory]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 28-10-2023 17:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] NOT NULL,
	[CategoryName] [varchar](50) NULL,
	[ParentID] [int] NULL,
	[crdby] [int] NULL,
	[crd] [datetime] NULL,
	[lmdby] [int] NULL,
	[lmd] [datetime] NULL,
	[isactive] [bit] NULL,
	[isdeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 28-10-2023 17:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[ContactInfo] [text] NULL,
	[BillingAddress] [text] NULL,
	[ShippingAddress] [text] NULL,
	[CreditLimit] [decimal](10, 2) NULL,
	[ExtraField1] [varchar](50) NULL,
	[ExtraField2] [varchar](50) NULL,
	[crdby] [int] NULL,
	[crd] [datetime] NULL,
	[lmdby] [int] NULL,
	[lmd] [datetime] NULL,
	[isactive] [bit] NULL,
	[isdeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 28-10-2023 17:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Invoice](
	[InvoiceID] [int] NOT NULL,
	[InvoiceDate] [date] NULL,
	[TotalAmount] [decimal](10, 2) NULL,
	[CustomerID] [int] NULL,
	[PaymentMethod] [varchar](50) NULL,
	[DueDate] [date] NULL,
	[ExtraField1] [varchar](50) NULL,
	[ExtraField2] [varchar](50) NULL,
	[crdby] [int] NULL,
	[crd] [datetime] NULL,
	[lmdby] [int] NULL,
	[lmd] [datetime] NULL,
	[isactive] [bit] NULL,
	[isdeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[InvoiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InvoiceLine]    Script Date: 28-10-2023 17:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InvoiceLine](
	[InvoiceLineID] [int] NOT NULL,
	[ProductID] [int] NULL,
	[Quantity] [int] NULL,
	[LineTotal] [decimal](10, 2) NULL,
	[InvoiceID] [int] NULL,
	[ExtraField1] [varchar](50) NULL,
	[ExtraField2] [varchar](50) NULL,
	[crdby] [int] NULL,
	[crd] [datetime] NULL,
	[lmdby] [int] NULL,
	[lmd] [datetime] NULL,
	[isactive] [bit] NULL,
	[isdeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[InvoiceLineID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product]    Script Date: 28-10-2023 17:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] NOT NULL,
	[ProductName] [varchar](255) NULL,
	[Description] [text] NULL,
	[Price] [decimal](10, 2) NULL,
	[QuantityOnHand] [int] NULL,
	[ReorderPoint] [int] NULL,
	[Category] [int] NULL,
	[Subcategory] [int] NULL,
	[Manufacturer] [varchar](100) NULL,
	[ShelfLocation] [varchar](20) NULL,
	[crdby] [int] NULL,
	[crd] [datetime] NULL,
	[lmdby] [int] NULL,
	[lmd] [datetime] NULL,
	[isactive] [bit] NULL,
	[isdeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PurchaseOrder]    Script Date: 28-10-2023 17:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PurchaseOrder](
	[PurchaseOrderID] [int] NOT NULL,
	[OrderDate] [date] NULL,
	[SupplierID] [int] NULL,
	[ExpectedDeliveryDate] [date] NULL,
	[Status] [varchar](50) NULL,
	[ExtraField1] [varchar](50) NULL,
	[ExtraField2] [varchar](50) NULL,
	[crdby] [int] NULL,
	[crd] [datetime] NULL,
	[lmdby] [int] NULL,
	[lmd] [datetime] NULL,
	[isactive] [bit] NULL,
	[isdeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[PurchaseOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PurchaseOrderLine]    Script Date: 28-10-2023 17:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PurchaseOrderLine](
	[PurchaseOrderLineID] [int] NOT NULL,
	[ProductID] [int] NULL,
	[QuantityOrdered] [int] NULL,
	[UnitPrice] [decimal](10, 2) NULL,
	[PurchaseOrderID] [int] NULL,
	[ExtraField1] [varchar](50) NULL,
	[ExtraField2] [varchar](50) NULL,
	[crdby] [int] NULL,
	[crd] [datetime] NULL,
	[lmdby] [int] NULL,
	[lmd] [datetime] NULL,
	[isactive] [bit] NULL,
	[isdeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[PurchaseOrderLineID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 28-10-2023 17:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Supplier](
	[SupplierID] [int] NOT NULL,
	[SupplierName] [varchar](255) NULL,
	[ContactInfo] [text] NULL,
	[PaymentTerms] [varchar](50) NULL,
	[SupplierRating] [decimal](3, 2) NULL,
	[ExtraField1] [varchar](50) NULL,
	[ExtraField2] [varchar](50) NULL,
	[crdby] [int] NULL,
	[crd] [datetime] NULL,
	[lmdby] [int] NULL,
	[lmd] [datetime] NULL,
	[isactive] [bit] NULL,
	[isdeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Category]  WITH CHECK ADD FOREIGN KEY([ParentID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[InvoiceLine]  WITH CHECK ADD FOREIGN KEY([InvoiceID])
REFERENCES [dbo].[Invoice] ([InvoiceID])
GO
ALTER TABLE [dbo].[InvoiceLine]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([Category])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([Subcategory])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[PurchaseOrder]  WITH CHECK ADD FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Supplier] ([SupplierID])
GO
ALTER TABLE [dbo].[PurchaseOrderLine]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[PurchaseOrderLine]  WITH CHECK ADD FOREIGN KEY([PurchaseOrderID])
REFERENCES [dbo].[PurchaseOrder] ([PurchaseOrderID])
GO
