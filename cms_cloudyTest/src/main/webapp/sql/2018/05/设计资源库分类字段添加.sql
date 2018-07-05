set IDENTITY_INSERT [dbo].[Part_PrimaryAttributes] on
INSERT [dbo].[Part_PrimaryAttributes] ([ID], [FieldName], [ShowName], [DataType], [IsNULL], [Description], [IsUsed], [IsDisplay], [IsUpdate], [IsAudit], [IsSearch], [IsMatch], [seq_no], [type], [IsInsert], [EnglishName], [IsApply]) VALUES (IDENT_CURRENT('Part_PrimaryAttributes') + IDENT_INCR('Part_PrimaryAttributes'), N'first_category', N'第一级分类', N'nvarchar(50)', N'是', N'第一级分类', 0, 0, 0, 0, 0, 0, 0, 3, 0, N'firstCategory', 1)
INSERT [dbo].[Part_PrimaryAttributes] ([ID], [FieldName], [ShowName], [DataType], [IsNULL], [Description], [IsUsed], [IsDisplay], [IsUpdate], [IsAudit], [IsSearch], [IsMatch], [seq_no], [type], [IsInsert], [EnglishName], [IsApply]) VALUES (IDENT_CURRENT('Part_PrimaryAttributes') + IDENT_INCR('Part_PrimaryAttributes'), N'second_category', N'第二级分类', N'nvarchar(50)', N'是', N'第二级分类', 0, 0, 0, 0, 0, 0, 0, 3, 0, N'secondCategory', 1)
INSERT [dbo].[Part_PrimaryAttributes] ([ID], [FieldName], [ShowName], [DataType], [IsNULL], [Description], [IsUsed], [IsDisplay], [IsUpdate], [IsAudit], [IsSearch], [IsMatch], [seq_no], [type], [IsInsert], [EnglishName], [IsApply]) VALUES (IDENT_CURRENT('Part_PrimaryAttributes') + IDENT_INCR('Part_PrimaryAttributes'), N'third_category', N'第三级分类', N'nvarchar(50)', N'是', N'第三级分类', 0, 0, 0, 0, 0, 0, 0, 3, 0, N'thirdCategory', 1)
INSERT [dbo].[Part_PrimaryAttributes] ([ID], [FieldName], [ShowName], [DataType], [IsNULL], [Description], [IsUsed], [IsDisplay], [IsUpdate], [IsAudit], [IsSearch], [IsMatch], [seq_no], [type], [IsInsert], [EnglishName], [IsApply]) VALUES (IDENT_CURRENT('Part_PrimaryAttributes') + IDENT_INCR('Part_PrimaryAttributes'), N'fourth_category', N'第四级分类', N'nvarchar(50)', N'是', N'第四级分类', 0, 0, 0, 0, 0, 0, 0, 3, 0, N'fourthCategory', 1)
INSERT [dbo].[Part_PrimaryAttributes] ([ID], [FieldName], [ShowName], [DataType], [IsNULL], [Description], [IsUsed], [IsDisplay], [IsUpdate], [IsAudit], [IsSearch], [IsMatch], [seq_no], [type], [IsInsert], [EnglishName], [IsApply]) VALUES (IDENT_CURRENT('Part_PrimaryAttributes') + IDENT_INCR('Part_PrimaryAttributes'), N'fifth_category', N'第五级分类', N'nvarchar(50)', N'是', N'第五级分类', 0, 0, 0, 0, 0, 0, 0, 3, 0, N'fifthCategory', 1)
INSERT [dbo].[Part_PrimaryAttributes] ([ID], [FieldName], [ShowName], [DataType], [IsNULL], [Description], [IsUsed], [IsDisplay], [IsUpdate], [IsAudit], [IsSearch], [IsMatch], [seq_no], [type], [IsInsert], [EnglishName], [IsApply]) VALUES (IDENT_CURRENT('Part_PrimaryAttributes') + IDENT_INCR('Part_PrimaryAttributes'), N'PartCode', N'物料编码', N'nvarchar(50)', N'是', N'物料编码', 0, 0, 0, 0, 0, 0, 0, 3, 0, N'PartCode', 1)
INSERT [dbo].[Part_PrimaryAttributes] ([ID], [FieldName], [ShowName], [DataType], [IsNULL], [Description], [IsUsed], [IsDisplay], [IsUpdate], [IsAudit], [IsSearch], [IsMatch], [seq_no], [type], [IsInsert], [EnglishName], [IsApply]) VALUES (IDENT_CURRENT('Part_PrimaryAttributes') + IDENT_INCR('Part_PrimaryAttributes'), N'WarehouseNumber', N'库存', N'int', N'是', N'库存', 0, 0, 0, 0, 0, 0, 0, 3, 0, N'WarehouseNumber', 1)