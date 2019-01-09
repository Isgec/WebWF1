<script type="text/javascript"> 
var script_wfUserDBRows = {
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
      F_DashboardID.value = p[1];
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
    ACEReminderCountDBDataID_Selected: function(sender, e) {
      var Prefix = sender._element.id.replace('ReminderCountDBDataID','');
      var F_ReminderCountDBDataID = $get(sender._element.id);
      var F_ReminderCountDBDataID_Display = $get(sender._element.id + '_Display');
      var retval = e.get_value();
      var p = retval.split('|');
      F_ReminderCountDBDataID.value = p[0];
      F_ReminderCountDBDataID_Display.innerHTML = e.get_text();
    },
    ACEReminderCountDBDataID_Populating: function(sender,e) {
      var p = sender.get_element();
      var Prefix = sender._element.id.replace('ReminderCountDBDataID','');
      p.style.backgroundImage  = 'url(../../images/loader.gif)';
      p.style.backgroundRepeat= 'no-repeat';
      p.style.backgroundPosition = 'right';
      sender._contextKey = '';
    },
    ACEReminderCountDBDataID_Populated: function(sender,e) {
      var p = sender.get_element();
      p.style.backgroundImage  = 'none';
    },
    ACEReminderAvgDBDataID_Selected: function(sender, e) {
      var Prefix = sender._element.id.replace('ReminderAvgDBDataID','');
      var F_ReminderAvgDBDataID = $get(sender._element.id);
      var F_ReminderAvgDBDataID_Display = $get(sender._element.id + '_Display');
      var retval = e.get_value();
      var p = retval.split('|');
      F_ReminderAvgDBDataID.value = p[0];
      F_ReminderAvgDBDataID_Display.innerHTML = e.get_text();
    },
    ACEReminderAvgDBDataID_Populating: function(sender,e) {
      var p = sender.get_element();
      var Prefix = sender._element.id.replace('ReminderAvgDBDataID','');
      p.style.backgroundImage  = 'url(../../images/loader.gif)';
      p.style.backgroundRepeat= 'no-repeat';
      p.style.backgroundPosition = 'right';
      sender._contextKey = '';
    },
    ACEReminderAvgDBDataID_Populated: function(sender,e) {
      var p = sender.get_element();
      p.style.backgroundImage  = 'none';
    },
    ACEReminderMaxDBDataID_Selected: function(sender, e) {
      var Prefix = sender._element.id.replace('ReminderMaxDBDataID','');
      var F_ReminderMaxDBDataID = $get(sender._element.id);
      var F_ReminderMaxDBDataID_Display = $get(sender._element.id + '_Display');
      var retval = e.get_value();
      var p = retval.split('|');
      F_ReminderMaxDBDataID.value = p[0];
      F_ReminderMaxDBDataID_Display.innerHTML = e.get_text();
    },
    ACEReminderMaxDBDataID_Populating: function(sender,e) {
      var p = sender.get_element();
      var Prefix = sender._element.id.replace('ReminderMaxDBDataID','');
      p.style.backgroundImage  = 'url(../../images/loader.gif)';
      p.style.backgroundRepeat= 'no-repeat';
      p.style.backgroundPosition = 'right';
      sender._contextKey = '';
    },
    ACEReminderMaxDBDataID_Populated: function(sender,e) {
      var p = sender.get_element();
      p.style.backgroundImage  = 'none';
    },
    validate_ReminderCountDBDataID: function(sender) {
      var Prefix = sender.id.replace('ReminderCountDBDataID','');
      this.validated_FK_WF_UserDBRows_ReminderCountDBDataID_main = true;
      this.validate_FK_WF_UserDBRows_ReminderCountDBDataID(sender,Prefix);
      },
    validate_ReminderAvgDBDataID: function(sender) {
      var Prefix = sender.id.replace('ReminderAvgDBDataID','');
      this.validated_FK_WF_UserDBRows_ReminderAvgDBDataID_main = true;
      this.validate_FK_WF_UserDBRows_ReminderAvgDBDataID(sender,Prefix);
      },
    validate_ReminderMaxDBDataID: function(sender) {
      var Prefix = sender.id.replace('ReminderMaxDBDataID','');
      this.validated_FK_WF_UserDBRows_ReminderMaxDBDataID_main = true;
      this.validate_FK_WF_UserDBRows_ReminderMaxDBDataID(sender,Prefix);
      },
    validate_FK_WF_UserDBRows_ReminderCountDBDataID: function(o,Prefix) {
      var value = o.id;
      var ReminderCountDBDataID = $get(Prefix + 'ReminderCountDBDataID');
      if(ReminderCountDBDataID.value==''){
        if(this.validated_FK_WF_UserDBRows_ReminderCountDBDataID_main){
          var o_d = $get(Prefix + 'ReminderCountDBDataID' + '_Display');
          try{o_d.innerHTML = '';}catch(ex){}
        }
        return true;
      }
      value = value + ',' + ReminderCountDBDataID.value ;
        o.style.backgroundImage  = 'url(../../images/pkloader.gif)';
        o.style.backgroundRepeat= 'no-repeat';
        o.style.backgroundPosition = 'right';
        PageMethods.validate_FK_WF_UserDBRows_ReminderCountDBDataID(value, this.validated_FK_WF_UserDBRows_ReminderCountDBDataID);
      },
    validated_FK_WF_UserDBRows_ReminderCountDBDataID_main: false,
    validated_FK_WF_UserDBRows_ReminderCountDBDataID: function(result) {
      var p = result.split('|');
      var o = $get(p[1]);
      if(script_wfUserDBRows.validated_FK_WF_UserDBRows_ReminderCountDBDataID_main){
        var o_d = $get(p[1]+'_Display');
        try{o_d.innerHTML = p[2];}catch(ex){}
      }
      o.style.backgroundImage  = 'none';
      if(p[0]=='1'){
        o.value='';
        o.focus();
      }
    },
    validate_FK_WF_UserDBRows_ReminderAvgDBDataID: function(o,Prefix) {
      var value = o.id;
      var ReminderAvgDBDataID = $get(Prefix + 'ReminderAvgDBDataID');
      if(ReminderAvgDBDataID.value==''){
        if(this.validated_FK_WF_UserDBRows_ReminderAvgDBDataID_main){
          var o_d = $get(Prefix + 'ReminderAvgDBDataID' + '_Display');
          try{o_d.innerHTML = '';}catch(ex){}
        }
        return true;
      }
      value = value + ',' + ReminderAvgDBDataID.value ;
        o.style.backgroundImage  = 'url(../../images/pkloader.gif)';
        o.style.backgroundRepeat= 'no-repeat';
        o.style.backgroundPosition = 'right';
        PageMethods.validate_FK_WF_UserDBRows_ReminderAvgDBDataID(value, this.validated_FK_WF_UserDBRows_ReminderAvgDBDataID);
      },
    validated_FK_WF_UserDBRows_ReminderAvgDBDataID_main: false,
    validated_FK_WF_UserDBRows_ReminderAvgDBDataID: function(result) {
      var p = result.split('|');
      var o = $get(p[1]);
      if(script_wfUserDBRows.validated_FK_WF_UserDBRows_ReminderAvgDBDataID_main){
        var o_d = $get(p[1]+'_Display');
        try{o_d.innerHTML = p[2];}catch(ex){}
      }
      o.style.backgroundImage  = 'none';
      if(p[0]=='1'){
        o.value='';
        o.focus();
      }
    },
    validate_FK_WF_UserDBRows_ReminderMaxDBDataID: function(o,Prefix) {
      var value = o.id;
      var ReminderMaxDBDataID = $get(Prefix + 'ReminderMaxDBDataID');
      if(ReminderMaxDBDataID.value==''){
        if(this.validated_FK_WF_UserDBRows_ReminderMaxDBDataID_main){
          var o_d = $get(Prefix + 'ReminderMaxDBDataID' + '_Display');
          try{o_d.innerHTML = '';}catch(ex){}
        }
        return true;
      }
      value = value + ',' + ReminderMaxDBDataID.value ;
        o.style.backgroundImage  = 'url(../../images/pkloader.gif)';
        o.style.backgroundRepeat= 'no-repeat';
        o.style.backgroundPosition = 'right';
        PageMethods.validate_FK_WF_UserDBRows_ReminderMaxDBDataID(value, this.validated_FK_WF_UserDBRows_ReminderMaxDBDataID);
      },
    validated_FK_WF_UserDBRows_ReminderMaxDBDataID_main: false,
    validated_FK_WF_UserDBRows_ReminderMaxDBDataID: function(result) {
      var p = result.split('|');
      var o = $get(p[1]);
      if(script_wfUserDBRows.validated_FK_WF_UserDBRows_ReminderMaxDBDataID_main){
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
