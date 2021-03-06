USE [Testdb]
GO
/****** Object:  Table [dbo].[tbl_product]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ItemName] [nvarchar](50) NULL,
	[Price] [decimal](18, 2) NULL,
	[Description] [varchar](50) NULL,
	[Stock] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[InsertProduct]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[InsertProduct]
(
 @ItemName    VARCHAR(50),  
   
 @Price        DECIMAL(10, 2),  
 @Discription        VARCHAR(50),
  @Stock       VARCHAR(20)
)
As
begin
 INSERT INTO [dbo].[tbl_product] 
                        (ItemName,Price,Description,Stock)  
            VALUES     (@ItemName,@Price,@Discription,@Stock 
			 ) 
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_Delete]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Sp_Delete]
@ProductId int=null
As 
Begin
 DELETE FROM tbl_product
            WHERE ProductId = @ProductId
End
GO
/****** Object:  StoredProcedure [dbo].[Sp_Update]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Sp_Update]
(
 @ProductId int,
 @ItemName    VARCHAR(50),  
   
 @Price        DECIMAL(10, 2),  
 @Discription        VARCHAR(50),
  @Stock       VARCHAR(20)
)
As
Begin
 UPDATE tbl_product
            SET    ItemName = @ItemName,  
                   Price = @Price,  
                   Description = @Discription,  
                   Stock = @Stock  
            WHERE  ProductId = @ProductId 

End

GO
