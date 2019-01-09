<script type="text/javascript"> 
var script_wfnewUserDB = {
    ACEUserID_Selected: function(sender, e) {
      var Prefix = sender._element.id.replace('UserID','');
      var F_UserID = $get(sender._element.id);
      var F_UserID_Display = $get(sender._element.id + '_Display');
      var retval = e.get_value();
      var p = retval.split('|');
      F_UserID.value = p[0];
      F_UserID_Display.innerHTML = e.get_text();
    },
    ACEUserID_Populating: function(sender,e) {
      var p = sender.get_element();
      var Prefix = sender._element.id.replace('UserID','');
      p.style.backgroundImage  = 'url(../../images/loader.gif)';
      p.style.backgroundRepeat= 'no-repeat';
      p.style.backgroundPosition = 'right';
      sender._contextKey = '';
    },
    ACEUserID_Populated: function(sender,e) {
      var p = sender.get_element();
      p.style.backgroundImage  = 'none';
    },
    ACEDashboardID_Selected: function(sender, e) {
      var Prefix = sender._element.id.replace('DashboardID','');
      var F_DashboardID = $get(sender._element.id);
      var F_DashboardID_Display = $get(sender._element.id + '_Display');
      var retval = e.get_value();
      var p = retval.split('|');
      F_DashboardID.value = p[0];
      F_DashboardID_Display.innerHTML = e.get_text();
    },
    ACEDashboardID_Populating: function(sender,e) {
      var p = sender.get_element();
      var Prefix = sender._element.id.replace('DashboardID','');
      p.style.backgroundImage  = 'url(../../images/loader.gif)';
      p.style.backgroundRepeat= 'no-repeat';
      p.style.backgroundPosition = 'right';
      sender._contextKey = '';
    },
    ACEDashboardID_Populated: function(sender,e) {
      var p = sender.get_element();
      p.style.backgroundImage  = 'none';
    },
    ACEDBRows_Selected: function(sender, e) {
      var Prefix = sender._element.id.replace('DBRows','');
      var F_DBRows = $get(sender._element.id);
      var F_DBRows_Display = $get(sender._element.id + '_Display');
      var retval = e.get_value();
      var p = retval.split('|');
      F_DBRows.value = p[1];
      F_DBRows_Display.innerHTML = e.get_text();
    },
    ACEDBRows_Populating: function(sender,e) {
      var p = sender.get_element();
      var Prefix = sender._element.id.replace('DBRows','');
      p.style.backgroundImage  = 'url(../../images/loader.gif)';
      p.style.backgroundRepeat= 'no-repeat';
      p.style.backgroundPosition = 'right';
      sender._contextKey = '';
    },
    ACEDBRows_Populated: function(sender,e) {
      var p = sender.get_element();
      p.style.backgroundImage  = 'none';
    },
    validate_UserID: function(sender) {
      var Prefix = sender.id.replace('UserID','');
      this.validated_FK_WF_newUserDB_UserID_main = true;
      this.validate_FK_WF_newUserDB_UserID(sender,Prefix);
      },
    validate_DashboardID: function(sender) {
      var Prefix = sender.id.replace('DashboardID','');
      this.validated_FK_WF_newUserDB_DashboardID_main = true;
      this.validate_FK_WF_newUserDB_DashboardID(sender,Prefix);
      },
    validate_DBRows: function(sender) {
      var Prefix = sender.id.replace('DBRows','');
      this.validated_FK_WF_newUserDB_DBRows_main = true;
      this.validate_FK_WF_newUserDB_DBRows(sender,Prefix);
      },
    validate_FK_WF_newUserDB_UserID: function(o,Prefix) {
      var value = o.id;
      var UserID = $get(Prefix + 'UserID');
      if(UserID.value==''){
        if(this.validated_FK_WF_newUserDB_UserID_main){
          var o_d = $get(Prefix + 'UserID' + '_Display');
          try{o_d.innerHTML = '';}catch(ex){}
        }
        return true;
      }
      value = value + ',' + UserID.value ;
        o.style.backgroundImage  = 'url(../../images/pkloader.gif)';
        o.style.backgroundRepeat= 'no-repeat';
        o.style.backgroundPosition = 'right';
        PageMethods.validate_FK_WF_newUserDB_UserID(value, this.validated_FK_WF_newUserDB_UserID);
      },
    validated_FK_WF_newUserDB_UserID_main: false,
    validated_FK_WF_newUserDB_UserID: function(result) {
      var p = result.split('|');
      var o = $get(p[1]);
      if(script_wfnewUserDB.validated_FK_WF_newUserDB_UserID_main){
        var o_d = $get(p[1]+'_Display');
        try{o_d.innerHTML = p[2];}catch(ex){}
      }
      o.style.backgroundImage  = 'none';
      if(p[0]=='1'){
        o.value='';
        o.focus();
      }
    },
    validate_FK_WF_newUserDB_DashboardID: function(o,Prefix) {
      var value = o.id;
      var DashboardID = $get(Prefix + 'DashboardID');
      if(DashboardID.value==''){
        if(this.validated_FK_WF_newUserDB_DashboardID_main){
          var o_d = $get(Prefix + 'DashboardID' + '_Display');
          try{o_d.innerHTML = '';}catch(ex){}
        }
        return true;
      }
      value = value + ',' + DashboardID.value ;
        o.style.backgroundImage  = 'url(../../images/pkloader.gif)';
        o.style.backgroundRepeat= 'no-repeat';
        o.style.backgroundPosition = 'right';
        PageMethods.validate_FK_WF_newUserDB_DashboardID(value, this.validated_FK_WF_newUserDB_DashboardID);
      },
    validated_FK_WF_newUserDB_DashboardID_main: false,
    validated_FK_WF_newUserDB_DashboardID: function(result) {
      var p = result.split('|');
      var o = $get(p[1]);
      if(script_wfnewUserDB.validated_FK_WF_newUserDB_DashboardID_main){
        var o_d = $get(p[1]+'_Display');
        try{o_d.innerHTML = p[2];}catch(ex){}
      }
      o.style.backgroundImage  = 'none';
      if(p[0]=='1'){
        o.value='';
        o.focus();
      }
    },
    validate_FK_WF_newUserDB_DBRows: function(o,Prefix) {
      var value = o.id;
      var DashboardID = $get(Prefix + 'DashboardID');
      if(DashboardID.value==''){
        if(this.validated_FK_WF_newUserDB_DBRows_main){
          var o_d = $get(Prefix + 'DashboardID' + '_Display');
          try{o_d.innerHTML = '';}catch(ex){}
        }
        return true;
      }
      value = value + ',' + DashboardID.value ;
      var DBRows = $get(Prefix + 'DBRows');
      if(DBRows.value==''){
        if(this.validated_FK_WF_newUserDB_DBRows_main){
          var o_d = $get(Prefix + 'DBRows' + '_Display');
          try{o_d.innerHTML = '';}catch(ex){}
        }
        return true;
      }
      value = value + ',' + DBRows.value ;
        o.style.backgroundImage  = 'url(../../images/pkloader.gif)';
        o.style.backgroundRepeat= 'no-repeat';
        o.style.backgroundPosition = 'right';
        PageMethods.validate_FK_WF_newUserDB_DBRows(value, this.validated_FK_WF_newUserDB_DBRows);
      },
    validated_FK_WF_newUserDB_DBRows_main: false,
    validated_FK_WF_newUserDB_DBRows: function(result) {
      var p = result.split('|');
      var o = $get(p[1]);
      if(script_wfnewUserDB.validated_FK_WF_newUserDB_DBRows_main){
        var o_d = $get(p[1]+'_Display');
        try{o_d.innerHTML = p[2];}catch(ex){}
      }
      o.style.backgroundImage  = 'none';
      if(p[0]=='1'){
        o.value='';
        o.focus();
      }
    },
    temp: function() {
    }
    }
</script>
