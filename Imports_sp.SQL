SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spwfnewUserDBSelectByID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spwfnewUserDBSelectByID]
GO
 
CREATE PROCEDURE [dbo].[spwfnewUserDBSelectByID]
  @LoginID NVarChar(8),
  @UserID NVarChar(8),
  @DashboardID Int,
  @DBRows Int 
  AS
  SELECT
    [WF_newUserDB].* ,
    [aspnet_Users1].[UserFullName] AS aspnet_Users1_UserFullName,
    [WF_Dashboards2].[DBDescription] AS WF_Dashboards2_DBDescription,
    [WF_DBRows3].[Description] AS WF_DBRows3_Description 
  FROM [WF_newUserDB] 
  INNER JOIN [aspnet_users] AS [aspnet_users1]
    ON [WF_newUserDB].[UserID] = [aspnet_users1].[LoginID]
  INNER JOIN [WF_Dashboards] AS [WF_Dashboards2]
    ON [WF_newUserDB].[DashboardID] = [WF_Dashboards2].[DashboardID]
  INNER JOIN [WF_DBRows] AS [WF_DBRows3]
    ON [WF_newUserDB].[DashboardID] = [WF_DBRows3].[DashboardID]
    AND [WF_newUserDB].[DBRows] = [WF_DBRows3].[DBRows]
  WHERE
  [WF_newUserDB].[UserID] = @UserID
  AND [WF_newUserDB].[DashboardID] = @DashboardID
  AND [WF_newUserDB].[DBRows] = @DBRows
  GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spwfnewUserDBSelectByUserID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spwfnewUserDBSelectByUserID]
GO
 
CREATE PROCEDURE [dbo].[spwfnewUserDBSelectByUserID]
  @UserID NVarChar(8),
  @LoginID NVarChar(8),
  @OrderBy NVarChar(50),
  @RecordCount Int = 0 OUTPUT
  AS
  SELECT
    [WF_newUserDB].* ,
    [aspnet_Users1].[UserFullName] AS aspnet_Users1_UserFullName,
    [WF_Dashboards2].[DBDescription] AS WF_Dashboards2_DBDescription,
    [WF_DBRows3].[Description] AS WF_DBRows3_Description 
  FROM [WF_newUserDB] 
  INNER JOIN [aspnet_users] AS [aspnet_users1]
    ON [WF_newUserDB].[UserID] = [aspnet_users1].[LoginID]
  INNER JOIN [WF_Dashboards] AS [WF_Dashboards2]
    ON [WF_newUserDB].[DashboardID] = [WF_Dashboards2].[DashboardID]
  INNER JOIN [WF_DBRows] AS [WF_DBRows3]
    ON [WF_newUserDB].[DashboardID] = [WF_DBRows3].[DashboardID]
    AND [WF_newUserDB].[DBRows] = [WF_DBRows3].[DBRows]
  WHERE
  [WF_newUserDB].[UserID] = @UserID
  ORDER BY
     CASE @OrderBy WHEN 'UserID' THEN [WF_newUserDB].[UserID] END,
     CASE @OrderBy WHEN 'UserID DESC' THEN [WF_newUserDB].[UserID] END DESC,
     CASE @OrderBy WHEN 'DashboardID' THEN [WF_newUserDB].[DashboardID] END,
     CASE @OrderBy WHEN 'DashboardID DESC' THEN [WF_newUserDB].[DashboardID] END DESC,
     CASE @OrderBy WHEN 'DBRows' THEN [WF_newUserDB].[DBRows] END,
     CASE @OrderBy WHEN 'DBRows DESC' THEN [WF_newUserDB].[DBRows] END DESC,
     CASE @OrderBy WHEN 'Sequence' THEN [WF_newUserDB].[Sequence] END,
     CASE @OrderBy WHEN 'Sequence DESC' THEN [WF_newUserDB].[Sequence] END DESC,
     CASE @OrderBy WHEN 'DataSource' THEN [WF_newUserDB].[DataSource] END,
     CASE @OrderBy WHEN 'DataSource DESC' THEN [WF_newUserDB].[DataSource] END DESC,
     CASE @OrderBy WHEN 'IsLeft' THEN [WF_newUserDB].[IsLeft] END,
     CASE @OrderBy WHEN 'IsLeft DESC' THEN [WF_newUserDB].[IsLeft] END DESC,
     CASE @OrderBy WHEN 'AppName_Left' THEN [WF_newUserDB].[AppName_Left] END,
     CASE @OrderBy WHEN 'AppName_Left DESC' THEN [WF_newUserDB].[AppName_Left] END DESC,
     CASE @OrderBy WHEN 'vTOTSQLl' THEN [WF_newUserDB].[vTOTSQLl] END,
     CASE @OrderBy WHEN 'vTOTSQLl DESC' THEN [WF_newUserDB].[vTOTSQLl] END DESC,
     CASE @OrderBy WHEN 'vREDSQLl' THEN [WF_newUserDB].[vREDSQLl] END,
     CASE @OrderBy WHEN 'vREDSQLl DESC' THEN [WF_newUserDB].[vREDSQLl] END DESC,
     CASE @OrderBy WHEN 'vAMBSQLl' THEN [WF_newUserDB].[vAMBSQLl] END,
     CASE @OrderBy WHEN 'vAMBSQLl DESC' THEN [WF_newUserDB].[vAMBSQLl] END DESC,
     CASE @OrderBy WHEN 'vGRESQLl' THEN [WF_newUserDB].[vGRESQLl] END,
     CASE @OrderBy WHEN 'vGRESQLl DESC' THEN [WF_newUserDB].[vGRESQLl] END DESC,
     CASE @OrderBy WHEN 'IsRight' THEN [WF_newUserDB].[IsRight] END,
     CASE @OrderBy WHEN 'IsRight DESC' THEN [WF_newUserDB].[IsRight] END DESC,
     CASE @OrderBy WHEN 'AppName_Right' THEN [WF_newUserDB].[AppName_Right] END,
     CASE @OrderBy WHEN 'AppName_Right DESC' THEN [WF_newUserDB].[AppName_Right] END DESC,
     CASE @OrderBy WHEN 'vTOTSQLr' THEN [WF_newUserDB].[vTOTSQLr] END,
     CASE @OrderBy WHEN 'vTOTSQLr DESC' THEN [WF_newUserDB].[vTOTSQLr] END DESC,
     CASE @OrderBy WHEN 'vREDSQLr' THEN [WF_newUserDB].[vREDSQLr] END,
     CASE @OrderBy WHEN 'vREDSQLr DESC' THEN [WF_newUserDB].[vREDSQLr] END DESC,
     CASE @OrderBy WHEN 'vAMBSQLr' THEN [WF_newUserDB].[vAMBSQLr] END,
     CASE @OrderBy WHEN 'vAMBSQLr DESC' THEN [WF_newUserDB].[vAMBSQLr] END DESC,
     CASE @OrderBy WHEN 'vGRESQLr' THEN [WF_newUserDB].[vGRESQLr] END,
     CASE @OrderBy WHEN 'vGRESQLr DESC' THEN [WF_newUserDB].[vGRESQLr] END DESC,
     CASE @OrderBy WHEN 'aspnet_Users1_UserFullName' THEN [aspnet_Users1].[UserFullName] END,
     CASE @OrderBy WHEN 'aspnet_Users1_UserFullName DESC' THEN [aspnet_Users1].[UserFullName] END DESC,
     CASE @OrderBy WHEN 'WF_Dashboards2_DBDescription' THEN [WF_Dashboards2].[DBDescription] END,
     CASE @OrderBy WHEN 'WF_Dashboards2_DBDescription DESC' THEN [WF_Dashboards2].[DBDescription] END DESC,
     CASE @OrderBy WHEN 'WF_DBRows3_Description' THEN [WF_DBRows3].[Description] END,
     CASE @OrderBy WHEN 'WF_DBRows3_Description DESC' THEN [WF_DBRows3].[Description] END DESC 
  SET @RecordCount = @@RowCount
  GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spwfnewUserDBSelectListSearch]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spwfnewUserDBSelectListSearch]
GO
 
CREATE PROCEDURE [dbo].[spwfnewUserDBSelectListSearch]
  @LoginID NVarChar(8),
  @StartRowIndex int,
  @MaximumRows int,
  @KeyWord VarChar(250),
  @OrderBy NVarChar(50),
  @RecordCount Int = 0 OUTPUT
  AS
  BEGIN
    DECLARE @KeyWord1 VarChar(260)
    SET @KeyWord1 = '%' + LOWER(@KeyWord) + '%'
  CREATE TABLE #PageIndex (
  IndexID INT IDENTITY (1, 1) NOT NULL
 ,UserID NVarChar(8) NOT NULL
 ,DashboardID Int NOT NULL
 ,DBRows Int NOT NULL
  )
  INSERT INTO #PageIndex (UserID, DashboardID, DBRows)
  SELECT [WF_newUserDB].[UserID], [WF_newUserDB].[DashboardID], [WF_newUserDB].[DBRows] FROM [WF_newUserDB]
  INNER JOIN [aspnet_users] AS [aspnet_users1]
    ON [WF_newUserDB].[UserID] = [aspnet_users1].[LoginID]
  INNER JOIN [WF_Dashboards] AS [WF_Dashboards2]
    ON [WF_newUserDB].[DashboardID] = [WF_Dashboards2].[DashboardID]
  INNER JOIN [WF_DBRows] AS [WF_DBRows3]
    ON [WF_newUserDB].[DashboardID] = [WF_DBRows3].[DashboardID]
    AND [WF_newUserDB].[DBRows] = [WF_DBRows3].[DBRows]
 WHERE  
   ( 
         LOWER(ISNULL([WF_newUserDB].[UserID],'')) LIKE @KeyWord1
     OR STR(ISNULL([WF_newUserDB].[DashboardID], 0)) LIKE @KeyWord1
     OR STR(ISNULL([WF_newUserDB].[DBRows], 0)) LIKE @KeyWord1
     OR STR(ISNULL([WF_newUserDB].[Sequence], 0)) LIKE @KeyWord1
     OR LOWER(ISNULL([WF_newUserDB].[DataSource],'')) LIKE @KeyWord1
     OR LOWER(ISNULL([WF_newUserDB].[AppName_Left],'')) LIKE @KeyWord1
     OR LOWER(ISNULL([WF_newUserDB].[vTOTSQLl],'')) LIKE @KeyWord1
     OR LOWER(ISNULL([WF_newUserDB].[vREDSQLl],'')) LIKE @KeyWord1
     OR LOWER(ISNULL([WF_newUserDB].[vAMBSQLl],'')) LIKE @KeyWord1
     OR LOWER(ISNULL([WF_newUserDB].[vGRESQLl],'')) LIKE @KeyWord1
     OR LOWER(ISNULL([WF_newUserDB].[AppName_Right],'')) LIKE @KeyWord1
     OR LOWER(ISNULL([WF_newUserDB].[vTOTSQLr],'')) LIKE @KeyWord1
     OR LOWER(ISNULL([WF_newUserDB].[vREDSQLr],'')) LIKE @KeyWord1
     OR LOWER(ISNULL([WF_newUserDB].[vAMBSQLr],'')) LIKE @KeyWord1
     OR LOWER(ISNULL([WF_newUserDB].[vGRESQLr],'')) LIKE @KeyWord1
   ) 
  ORDER BY
     CASE @OrderBy WHEN 'UserID' THEN [WF_newUserDB].[UserID] END,
     CASE @OrderBy WHEN 'UserID DESC' THEN [WF_newUserDB].[UserID] END DESC,
     CASE @OrderBy WHEN 'DashboardID' THEN [WF_newUserDB].[DashboardID] END,
     CASE @OrderBy WHEN 'DashboardID DESC' THEN [WF_newUserDB].[DashboardID] END DESC,
     CASE @OrderBy WHEN 'DBRows' THEN [WF_newUserDB].[DBRows] END,
     CASE @OrderBy WHEN 'DBRows DESC' THEN [WF_newUserDB].[DBRows] END DESC,
     CASE @OrderBy WHEN 'Sequence' THEN [WF_newUserDB].[Sequence] END,
     CASE @OrderBy WHEN 'Sequence DESC' THEN [WF_newUserDB].[Sequence] END DESC,
     CASE @OrderBy WHEN 'DataSource' THEN [WF_newUserDB].[DataSource] END,
     CASE @OrderBy WHEN 'DataSource DESC' THEN [WF_newUserDB].[DataSource] END DESC,
     CASE @OrderBy WHEN 'IsLeft' THEN [WF_newUserDB].[IsLeft] END,
     CASE @OrderBy WHEN 'IsLeft DESC' THEN [WF_newUserDB].[IsLeft] END DESC,
     CASE @OrderBy WHEN 'AppName_Left' THEN [WF_newUserDB].[AppName_Left] END,
     CASE @OrderBy WHEN 'AppName_Left DESC' THEN [WF_newUserDB].[AppName_Left] END DESC,
     CASE @OrderBy WHEN 'vTOTSQLl' THEN [WF_newUserDB].[vTOTSQLl] END,
     CASE @OrderBy WHEN 'vTOTSQLl DESC' THEN [WF_newUserDB].[vTOTSQLl] END DESC,
     CASE @OrderBy WHEN 'vREDSQLl' THEN [WF_newUserDB].[vREDSQLl] END,
     CASE @OrderBy WHEN 'vREDSQLl DESC' THEN [WF_newUserDB].[vREDSQLl] END DESC,
     CASE @OrderBy WHEN 'vAMBSQLl' THEN [WF_newUserDB].[vAMBSQLl] END,
     CASE @OrderBy WHEN 'vAMBSQLl DESC' THEN [WF_newUserDB].[vAMBSQLl] END DESC,
     CASE @OrderBy WHEN 'vGRESQLl' THEN [WF_newUserDB].[vGRESQLl] END,
     CASE @OrderBy WHEN 'vGRESQLl DESC' THEN [WF_newUserDB].[vGRESQLl] END DESC,
     CASE @OrderBy WHEN 'IsRight' THEN [WF_newUserDB].[IsRight] END,
     CASE @OrderBy WHEN 'IsRight DESC' THEN [WF_newUserDB].[IsRight] END DESC,
     CASE @OrderBy WHEN 'AppName_Right' THEN [WF_newUserDB].[AppName_Right] END,
     CASE @OrderBy WHEN 'AppName_Right DESC' THEN [WF_newUserDB].[AppName_Right] END DESC,
     CASE @OrderBy WHEN 'vTOTSQLr' THEN [WF_newUserDB].[vTOTSQLr] END,
     CASE @OrderBy WHEN 'vTOTSQLr DESC' THEN [WF_newUserDB].[vTOTSQLr] END DESC,
     CASE @OrderBy WHEN 'vREDSQLr' THEN [WF_newUserDB].[vREDSQLr] END,
     CASE @OrderBy WHEN 'vREDSQLr DESC' THEN [WF_newUserDB].[vREDSQLr] END DESC,
     CASE @OrderBy WHEN 'vAMBSQLr' THEN [WF_newUserDB].[vAMBSQLr] END,
     CASE @OrderBy WHEN 'vAMBSQLr DESC' THEN [WF_newUserDB].[vAMBSQLr] END DESC,
     CASE @OrderBy WHEN 'vGRESQLr' THEN [WF_newUserDB].[vGRESQLr] END,
     CASE @OrderBy WHEN 'vGRESQLr DESC' THEN [WF_newUserDB].[vGRESQLr] END DESC,
     CASE @OrderBy WHEN 'aspnet_Users1_UserFullName' THEN [aspnet_Users1].[UserFullName] END,
     CASE @OrderBy WHEN 'aspnet_Users1_UserFullName DESC' THEN [aspnet_Users1].[UserFullName] END DESC,
     CASE @OrderBy WHEN 'WF_Dashboards2_DBDescription' THEN [WF_Dashboards2].[DBDescription] END,
     CASE @OrderBy WHEN 'WF_Dashboards2_DBDescription DESC' THEN [WF_Dashboards2].[DBDescription] END DESC,
     CASE @OrderBy WHEN 'WF_DBRows3_Description' THEN [WF_DBRows3].[Description] END,
     CASE @OrderBy WHEN 'WF_DBRows3_Description DESC' THEN [WF_DBRows3].[Description] END DESC 

    SET @RecordCount = @@RowCount

  SELECT
    [WF_newUserDB].* ,
    [aspnet_Users1].[UserFullName] AS aspnet_Users1_UserFullName,
    [WF_Dashboards2].[DBDescription] AS WF_Dashboards2_DBDescription,
    [WF_DBRows3].[Description] AS WF_DBRows3_Description 
  FROM [WF_newUserDB] 
      INNER JOIN #PageIndex
          ON [WF_newUserDB].[UserID] = #PageIndex.UserID
          AND [WF_newUserDB].[DashboardID] = #PageIndex.DashboardID
          AND [WF_newUserDB].[DBRows] = #PageIndex.DBRows
  INNER JOIN [aspnet_users] AS [aspnet_users1]
    ON [WF_newUserDB].[UserID] = [aspnet_users1].[LoginID]
  INNER JOIN [WF_Dashboards] AS [WF_Dashboards2]
    ON [WF_newUserDB].[DashboardID] = [WF_Dashboards2].[DashboardID]
  INNER JOIN [WF_DBRows] AS [WF_DBRows3]
    ON [WF_newUserDB].[DashboardID] = [WF_DBRows3].[DashboardID]
    AND [WF_newUserDB].[DBRows] = [WF_DBRows3].[DBRows]
  WHERE
        #PageIndex.IndexID > @StartRowIndex
        AND #PageIndex.IndexID < (@StartRowIndex + @MaximumRows + 1)
  ORDER BY
    #PageIndex.IndexID
  END
  GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spwfnewUserDBSelectListFilteres]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spwfnewUserDBSelectListFilteres]
GO
 
CREATE PROCEDURE [dbo].[spwfnewUserDBSelectListFilteres]
  @Filter_UserID NVarChar(8),
  @Filter_DashboardID Int,
  @Filter_DBRows Int,
  @LoginID NVarChar(8),
  @StartRowIndex int,
  @MaximumRows int,
  @OrderBy NVarChar(50),
  @RecordCount Int = 0 OUTPUT
  AS
  BEGIN
  DECLARE @LGSQL VarChar(8000)
  CREATE TABLE #PageIndex (
  IndexID INT IDENTITY (1, 1) NOT NULL
 ,UserID NVarChar(8) NOT NULL
 ,DashboardID Int NOT NULL
 ,DBRows Int NOT NULL
  )
  SET @LGSQL = 'INSERT INTO #PageIndex (' 
  SET @LGSQL = @LGSQL + 'UserID'
  SET @LGSQL = @LGSQL + ', DashboardID'
  SET @LGSQL = @LGSQL + ', DBRows'
  SET @LGSQL = @LGSQL + ')'
  SET @LGSQL = @LGSQL + ' SELECT '
  SET @LGSQL = @LGSQL + '[WF_newUserDB].[UserID]'
  SET @LGSQL = @LGSQL + ', [WF_newUserDB].[DashboardID]'
  SET @LGSQL = @LGSQL + ', [WF_newUserDB].[DBRows]'
  SET @LGSQL = @LGSQL + ' FROM [WF_newUserDB] '
  SET @LGSQL = @LGSQL + '  INNER JOIN [aspnet_users] AS [aspnet_users1]'
  SET @LGSQL = @LGSQL + '    ON [WF_newUserDB].[UserID] = [aspnet_users1].[LoginID]'
  SET @LGSQL = @LGSQL + '  INNER JOIN [WF_Dashboards] AS [WF_Dashboards2]'
  SET @LGSQL = @LGSQL + '    ON [WF_newUserDB].[DashboardID] = [WF_Dashboards2].[DashboardID]'
  SET @LGSQL = @LGSQL + '  INNER JOIN [WF_DBRows] AS [WF_DBRows3]'
  SET @LGSQL = @LGSQL + '    ON [WF_newUserDB].[DashboardID] = [WF_DBRows3].[DashboardID]'
  SET @LGSQL = @LGSQL + '    AND [WF_newUserDB].[DBRows] = [WF_DBRows3].[DBRows]'
  SET @LGSQL = @LGSQL + '  WHERE 1 = 1 '
  IF (@Filter_UserID > '') 
    SET @LGSQL = @LGSQL + ' AND [WF_newUserDB].[UserID] = ''' + @Filter_UserID + ''''
  IF (@Filter_DashboardID > 0) 
    SET @LGSQL = @LGSQL + ' AND [WF_newUserDB].[DashboardID] = ' + STR(@Filter_DashboardID)
  IF (@Filter_DBRows > 0) 
    SET @LGSQL = @LGSQL + ' AND [WF_newUserDB].[DBRows] = ' + STR(@Filter_DBRows)
  SET @LGSQL = @LGSQL + '  ORDER BY '
  SET @LGSQL = @LGSQL + CASE @OrderBy
                        WHEN 'UserID' THEN '[WF_newUserDB].[UserID]'
                        WHEN 'UserID DESC' THEN '[WF_newUserDB].[UserID] DESC'
                        WHEN 'DashboardID' THEN '[WF_newUserDB].[DashboardID]'
                        WHEN 'DashboardID DESC' THEN '[WF_newUserDB].[DashboardID] DESC'
                        WHEN 'DBRows' THEN '[WF_newUserDB].[DBRows]'
                        WHEN 'DBRows DESC' THEN '[WF_newUserDB].[DBRows] DESC'
                        WHEN 'Sequence' THEN '[WF_newUserDB].[Sequence]'
                        WHEN 'Sequence DESC' THEN '[WF_newUserDB].[Sequence] DESC'
                        WHEN 'DataSource' THEN '[WF_newUserDB].[DataSource]'
                        WHEN 'DataSource DESC' THEN '[WF_newUserDB].[DataSource] DESC'
                        WHEN 'IsLeft' THEN '[WF_newUserDB].[IsLeft]'
                        WHEN 'IsLeft DESC' THEN '[WF_newUserDB].[IsLeft] DESC'
                        WHEN 'AppName_Left' THEN '[WF_newUserDB].[AppName_Left]'
                        WHEN 'AppName_Left DESC' THEN '[WF_newUserDB].[AppName_Left] DESC'
                        WHEN 'vTOTSQLl' THEN '[WF_newUserDB].[vTOTSQLl]'
                        WHEN 'vTOTSQLl DESC' THEN '[WF_newUserDB].[vTOTSQLl] DESC'
                        WHEN 'vREDSQLl' THEN '[WF_newUserDB].[vREDSQLl]'
                        WHEN 'vREDSQLl DESC' THEN '[WF_newUserDB].[vREDSQLl] DESC'
                        WHEN 'vAMBSQLl' THEN '[WF_newUserDB].[vAMBSQLl]'
                        WHEN 'vAMBSQLl DESC' THEN '[WF_newUserDB].[vAMBSQLl] DESC'
                        WHEN 'vGRESQLl' THEN '[WF_newUserDB].[vGRESQLl]'
                        WHEN 'vGRESQLl DESC' THEN '[WF_newUserDB].[vGRESQLl] DESC'
                        WHEN 'IsRight' THEN '[WF_newUserDB].[IsRight]'
                        WHEN 'IsRight DESC' THEN '[WF_newUserDB].[IsRight] DESC'
                        WHEN 'AppName_Right' THEN '[WF_newUserDB].[AppName_Right]'
                        WHEN 'AppName_Right DESC' THEN '[WF_newUserDB].[AppName_Right] DESC'
                        WHEN 'vTOTSQLr' THEN '[WF_newUserDB].[vTOTSQLr]'
                        WHEN 'vTOTSQLr DESC' THEN '[WF_newUserDB].[vTOTSQLr] DESC'
                        WHEN 'vREDSQLr' THEN '[WF_newUserDB].[vREDSQLr]'
                        WHEN 'vREDSQLr DESC' THEN '[WF_newUserDB].[vREDSQLr] DESC'
                        WHEN 'vAMBSQLr' THEN '[WF_newUserDB].[vAMBSQLr]'
                        WHEN 'vAMBSQLr DESC' THEN '[WF_newUserDB].[vAMBSQLr] DESC'
                        WHEN 'vGRESQLr' THEN '[WF_newUserDB].[vGRESQLr]'
                        WHEN 'vGRESQLr DESC' THEN '[WF_newUserDB].[vGRESQLr] DESC'
                        WHEN 'aspnet_Users1_UserFullName' THEN '[aspnet_Users1].[UserFullName]'
                        WHEN 'aspnet_Users1_UserFullName DESC' THEN '[aspnet_Users1].[UserFullName] DESC'
                        WHEN 'WF_Dashboards2_DBDescription' THEN '[WF_Dashboards2].[DBDescription]'
                        WHEN 'WF_Dashboards2_DBDescription DESC' THEN '[WF_Dashboards2].[DBDescription] DESC'
                        WHEN 'WF_DBRows3_Description' THEN '[WF_DBRows3].[Description]'
                        WHEN 'WF_DBRows3_Description DESC' THEN '[WF_DBRows3].[Description] DESC'
                        ELSE '[WF_newUserDB].[UserID],[WF_newUserDB].[DashboardID],[WF_newUserDB].[DBRows]'
                    END
  EXEC (@LGSQL)

  SET @RecordCount = @@RowCount

  SELECT
    [WF_newUserDB].* ,
    [aspnet_Users1].[UserFullName] AS aspnet_Users1_UserFullName,
    [WF_Dashboards2].[DBDescription] AS WF_Dashboards2_DBDescription,
    [WF_DBRows3].[Description] AS WF_DBRows3_Description 
  FROM [WF_newUserDB] 
      INNER JOIN #PageIndex
          ON [WF_newUserDB].[UserID] = #PageIndex.UserID
          AND [WF_newUserDB].[DashboardID] = #PageIndex.DashboardID
          AND [WF_newUserDB].[DBRows] = #PageIndex.DBRows
  INNER JOIN [aspnet_users] AS [aspnet_users1]
    ON [WF_newUserDB].[UserID] = [aspnet_users1].[LoginID]
  INNER JOIN [WF_Dashboards] AS [WF_Dashboards2]
    ON [WF_newUserDB].[DashboardID] = [WF_Dashboards2].[DashboardID]
  INNER JOIN [WF_DBRows] AS [WF_DBRows3]
    ON [WF_newUserDB].[DashboardID] = [WF_DBRows3].[DashboardID]
    AND [WF_newUserDB].[DBRows] = [WF_DBRows3].[DBRows]
  WHERE
        #PageIndex.IndexID > @StartRowIndex
        AND #PageIndex.IndexID < (@StartRowIndex + @MaximumRows + 1)
  ORDER BY
    #PageIndex.IndexID
  END
  GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spwfnewUserDBInsert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spwfnewUserDBInsert]
GO
 
CREATE PROCEDURE [dbo].[spwfnewUserDBInsert]
  @UserID NVarChar(8),
  @DashboardID Int,
  @DBRows Int,
  @Sequence Decimal(8,3),
  @DataSource NVarChar(10),
  @IsLeft Bit,
  @AppName_Left NVarChar(100),
  @vTOTSQLl NVarChar(4000),
  @vREDSQLl NVarChar(4000),
  @vAMBSQLl NVarChar(4000),
  @vGRESQLl NVarChar(4000),
  @IsRight Bit,
  @AppName_Right NVarChar(100),
  @vTOTSQLr NVarChar(4000),
  @vREDSQLr NVarChar(4000),
  @vAMBSQLr NVarChar(4000),
  @vGRESQLr NVarChar(4000),
  @Return_UserID NVarChar(8) = null OUTPUT, 
  @Return_DashboardID Int = null OUTPUT, 
  @Return_DBRows Int = null OUTPUT 
  AS
  INSERT [WF_newUserDB]
  (
   [UserID]
  ,[DashboardID]
  ,[DBRows]
  ,[Sequence]
  ,[DataSource]
  ,[IsLeft]
  ,[AppName_Left]
  ,[vTOTSQLl]
  ,[vREDSQLl]
  ,[vAMBSQLl]
  ,[vGRESQLl]
  ,[IsRight]
  ,[AppName_Right]
  ,[vTOTSQLr]
  ,[vREDSQLr]
  ,[vAMBSQLr]
  ,[vGRESQLr]
  )
  VALUES
  (
   UPPER(@UserID)
  ,@DashboardID
  ,@DBRows
  ,@Sequence
  ,@DataSource
  ,@IsLeft
  ,@AppName_Left
  ,@vTOTSQLl
  ,@vREDSQLl
  ,@vAMBSQLl
  ,@vGRESQLl
  ,@IsRight
  ,@AppName_Right
  ,@vTOTSQLr
  ,@vREDSQLr
  ,@vAMBSQLr
  ,@vGRESQLr
  )
  SET @Return_UserID = @UserID
  SET @Return_DashboardID = @DashboardID
  SET @Return_DBRows = @DBRows
  GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spwfnewUserDBUpdate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spwfnewUserDBUpdate]
GO
 
CREATE PROCEDURE [dbo].[spwfnewUserDBUpdate]
  @Original_UserID NVarChar(8), 
  @Original_DashboardID Int, 
  @Original_DBRows Int, 
  @UserID NVarChar(8),
  @DashboardID Int,
  @DBRows Int,
  @Sequence Decimal(8,3),
  @DataSource NVarChar(10),
  @IsLeft Bit,
  @AppName_Left NVarChar(100),
  @vTOTSQLl NVarChar(4000),
  @vREDSQLl NVarChar(4000),
  @vAMBSQLl NVarChar(4000),
  @vGRESQLl NVarChar(4000),
  @IsRight Bit,
  @AppName_Right NVarChar(100),
  @vTOTSQLr NVarChar(4000),
  @vREDSQLr NVarChar(4000),
  @vAMBSQLr NVarChar(4000),
  @vGRESQLr NVarChar(4000),
  @RowCount int = null OUTPUT
  AS
  UPDATE [WF_newUserDB] SET 
   [UserID] = @UserID
  ,[DashboardID] = @DashboardID
  ,[DBRows] = @DBRows
  ,[Sequence] = @Sequence
  ,[DataSource] = @DataSource
  ,[IsLeft] = @IsLeft
  ,[AppName_Left] = @AppName_Left
  ,[vTOTSQLl] = @vTOTSQLl
  ,[vREDSQLl] = @vREDSQLl
  ,[vAMBSQLl] = @vAMBSQLl
  ,[vGRESQLl] = @vGRESQLl
  ,[IsRight] = @IsRight
  ,[AppName_Right] = @AppName_Right
  ,[vTOTSQLr] = @vTOTSQLr
  ,[vREDSQLr] = @vREDSQLr
  ,[vAMBSQLr] = @vAMBSQLr
  ,[vGRESQLr] = @vGRESQLr
  WHERE
  [UserID] = @Original_UserID
  AND [DashboardID] = @Original_DashboardID
  AND [DBRows] = @Original_DBRows
  SET @RowCount = @@RowCount
  GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spwfnewUserDBDelete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spwfnewUserDBDelete]
GO
 
CREATE PROCEDURE [dbo].[spwfnewUserDBDelete]
  @Original_UserID NVarChar(8),
  @Original_DashboardID Int,
  @Original_DBRows Int,
  @RowCount int = null OUTPUT
  AS
  DELETE [WF_newUserDB]
  WHERE
  [WF_newUserDB].[UserID] = @Original_UserID
  AND [WF_newUserDB].[DashboardID] = @Original_DashboardID
  AND [WF_newUserDB].[DBRows] = @Original_DBRows
  SET @RowCount = @@RowCount
  GO

SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
