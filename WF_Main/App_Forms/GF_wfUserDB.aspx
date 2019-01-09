<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="False" CodeFile="GF_wfUserDB.aspx.vb" Inherits="GF_wfUserDB" title="User Dashboard" %>
<asp:Content ID="CPHwfDBRowsMain" ContentPlaceHolderID="cphMain" runat="server">
  <script src="../../jq3.3/jquery-3.3.1.min.js"></script>
  <link href="../../jq3.3/ui/themes/smoothness/jquery-ui.css" rel="stylesheet" />
  <script src="../../jq3.3/ui/jquery-ui.js"></script>
  <link href="../../fa47/css/font-awesome.min.css" rel="stylesheet" />
  <link href="../../bs4.0/css/bootstrap.min.css" rel="stylesheet" />
  <script src="../../Popper1.0/popper.js"></script>
  <script src="../../Popper1.0/tooltip.js"></script>
  <script src="../../bs4.0/js/bootstrap.min.js"></script>
  <script src="../../jq3.3/ui/blockUI.min.js"></script>
  <script type="text/javascript">
    $(function () {
      $(".page").resizable();
    });
  </script>
  <style type="text/css">
    .dltable {
      border: 1px solid #ccc;
      border-collapse: collapse;
      width: 100%;
    }

      .dltable th {
        background-color: #F7F7F7;
        color: #333;
        font-weight: bold;
      }

      .dltable th, .dltable td {
        border: 1px solid #ccc;
      }
    /*My   Css*/
    .pnldb {
    }

    .pnldbrow {
    }

    .pnldbrowchild {
    }

    .pnldbrowtype {
    }

    .pnlInformation {
      border: solid #f2f2f2 1px;
      -moz-border-radius: 10px;
      -webkit-border-radius: 10px;
      border-radius: 10px;
      background: #b6b3b3;
      background-color: rgb(182, 179, 179);
      margin-top: 5px;
    }
    .pnlTableView {
      border: solid #222222 1px;
      -moz-border-radius: 5px;
      -webkit-border-radius: 5px;
      border-radius: 5px;
      background: #b6b3b3;
      background-color: rgb(182, 179, 179);
      margin: 5px 0px 5px 0px;
      float:left;
      
    }
    /*Row Type Whether Temperatur, Column Name => MyImage */
    .infotable {
      width: 100%;
      border-collapse: collapse;
    }

      .infotable td {
        border: none;
        outline: none;
      }

      .infotable tr {
      }

    .infotabletr {
      background-color: transparent;
    }

      .infotabletr:nth-child(even) {
        background-color: darkseagreen;
      }

      .infotabletr:hover {
        background-color: #16073c;
      }

    .infotabletdimg {
      width: 25px !important;
    }

    .infotableimg {
      height: 25px;
      width: 25px;
    }

    .infotabletext {
      font-size: 16px;
      color: aliceblue;
      height: 30px;
      width: 100%;
      margin-right: 10px;
    }

    .infotabledata {
      font-size: 16px;
      color: aliceblue;
    }

    .infotableXdata {
      font-size: 16px;
      font-weight: bold;
      color: aliceblue;
    }
    /* Default Table*/
    .defatable {
      border: solid 1px #DDEEEE;
      border-collapse: collapse;
      border-spacing: 0;
      font: normal 13px Arial, sans-serif;
    }
      .defatable thead th {
        background-color: #DDEFEF;
        border: solid 1px #DDEEEE;
        color: #336B6B;
        text-align: center;
        padding: 5px 5px;
        text-shadow: 1px 1px 1px #fff;
      }
      .defatable tbody td {
        border: solid 1px #DDEEEE;
        color: #333;
        padding: 5px 5px;
        text-shadow: 1px 1px 1px #fff;
      }
    .defatable-rounded {
      border: none;
    }
      .defatable-rounded thead th {
        background-color: #CFAD70;
        border: none;
        text-shadow: 1px 1px 1px #ccc;
        text-align: center;
        color: #333;
      }
        .defatable-rounded thead th:first-child {
          border-radius: 10px 10px 0 0;
        }
        .defatable-rounded thead th:last-child {
          border-radius: 10px 10px 0 0;
        }
      .defatable-rounded tbody td {
        border: none;
        border-top: solid 1px #957030;
        background-color: #EED592;
        text-align: center;
      }
      .defatable-rounded tbody tr:last-child td:first-child {
        border-radius: 0 0 0 10px;
      }
      .defatable-rounded tbody tr:last-child td:last-child {
        border-radius: 0 0 10px 10px;
      }

    .page {
      overflow: hidden;
      margin: 5px auto;
      width: 98%;
      padding: 0px 0px 6px 0px;
      background: #e3e3e3;
      color: #333333;
      -moz-border-radius: 5px;
      -webkit-border-radius: 5px;
      border-radius: 5px;
      border: 1px solid gray;
    }

    .ui-widget-content {
      border: 1px solid #aaaaaa;
      background: #ffffff;
      color: #222222;
    }

      .ui-widget-content a {
        color: #222222;
      }
    /* Corner radius */
    .ui-corner-all,
    .ui-corner-top,
    .ui-corner-left,
    .ui-corner-tl {
      border-top-left-radius: 5px;
    }

    .ui-corner-all,
    .ui-corner-top,
    .ui-corner-right,
    .ui-corner-tr {
      border-top-right-radius: 5px;
    }

    .ui-corner-all,
    .ui-corner-bottom,
    .ui-corner-left,
    .ui-corner-bl {
      border-bottom-left-radius: 5px;
    }

    .ui-corner-all,
    .ui-corner-bottom,
    .ui-corner-right,
    .ui-corner-br {
      border-bottom-right-radius: 5px;
    }

    .ui-widget-header {
      border: 1px solid #aaaaaa;
      background: #cccccc;
      color: #222222;
      font-weight: bold;
    }

    .caption {
      width: 100%;
      margin: 0px 0px 0px 0px;
      min-height: 20px;
      border: 1px solid #dddddd;
      font-weight: 900;
      border-top-left-radius: 5px;
      border-top-right-radius: 5px;
      padding: 4px 4px 4px 4px;
      color: #f1f1f1;
    }

    .caption-initialized {
      font-size: 14px;
      background: #b11212;
    }

    .caption-action {
      font-size: 14px;
      background: #1f8515;
    }

    .caption-page {
      font-size: 16px;
      font-weight: 900;
      background: #014464;
    }

    .cph {
      font-weight: bold;
      cursor: pointer;
      width: 100%;
      padding: 2px 2px 2px 2px;
      height: auto;
    }

    .cp {
      width: 100%;
      height: 0px;
      overflow: hidden;
    }


    .cph-blue {
      color: #16073c;
      background-color: #719DDB;
      border: 1pt solid #0094ff;
    }

    .cp-blue {
      background-color: #DCE4F9;
      border: 1pt solid #0094ff;
    }

    .cph-none {
      color: #333;
      background-color: #f7f7f7;
      border: 1pt solid #ccc;
    }

    .cp-none {
      background-color: #fff9f7;
      border: 1pt solid #ccc;
    }

    .cph-gray {
      color: #f1f1f1;
      background-color: #ff6a00;
      border: 1pt solid #585858;
    }
    
    .cp-gray {
      background-color: aliceblue;
      border: 1pt solid #585858;
    }
    .weatherreport1 {
      border: solid #0094ff 1px;
      background-color: aliceblue;
      text-align:center;
      width:50%;
      float:left;
    }
      .weatherreport1:hover {
        background-color: #16073c;
      }

a {text-decoration:none;}
    a:link {
      color: inherit;
    }
    a:visited {
      color: inherit;
    }
  </style>
  <script type="text/javascript">
    var script_wf = {
      DashboardID: 0,
      DBRowID: 0,
      cntWin: 1,
      dvURL: function (url) {
        this.cntWin = this.cntWin + 1;
        var nam = 'wTask' + this.cntWin;
        window.open(url, nam, 'left=20,top=20,width=1100,height=600,toolbar=1,resizable=1,scrollbars=1');
        return false;
      },
      addNewRecord: function (url) {
        this.cntWin = this.cntWin + 1;
        var nam = 'wTask' + this.cntWin;
        window.open(url, nam, 'left=20,top=20,width=1100,height=600,toolbar=1,resizable=1,scrollbars=1');
        return false;
      },
      getDVData: function (dbID, rowID, dvHeader, dvIcon, dvStyle, dvType) {
        this.DashboardID = dbID;
        this.DBRowID = rowID;
        var divDVData = $get('pnlDVData');
        try { divDVData.innerHTML = ''; } catch (ex) { }

        var divDVHeader = $get('pnlDVHeader');
        try { divDVHeader.innerHTML ='<h5>' + dvHeader + '</h5>'; } catch (ex) { }
        if (dvStyle != '')
          try { divDVHeader.cssText = dvStyle; } catch (ex) { }

        var divDVIcon = $get('pnlDVIcon');
        if(dvIcon!='')
         try { divDVIcon.className = 'fa fa-' + dvIcon; } catch (ex) { }
        if(dvStyle!='')
          try { divDVIcon.style.cssText = dvStyle; } catch (ex) { }

        $("#myModal").modal("show");
        this.dvLoadData();
      },
      dvLoadData: function () {
        var divDVData = $get('pnlDVData');
        try { divDVData.innerHTML = ''; } catch (ex) { }
        PageMethods.getDVData(this.DashboardID + '|' + this.DBRowID, this.DataShow, this.DataErr);
      },
      DataShow: function (r) {
        var divDVData = $get('pnlDVData');
        try { divDVData.innerHTML = r; } catch (ex) { }
        //$(this).find('.modal-body').css({
        //  width: 'auto', //probably not needed
        //  height: 'auto', //probably not needed 
        //  'max-height': '100%'
        //});

      },
      DataErr: function (ex) {
        var er = ex.get_message(); 
        //var st = ex.get_stackTrace(); 
        //var sc = ex.get_statusCode(); 
        //var et = ex.get_exceptionType(); 
        //var to = ex.get_timedOut();
        var divDVData = $get('pnlDVData');
        try { divDVData.innerHTML = er; } catch (ex) { }
      },
      dvForward: function (dbID, rowID, strPK) {
        var o = '';
        try { o = $get('remarks_' + strPK).value; } catch (ex) { }
        PageMethods.forwardDVData(dbID + '|' + rowID + '|' + strPK + '|' + o, this.DataShow, this.DataErr);
      },
      dvReverse: function (dbID, rowID, strPK) {
        try { o = $get('remarks_' + strPK).value; } catch (ex) { }
        PageMethods.reverseDVData(dbID + '|' + rowID + '|' + strPK + '|' + o, this.DataShow, this.DataErr);
      },
      reminderLoadData: function () {
        var divDVData = $get('pnlDVData');
        try { divDVData.innerHTML = ''; } catch (ex) { }
        PageMethods.getReminderData(this.DashboardID + '|' + this.DBRowID, this.DataShow, this.DataErr);
      },
      getReminderData: function (dbID, rowID, dvHeader, dvIcon, dvStyle, dvType) {
        this.DashboardID = dbID;
        this.DBRowID = rowID;
        var divDVData = $get('pnlDVData');
        try { divDVData.innerHTML = ''; } catch (ex) { }

        var divDVHeader = $get('pnlDVHeader');
        try { divDVHeader.innerHTML = '<h5>' + dvHeader + '</h5>'; } catch (ex) { }
        if (dvStyle != '')
          try { divDVHeader.cssText = dvStyle; } catch (ex) { }

        var divDVIcon = $get('pnlDVIcon');
        if (dvIcon != '')
          try { divDVIcon.className = 'fa fa-' + dvIcon; } catch (ex) { }
        if (dvStyle != '')
          try { divDVIcon.style.cssText = dvStyle; } catch (ex) { }


        $("#myModal").modal("show");
        this.reminderLoadData();
      },
      reminderReset: function () {
        PageMethods.ReminderReset(this.DashboardID + '|' + this.DBRowID);
        $("#myModal").modal("hide");
      },
      reminderUpdate: function () {
        var nv = '';
        nv =  $get('F_OnCount').checked;
        nv = nv + ',' + $get('F_CountThreshold').value;
        nv = nv + ',' + $get('F_OnAvg').checked;
        nv = nv + ',' + $get('F_LapsDaysAvg').value;
        nv = nv + ',' + $get('F_OnMax').checked;
        nv = nv + ',' + $get('F_LapsDaysMax').value;
        nv = nv + ',' + $get('F_FrequencyDays').value;
        alert(nv);
        PageMethods.ReminderUpdate(this.DashboardID + '|' + this.DBRowID + '|' + nv);
        $("#myModal").modal("hide");
      },

      temp: function () {
      }
    }
  </script>
  <style type="text/css">
   .modal-my{
    overflow-y: scroll;    
    height:350px; 
   }
  </style>
</asp:Content>
<asp:Content ID="CPHwfUserDB" ContentPlaceHolderID="cph1" runat="Server">
  <div class="ui-widget-content page">
    <div id="div2" class="caption caption-page"><i class="fa fa-2x fa-tasks" style="color:lightblue;text-shadow:2px 2px 4px #222222;"></i>
      <asp:Label ID="LabelwfDBRowCols" runat="server" Text="&nbsp;WORKFLOW DASHBOARD"></asp:Label>
      <div style="float: right; margin-top: 0px">
        <asp:ImageButton ID="cmdExit" runat="server" AlternateText="Exit" ImageUrl="~/Images/closeWindow.png" ImageAlign="Middle" Height="24px" />
      </div>
    </div>
    <div class="pagedata">
      <asp:UpdatePanel ID="UPNLwfUserDB" runat="server">
        <ContentTemplate>
          <asp:UpdateProgress ID="UPGSwfUserDB" runat="server" AssociatedUpdatePanelID="UPNLwfUserDB" DisplayAfter="100">
            <ProgressTemplate>
              <span style="color: #ff0033">Loading...</span>
            </ProgressTemplate>
          </asp:UpdateProgress>
          <table style="width: 100%">
            <tr>
              <td style="vertical-align: top; width: 50%">
                <div class="ui-widget-content ui-corner-all">
                  <div class="caption caption-action ui-corner-all" ><i class="fa fa-2x fa-check-square-o"></i>   ACTIONABLE BY ME</div>
                  <asp:DataList ID="DLwfUserDB" Width="100%" runat="server" ItemStyle-VerticalAlign="Top" RepeatColumns="2" RepeatDirection="Horizontal" RepeatLayout="Table" DataSourceID="ODSwfUserDB" DataKeyField="DashboardID">
                    <ItemTemplate>
                      <asp:Panel ID="pnlH" runat="server" CssClass='<%# Eval("GetCPHStyle") %>'>
                        <table style="width:100%">
                          <tr>
                            <td style="text-align:left;width:30px">
                              <i class='<%# Eval("GetIcon") %>' style='<%# Eval("GetIconStyle") %>' ></i>
                            </td>
                            <td style="text-align:left;margin:auto">
                              <asp:Label ID="dbDescription" runat="server" Font-Size="10px" ToolTip='<%# Eval("DBDescription") %>' Text='<%# Eval("GetDBDescription") %>'></asp:Label>
                            </td>
                            <td style="text-align:right">
                              <asp:ImageButton ID="imgH" runat="server" ImageUrl="~/images/ua.png" AlternateText="show" Style="cursor: pointer;height:20px;width:20px" />
                            </td>
                          </tr>
                        </table>
                      </asp:Panel>
                      <asp:Panel ID="pnlD" runat="server" CssClass="cp cp-gray">
                        <asp:Panel id="dbRow" runat="server"></asp:Panel>
                      </asp:Panel>
                      <AJX:CollapsiblePanelExtender ID="cpe1" runat="Server" TargetControlID="pnlD" ExpandControlID="pnlH" CollapseControlID="pnlH" Collapsed="False" CollapsedSize="0" ImageControlID="imgH" ExpandedImage="~/images/ua.png" CollapsedImage="~/images/da.png" SuppressPostBack="true" />
                    </ItemTemplate>
                  </asp:DataList>
                  <asp:ObjectDataSource
                    ID="ODSwfUserDB"
                    runat="server"
                    DataObjectTypeName="SIS.WF.wfUserDB"
                    OldValuesParameterFormatString="original_{0}"
                    SelectMethod="UZ_wfUserDBSelectList"
                    TypeName="SIS.WF.wfUserDB"
                    SelectCountMethod="wfUserDBSelectCount"
                    SortParameterName="OrderBy" EnablePaging="True">
                    <SelectParameters>
                      <asp:Parameter Name="SearchState" Type="Boolean" Direction="Input" DefaultValue="false" />
                      <asp:Parameter Name="SearchText" Type="String" Direction="Input" DefaultValue="" />
                    </SelectParameters>
                  </asp:ObjectDataSource>
                </div>
              </td>
              <td style="vertical-align: top; width: 50%">
                <div class="ui-widget-content ui-corner-all">
                  <div class="caption caption-initialized ui-corner-all"><i class="fa fa-2x fa-cogs"></i>     INITIATED BY ME</div>
                  <%--<asp:panel ID="Ipnl" Width="100%" runat="server"></asp:panel>--%>
                  <asp:DataList ID="IDLwfUserDB" Width="100%" runat="server" ItemStyle-VerticalAlign="Top" RepeatColumns="2" RepeatDirection="Horizontal" RepeatLayout="Table" DataSourceID="IODSwfUserDB" DataKeyField="DashboardID">
                    <ItemTemplate>
                      <asp:Panel ID="pnlH" runat="server" CssClass='<%# Eval("GetCPHStyle") %>'>
                        <table style="width:100%">
                          <tr>
                            <td style="text-align:left;width:30px">
                              <i class='<%# Eval("GetIcon") %>' style='<%# Eval("GetIconStyle") %>' ></i>
                            </td>
                            <td style="text-align:left;margin:auto">
                              <asp:Label ID="dbDescription" runat="server" Font-Size="10px" ToolTip='<%# Eval("DBDescription") %>'  Text='<%# Eval("GetDBDescription") %>'></asp:Label>
                            </td>
                            <td style="text-align:right">
                              <asp:ImageButton ID="imgH" runat="server" ImageUrl="~/images/ua.png" AlternateText="show" Style="cursor: pointer;height:20px;width:20px" />
                            </td>
                          </tr>
                        </table>
                      </asp:Panel>
                      <asp:Panel ID="pnlD" runat="server" CssClass="cp cp-gray">
                        <asp:Panel id="dbRow" runat="server"></asp:Panel>
                      </asp:Panel>
                      <AJX:CollapsiblePanelExtender ID="cpe1" runat="Server" TargetControlID="pnlD" ExpandControlID="pnlH" CollapseControlID="pnlH" Collapsed="False" CollapsedSize="0" ImageControlID="imgH" ExpandedImage="~/images/ua.png" CollapsedImage="~/images/da.png" SuppressPostBack="true" />
                    </ItemTemplate>
                  </asp:DataList>
                  <asp:ObjectDataSource
                    ID="IODSwfUserDB"
                    runat="server"
                    DataObjectTypeName="SIS.WF.wfUserDB"
                    OldValuesParameterFormatString="original_{0}"
                    SelectMethod="UZ_IwfUserDBSelectList"
                    TypeName="SIS.WF.wfUserDB"
                    SelectCountMethod="wfUserDBSelectCount"
                    SortParameterName="OrderBy" EnablePaging="True">
                    <SelectParameters>
                      <asp:Parameter Name="SearchState" Type="Boolean" Direction="Input" DefaultValue="false" />
                      <asp:Parameter Name="SearchText" Type="String" Direction="Input" DefaultValue="" />
                    </SelectParameters>
                  </asp:ObjectDataSource>
                </div>
              </td>
            </tr>
          </table>
          <br />
        </ContentTemplate>
      </asp:UpdatePanel>
    </div>
  </div>

  <!-- The Modal Box -->
  <div class="modal fade" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <table style="width:100%">
            <tr>
              <td>
                <i id="pnlDVIcon" class='fa fa-cloud fa-3x' style='color:gainsboro; text-shadow: 2px 2px 4px #000000;'></i>
              </td>
              <td>
                <span id="pnlDVHeader"></span>
              </td>
              <td>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
              </td>
            </tr>
          </table>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body modal-my" id="pnlDVData">
          <p>Loading content…</p>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <%-- Refresh Button NOT Required --%>
          <%--<button id="dvRefresh" type="button" class="btn btn-success" onclick="return script_wf.dvLoadData();" >Refresh</button>--%>
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>
  <!-- End Modal Box -->

</asp:Content>
