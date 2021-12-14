create database [MySushi]
USE [MySushi]
GO

CREATE TABLE [dbo].[Information](
	[id] [int] IDENTITY(1,1),
	[address] [nvarchar](1050),
	[tel] [nvarchar](50),
	[email] [nvarchar](500),
	[openingHours] [nvarchar](500)
)

CREATE TABLE [dbo].[Menu](
	[id] [int] IDENTITY(1,1) PRIMARY KEY ,
	[name] [nvarchar](max),
	[price] [nvarchar](max),
	[shortDes] [nvarchar](max),
	[detailDes] [nvarchar](max),
)

CREATE TABLE [dbo].[Share](
	[Icon] [nvarchar](max),
	[SocialNetwork] [nvarchar](max),
	[URL] [varchar](max)
)

CREATE TABLE [dbo].[Sushi](
	[id] [int] IDENTITY(1,1) PRIMARY KEY,
	[name] [nvarchar](max),
	[image] [nvarchar](max),
	[shortDes] [nvarchar](max),
	[detailDes] [nvarchar](max),
	[price] [nvarchar](max),
)

INSERT [dbo].[Information] ([address], [tel], [email], [openingHours]) VALUES ( N'The Sushi Restaurant<br/>New York, NY, USA', N'0969563145', N'sputniksweetheart@gmail.com', N'Monday Closed<br/>Tuesday 12 - 22<br/>Wednesday 12 - 22<br/>Thursday 12 - 22<br/>Friday 11 - 23<br/>Saturday 11 - 23<br/>Sunday 11 - 22')


INSERT [dbo].[Menu] ( [name], [price], [shortDes], [detailDes]) VALUES ( N'Menu 1', N'15.00', N'Claritas est etiam processus', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([name], [price], [shortDes], [detailDes]) VALUES ( N'Menu 2', N'20.00', N'Duis autem vel eum iriure dolor.', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ( [name], [price], [shortDes], [detailDes]) VALUES ( N'Menu 2', N'25.00', N'Eodem modo typi, qui nunc nobis videntur.', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([name], [price], [shortDes], [detailDes]) VALUES ( N'Menu 4', N'35.00', N'Claritas est etiam processus', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ( [name], [price], [shortDes], [detailDes]) VALUES ( N'Menu 5', N'45.00', N'Duis autem vel eum iriure dolor.', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ( [name], [price], [shortDes], [detailDes]) VALUES ( N'Menu 6', N'50.00', N'Eodem modo typi, qui nunc nobis videntur.', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ( [name], [price], [shortDes], [detailDes]) VALUES ( N'Menu 7', N'55.00', N'Claritas est etiam processus', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ( [name], [price], [shortDes], [detailDes]) VALUES ( N'Menu 8', N'60.00', N'Duis autem vel eum iriure dolor.', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ( [name], [price], [shortDes], [detailDes]) VALUES ( N'Menu 9', N'65.00', N'Eodem modo typi, qui nunc nobis videntur.', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ([name], [price], [shortDes], [detailDes]) VALUES ( N'Menu 10', N'70.00', N'Claritas est etiam processus', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')
INSERT [dbo].[Menu] ( [name], [price], [shortDes], [detailDes]) VALUES ( N'Menu 11', N'75.00', N'Duis autem vel eum iriure dolor.', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.')


INSERT [dbo].[Share] ([Icon], [SocialNetwork], [URL]) VALUES (N'fb.png', N'Facebook', N'https://www.facebook.com/')
INSERT [dbo].[Share] ([Icon], [SocialNetwork], [URL]) VALUES (N'tw.png', N'Twitter', N'https://twitter.com/')
INSERT [dbo].[Share] ([Icon], [SocialNetwork], [URL]) VALUES (N'gg.png', N'Google+', N'https://www.google.com.vn/')


INSERT [dbo].[Sushi] ([name], [image], [shortDes], [detailDes], [price]) VALUES ( N'Intro Sushi', N'sushi1.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', N'Cras quis est turpis. Phasellus molestie arcu id dui sodales, ut mattis nibh tincidunt. Praesent id turpis sed tortor maximus laoreet posuere non justo. Quisque tincidunt velit in fermentum aliquet. Aenean ac tempor arcu. Donec lacus velit, condimentum sit amet leo gravida, condimentum volutpat tellus. Sed sagittis lorem at eros vestibulum, sed lobortis metus pharetra. Sed varius dolor erat, eget egestas diam vehicula et.

', N'5000')
INSERT [dbo].[Sushi] ([name], [image], [shortDes], [detailDes], [price]) VALUES ( N'Sushi 1', N'sushi1.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', N'Cras quis est turpis. Phasellus molestie arcu id dui sodales, ut mattis nibh tincidunt. Praesent id turpis sed tortor maximus laoreet posuere non justo. Quisque tincidunt velit in fermentum aliquet. Aenean ac tempor arcu. Donec lacus velit, condimentum sit amet leo gravida, condimentum volutpat tellus. Sed sagittis lorem at eros vestibulum, sed lobortis metus pharetra. Sed varius dolor erat, eget egestas diam vehicula et.

', N'6000')
INSERT [dbo].[Sushi] ([name], [image], [shortDes], [detailDes], [price]) VALUES ( N'Sushi 2', N'sushi2.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', N'Cras quis est turpis. Phasellus molestie arcu id dui sodales, ut mattis nibh tincidunt. Praesent id turpis sed tortor maximus laoreet posuere non justo. Quisque tincidunt velit in fermentum aliquet. Aenean ac tempor arcu. Donec lacus velit, condimentum sit amet leo gravida, condimentum volutpat tellus. Sed sagittis lorem at eros vestibulum, sed lobortis metus pharetra. Sed varius dolor erat, eget egestas diam vehicula et.

', N'7000')
INSERT [dbo].[Sushi] ( [name], [image], [shortDes], [detailDes], [price]) VALUES ( N'Sushi 3', N'sushi1.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', N'Cras quis est turpis. Phasellus molestie arcu id dui sodales, ut mattis nibh tincidunt. Praesent id turpis sed tortor maximus laoreet posuere non justo. Quisque tincidunt velit in fermentum aliquet. Aenean ac tempor arcu. Donec lacus velit, condimentum sit amet leo gravida, condimentum volutpat tellus. Sed sagittis lorem at eros vestibulum, sed lobortis metus pharetra. Sed varius dolor erat, eget egestas diam vehicula et.

', N'6000')
INSERT [dbo].[Sushi] ( [name], [image], [shortDes], [detailDes], [price]) VALUES ( N'Sushi 4', N'sushi4.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', N'Cras quis est turpis. Phasellus molestie arcu id dui sodales, ut mattis nibh tincidunt. Praesent id turpis sed tortor maximus laoreet posuere non justo. Quisque tincidunt velit in fermentum aliquet. Aenean ac tempor arcu. Donec lacus velit, condimentum sit amet leo gravida, condimentum volutpat tellus. Sed sagittis lorem at eros vestibulum, sed lobortis metus pharetra. Sed varius dolor erat, eget egestas diam vehicula et.

', N'3000')
INSERT [dbo].[Sushi] ([name], [image], [shortDes], [detailDes], [price]) VALUES ( N'Sushi 5', N'sushi5.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', N'Cras quis est turpis. Phasellus molestie arcu id dui sodales, ut mattis nibh tincidunt. Praesent id turpis sed tortor maximus laoreet posuere non justo. Quisque tincidunt velit in fermentum aliquet. Aenean ac tempor arcu. Donec lacus velit, condimentum sit amet leo gravida, condimentum volutpat tellus. Sed sagittis lorem at eros vestibulum, sed lobortis metus pharetra. Sed varius dolor erat, eget egestas diam vehicula et.

', N'2000')
INSERT [dbo].[Sushi] ( [name], [image], [shortDes], [detailDes], [price]) VALUES ( N'Sushi 6', N'sushi1.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', N'Cras quis est turpis. Phasellus molestie arcu id dui sodales, ut mattis nibh tincidunt. Praesent id turpis sed tortor maximus laoreet posuere non justo. Quisque tincidunt velit in fermentum aliquet. Aenean ac tempor arcu. Donec lacus velit, condimentum sit amet leo gravida, condimentum volutpat tellus. Sed sagittis lorem at eros vestibulum, sed lobortis metus pharetra. Sed varius dolor erat, eget egestas diam vehicula et.

', N'1000')
INSERT [dbo].[Sushi] ([name], [image], [shortDes], [detailDes], [price]) VALUES ( N'Sushi 7', N'sushi7.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', N'Cras quis est turpis. Phasellus molestie arcu id dui sodales, ut mattis nibh tincidunt. Praesent id turpis sed tortor maximus laoreet posuere non justo. Quisque tincidunt velit in fermentum aliquet. Aenean ac tempor arcu. Donec lacus velit, condimentum sit amet leo gravida, condimentum volutpat tellus. Sed sagittis lorem at eros vestibulum, sed lobortis metus pharetra. Sed varius dolor erat, eget egestas diam vehicula et.

', N'3000')
INSERT [dbo].[Sushi] ( [name], [image], [shortDes], [detailDes], [price]) VALUES ( N'Sushi 8', N'sushi8.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', N'Cras quis est turpis. Phasellus molestie arcu id dui sodales, ut mattis nibh tincidunt. Praesent id turpis sed tortor maximus laoreet posuere non justo. Quisque tincidunt velit in fermentum aliquet. Aenean ac tempor arcu. Donec lacus velit, condimentum sit amet leo gravida, condimentum volutpat tellus. Sed sagittis lorem at eros vestibulum, sed lobortis metus pharetra. Sed varius dolor erat, eget egestas diam vehicula et.

', N'3000')
INSERT [dbo].[Sushi] ([name], [image], [shortDes], [detailDes], [price]) VALUES ( N'Sushi 9', N'sushi9.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', N'Cras quis est turpis. Phasellus molestie arcu id dui sodales, ut mattis nibh tincidunt. Praesent id turpis sed tortor maximus laoreet posuere non justo. Quisque tincidunt velit in fermentum aliquet. Aenean ac tempor arcu. Donec lacus velit, condimentum sit amet leo gravida, condimentum volutpat tellus. Sed sagittis lorem at eros vestibulum, sed lobortis metus pharetra. Sed varius dolor erat, eget egestas diam vehicula et.

', N'3000')
