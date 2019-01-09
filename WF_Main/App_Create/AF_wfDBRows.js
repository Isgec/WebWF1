<script type="text/javascript"> 
var script_wfDBRows = {
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
    ACEParentDBRows_Selected: function(sender, e) {
      var Prefix = sender._element.id.replace('ParentDBRows','');
      var F_ParentDBRows = $get(sender._element.id);
      var F_ParentDBRows_Display = $get(sender._element.id + '_Display');
      var retval = e.get_value();
      var p = retval.split('|');
      F_ParentDBRows.value = p[1];
      F_ParentDBRows_Display.innerHTML = e.get_text();
    },
    ACEParentDBRows_Populating: function(sender,e) {
      var p = sender.get_element();
      var Prefix = sender._element.id.replace('ParentDBRows','');
      p.style.backgroundImage  = 'url(../../images/loader.gif)';
      p.style.backgroundRepeat= 'no-repeat';
      p.style.backgroundPosition = 'right';
      sender._contextKey = '';
    },
    ACEParentDBRows_Populated: function(sender,e) {
      var p = sender.get_element();
      p.style.backgroundImage  = 'none';
    },
    ACEMainDBDataID_Selected: function(sender, e) {
      var Prefix = sender._element.id.replace('MainDBDataID','');
      var F_MainDBDataID = $get(sender._element.id);
      var F_MainDBDataID_Display = $get(sender._element.id + '_Display');
      var retval = e.get_value();
      var p = retval.split('|');
      F_MainDBDataID.value = p[0];
      F_MainDBDataID_Display.innerHTML = e.get_text();
    },
    ACEMainDBDataID_Populating: function(sender,e) {
      var p = sender.get_element();
      var Prefix = sender._element.id.replace('MainDBDataID','');
      p.style.backgroundImage  = 'url(../../images/loader.gif)';
      p.style.backgroundRepeat= 'no-repeat';
      p.style.backgroundPosition = 'right';
      sender._contextKey = '';
    },
    ACEMainDBDataID_Populated: function(sender,e) {
      var p = sender.get_element();
      p.style.backgroundImage  = 'none';
    },
    ACEMainDBIconID_Selected: function(sender, e) {
      var Prefix = sender._element.id.replace('MainDBIconID','');
      var F_MainDBIconID = $get(sender._element.id);
      var F_MainDBIconID_Display = $get(sender._element.id + '_Display');
      var retval = e.get_value();
      var p = retval.split('|');
      F_MainDBIconID.value = p[0];
      F_MainDBIconID_Display.innerHTML = e.get_text();
    },
    ACEMainDBIconID_Populating: function(sender,e) {
      var p = sender.get_element();
      var Prefix = sender._element.id.replace('MainDBIconID','');
      p.style.backgroundImage  = 'url(../../images/loader.gif)';
      p.style.backgroundRepeat= 'no-repeat';
      p.style.backgroundPosition = 'right';
      sender._contextKey = '';
    },
    ACEMainDBIconID_Populated: function(sender,e) {
      var p = sender.get_element();
      p.style.backgroundImage  = 'none';
    },
    ACEDVDBIconID_Selected: function(sender, e) {
      var Prefix = sender._element.id.replace('DVDBIconID','');
      var F_DVDBIconID = $get(sender._element.id);
      var F_DVDBIconID_Display = $get(sender._element.id + '_Display');
      var retval = e.get_value();
      var p = retval.split('|');
      F_DVDBIconID.value = p[0];
      F_DVDBIconID_Display.innerHTML = e.get_text();
    },
    ACEDVDBIconID_Populating: function(sender,e) {
      var p = sender.get_element();
      var Prefix = sender._element.id.replace('DVDBIconID','');
      p.style.backgroundImage  = 'url(../../images/loader.gif)';
      p.style.backgroundRepeat= 'no-repeat';
      p.style.backgroundPosition = 'right';
      sender._contextKey = '';
    },
    ACEDVDBIconID_Populated: function(sender,e) {
      var p = sender.get_element();
      p.style.backgroundImage  = 'none';
    },
    ACEDVDBDataID_Selected: function(sender, e) {
      var Prefix = sender._element.id.replace('DVDBDataID','');
      var F_DVDBDataID = $get(sender._element.id);
      var F_DVDBDataID_Display = $get(sender._element.id + '_Display');
      var retval = e.get_value();
      var p = retval.split('|');
      F_DVDBDataID.value = p[0];
      F_DVDBDataID_Display.innerHTML = e.get_text();
    },
    ACEDVDBDataID_Populating: function(sender,e) {
      var p = sender.get_element();
      var Prefix = sender._element.id.replace('DVDBDataID','');
      p.style.backgroundImage  = 'url(../../images/loader.gif)';
      p.style.backgroundRepeat= 'no-repeat';
      p.style.backgroundPosition = 'right';
      sender._contextKey = '';
    },
    ACEDVDBDataID_Populated: function(sender,e) {
      var p = sender.get_element();
      p.style.backgroundImage  = 'none';
    },
    ACEDVRemarksDBIconID_Selected: function(sender, e) {
      var Prefix = sender._element.id.replace('DVRemarksDBIconID','');
      var F_DVRemarksDBIconID = $get(sender._element.id);
      var F_DVRemarksDBIconID_Display = $get(sender._element.id + '_Display');
      var retval = e.get_value();
      var p = retval.split('|');
      F_DVRemarksDBIconID.value = p[0];
      F_DVRemarksDBIconID_Display.innerHTML = e.get_text();
    },
    ACEDVRemarksDBIconID_Populating: function(sender,e) {
      var p = sender.get_element();
      var Prefix = sender._element.id.replace('DVRemarksDBIconID','');
      p.style.backgroundImage  = 'url(../../images/loader.gif)';
      p.style.backgroundRepeat= 'no-repeat';
      p.style.backgroundPosition = 'right';
      sender._contextKey = '';
    },
    ACEDVRemarksDBIconID_Populated: function(sender,e) {
      var p = sender.get_element();
      p.style.backgroundImage  = 'none';
    },
    ACEDVFDBIconID_Selected: function(sender, e) {
      var Prefix = sender._element.id.replace('DVFDBIconID','');
      var F_DVFDBIconID = $get(sender._element.id);
      var F_DVFDBIconID_Display = $get(sender._element.id + '_Display');
      var retval = e.get_value();
      var p = retval.split('|');
      F_DVFDBIconID.value = p[0];
      F_DVFDBIconID_Display.innerHTML = e.get_text();
    },
    ACEDVFDBIconID_Populating: function(sender,e) {
      var p = sender.get_element();
      var Prefix = sender._element.id.replace('DVFDBIconID','');
      p.style.backgroundImage  = 'url(../../images/loader.gif)';
      p.style.backgroundRepeat= 'no-repeat';
      p.style.backgroundPosition = 'right';
      sender._contextKey = '';
    },
    ACEDVFDBIconID_Populated: function(sender,e) {
      var p = sender.get_element();
      p.style.backgroundImage  = 'none';
    },
    ACEDVForwardDBDataID_Selected: function(sender, e) {
      var Prefix = sender._element.id.replace('DVForwardDBDataID','');
      var F_DVForwardDBDataID = $get(sender._element.id);
      var F_DVForwardDBDataID_Display = $get(sender._element.id + '_Display');
      var retval = e.get_value();
      var p = retval.split('|');
      F_DVForwardDBDataID.value = p[0];
      F_DVForwardDBDataID_Display.innerHTML = e.get_text();
    },
    ACEDVForwardDBDataID_Populating: function(sender,e) {
      var p = sender.get_element();
      var Prefix = sender._element.id.replace('DVForwardDBDataID','');
      p.style.backgroundImage  = 'url(../../images/loader.gif)';
      p.style.backgroundRepeat= 'no-repeat';
      p.style.backgroundPosition = 'right';
      sender._contextKey = '';
    },
    ACEDVForwardDBDataID_Populated: function(sender,e) {
      var p = sender.get_element();
      p.style.backgroundImage  = 'none';
    },
    ACEDVRDBIconID_Selected: function(sender, e) {
      var Prefix = sender._element.id.replace('DVRDBIconID','');
      var F_DVRDBIconID = $get(sender._element.id);
      var F_DVRDBIconID_Display = $get(sender._element.id + '_Display');
      var retval = e.get_value();
      var p = retval.split('|');
      F_DVRDBIconID.value = p[0];
      F_DVRDBIconID_Display.innerHTML = e.get_text();
    },
    ACEDVRDBIconID_Populating: function(sender,e) {
      var p = sender.get_element();
      var Prefix = sender._element.id.replace('DVRDBIconID','');
      p.style.backgroundImage  = 'url(../../images/loader.gif)';
      p.style.backgroundRepeat= 'no-repeat';
      p.style.backgroundPosition = 'right';
      sender._contextKey = '';
    },
    ACEDVRDBIconID_Populated: function(sender,e) {
      var p = sender.get_element();
      p.style.backgroundImage  = 'none';
    },
    ACEDVReverseDBDataID_Selected: function(sender, e) {
      var Prefix = sender._element.id.replace('DVReverseDBDataID','');
      var F_DVReverseDBDataID = $get(sender._element.id);
      var F_DVReverseDBDataID_Display = $get(sender._element.id + '_Display');
      var retval = e.get_value();
      var p = retval.split('|');
      F_DVReverseDBDataID.value = p[0];
      F_DVReverseDBDataID_Display.innerHTML = e.get_text();
    },
    ACEDVReverseDBDataID_Populating: function(sender,e) {
      var p = sender.get_element();
      var Prefix = sender._element.id.replace('DVReverseDBDataID','');
      p.style.backgroundImage  = 'url(../../images/loader.gif)';
      p.style.backgroundRepeat= 'no-repeat';
      p.style.backgroundPosition = 'right';
      sender._contextKey = '';
    },
    ACEDVReverseDBDataID_Populated: function(sender,e) {
      var p = sender.get_element();
      p.style.backgroundImage  = 'none';
    },
    ACEDVAttachmentDBIconID_Selected: function(sender, e) {
      var Prefix = sender._element.id.replace('DVAttachmentDBIconID','');
      var F_DVAttachmentDBIconID = $get(sender._element.id);
      var F_DVAttachmentDBIconID_Display = $get(sender._element.id + '_Display');
      var retval = e.get_value();
      var p = retval.split('|');
      F_DVAttachmentDBIconID.value = p[0];
      F_DVAttachmentDBIconID_Display.innerHTML = e.get_text();
    },
    ACEDVAttachmentDBIconID_Populating: function(sender,e) {
      var p = sender.get_element();
      var Prefix = sender._element.id.replace('DVAttachmentDBIconID','');
      p.style.backgroundImage  = 'url(../../images/loader.gif)';
      p.style.backgroundRepeat= 'no-repeat';
      p.style.backgroundPosition = 'right';
      sender._contextKey = '';
    },
    ACEDVAttachmentDBIconID_Populated: function(sender,e) {
      var p = sender.get_element();
      p.style.backgroundImage  = 'none';
    },
    ACEDVFEMailDBDataID_Selected: function(sender, e) {
      var Prefix = sender._element.id.replace('DVFEMailDBDataID','');
      var F_DVFEMailDBDataID = $get(sender._element.id);
      var F_DVFEMailDBDataID_Display = $get(sender._element.id + '_Display');
      var retval = e.get_value();
      var p = retval.split('|');
      F_DVFEMailDBDataID.value = p[0];
      F_DVFEMailDBDataID_Display.innerHTML = e.get_text();
    },
    ACEDVFEMailDBDataID_Populating: function(sender,e) {
      var p = sender.get_element();
      var Prefix = sender._element.id.replace('DVFEMailDBDataID','');
      p.style.backgroundImage  = 'url(../../images/loader.gif)';
      p.style.backgroundRepeat= 'no-repeat';
      p.style.backgroundPosition = 'right';
      sender._contextKey = '';
    },
    ACEDVFEMailDBDataID_Populated: function(sender,e) {
      var p = sender.get_element();
      p.style.backgroundImage  = 'none';
    },
    ACEDVFSMSDBDataID_Selected: function(sender, e) {
      var Prefix = sender._element.id.replace('DVFSMSDBDataID','');
      var F_DVFSMSDBDataID = $get(sender._element.id);
      var F_DVFSMSDBDataID_Display = $get(sender._element.id + '_Display');
      var retval = e.get_value();
      var p = retval.split('|');
      F_DVFSMSDBDataID.value = p[0];
      F_DVFSMSDBDataID_Display.innerHTML = e.get_text();
    },
    ACEDVFSMSDBDataID_Populating: function(sender,e) {
      var p = sender.get_element();
      var Prefix = sender._element.id.replace('DVFSMSDBDataID','');
      p.style.backgroundImage  = 'url(../../images/loader.gif)';
      p.style.backgroundRepeat= 'no-repeat';
      p.style.backgroundPosition = 'right';
      sender._contextKey = '';
    },
    ACEDVFSMSDBDataID_Populated: function(sender,e) {
      var p = sender.get_element();
      p.style.backgroundImage  = 'none';
    },
    ACEDVREMailDBDataID_Selected: function(sender, e) {
      var Prefix = sender._element.id.replace('DVREMailDBDataID','');
      var F_DVREMailDBDataID = $get(sender._element.id);
      var F_DVREMailDBDataID_Display = $get(sender._element.id + '_Display');
      var retval = e.get_value();
      var p = retval.split('|');
      F_DVREMailDBDataID.value = p[0];
      F_DVREMailDBDataID_Display.innerHTML = e.get_text();
    },
    ACEDVREMailDBDataID_Populating: function(sender,e) {
      var p = sender.get_element();
      var Prefix = sender._element.id.replace('DVREMailDBDataID','');
      p.style.backgroundImage  = 'url(../../images/loader.gif)';
      p.style.backgroundRepeat= 'no-repeat';
      p.style.backgroundPosition = 'right';
      sender._contextKey = '';
    },
    ACEDVREMailDBDataID_Populated: function(sender,e) {
      var p = sender.get_element();
      p.style.backgroundImage  = 'none';
    },
    ACEDVRSMSDBDataID_Selected: function(sender, e) {
      var Prefix = sender._element.id.replace('DVRSMSDBDataID','');
      var F_DVRSMSDBDataID = $get(sender._element.id);
      var F_DVRSMSDBDataID_Display = $get(sender._element.id + '_Display');
      var retval = e.get_value();
      var p = retval.split('|');
      F_DVRSMSDBDataID.value = p[0];
      F_DVRSMSDBDataID_Display.innerHTML = e.get_text();
    },
    ACEDVRSMSDBDataID_Populating: function(sender,e) {
      var p = sender.get_element();
      var Prefix = sender._element.id.replace('DVRSMSDBDataID','');
      p.style.backgroundImage  = 'url(../../images/loader.gif)';
      p.style.backgroundRepeat= 'no-repeat';
      p.style.backgroundPosition = 'right';
      sender._contextKey = '';
    },
    ACEDVRSMSDBDataID_Populated: function(sender,e) {
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
    ACEReminderEMailDBDataID_Selected: function(sender, e) {
      var Prefix = sender._element.id.replace('ReminderEMailDBDataID','');
      var F_ReminderEMailDBDataID = $get(sender._element.id);
      var F_ReminderEMailDBDataID_Display = $get(sender._element.id + '_Display');
      var retval = e.get_value();
      var p = retval.split('|');
      F_ReminderEMailDBDataID.value = p[0];
      F_ReminderEMailDBDataID_Display.innerHTML = e.get_text();
    },
    ACEReminderEMailDBDataID_Populating: function(sender,e) {
      var p = sender.get_element();
      var Prefix = sender._element.id.replace('ReminderEMailDBDataID','');
      p.style.backgroundImage  = 'url(../../images/loader.gif)';
      p.style.backgroundRepeat= 'no-repeat';
      p.style.backgroundPosition = 'right';
      sender._contextKey = '';
    },
    ACEReminderEMailDBDataID_Populated: function(sender,e) {
      var p = sender.get_element();
      p.style.backgroundImage  = 'none';
    },
    ACEReminderSMSDBDataID_Selected: function(sender, e) {
      var Prefix = sender._element.id.replace('ReminderSMSDBDataID','');
      var F_ReminderSMSDBDataID = $get(sender._element.id);
      var F_ReminderSMSDBDataID_Display = $get(sender._element.id + '_Display');
      var retval = e.get_value();
      var p = retval.split('|');
      F_ReminderSMSDBDataID.value = p[0];
      F_ReminderSMSDBDataID_Display.innerHTML = e.get_text();
    },
    ACEReminderSMSDBDataID_Populating: function(sender,e) {
      var p = sender.get_element();
      var Prefix = sender._element.id.replace('ReminderSMSDBDataID','');
      p.style.backgroundImage  = 'url(../../images/loader.gif)';
      p.style.backgroundRepeat= 'no-repeat';
      p.style.backgroundPosition = 'right';
      sender._contextKey = '';
    },
    ACEReminderSMSDBDataID_Populated: function(sender,e) {
      var p = sender.get_element();
      p.style.backgroundImage  = 'none';
    },
    ACETotSqlIDLeft_Selected: function(sender, e) {
      var Prefix = sender._element.id.replace('TotSqlIDLeft','');
      var F_TotSqlIDLeft = $get(sender._element.id);
      var F_TotSqlIDLeft_Display = $get(sender._element.id + '_Display');
      var retval = e.get_value();
      var p = retval.split('|');
      F_TotSqlIDLeft.value = p[0];
      F_TotSqlIDLeft_Display.innerHTML = e.get_text();
    },
    ACETotSqlIDLeft_Populating: function(sender,e) {
      var p = sender.get_element();
      var Prefix = sender._element.id.replace('TotSqlIDLeft','');
      p.style.backgroundImage  = 'url(../../images/loader.gif)';
      p.style.backgroundRepeat= 'no-repeat';
      p.style.backgroundPosition = 'right';
      sender._contextKey = '';
    },
    ACETotSqlIDLeft_Populated: function(sender,e) {
      var p = sender.get_element();
      p.style.backgroundImage  = 'none';
    },
    ACERedSqlIDLeft_Selected: function(sender, e) {
      var Prefix = sender._element.id.replace('RedSqlIDLeft','');
      var F_RedSqlIDLeft = $get(sender._element.id);
      var F_RedSqlIDLeft_Display = $get(sender._element.id + '_Display');
      var retval = e.get_value();
      var p = retval.split('|');
      F_RedSqlIDLeft.value = p[0];
      F_RedSqlIDLeft_Display.innerHTML = e.get_text();
    },
    ACERedSqlIDLeft_Populating: function(sender,e) {
      var p = sender.get_element();
      var Prefix = sender._element.id.replace('RedSqlIDLeft','');
      p.style.backgroundImage  = 'url(../../images/loader.gif)';
      p.style.backgroundRepeat= 'no-repeat';
      p.style.backgroundPosition = 'right';
      sender._contextKey = '';
    },
    ACERedSqlIDLeft_Populated: function(sender,e) {
      var p = sender.get_element();
      p.style.backgroundImage  = 'none';
    },
    ACEAmbSqlIDLeft_Selected: function(sender, e) {
      var Prefix = sender._element.id.replace('AmbSqlIDLeft','');
      var F_AmbSqlIDLeft = $get(sender._element.id);
      var F_AmbSqlIDLeft_Display = $get(sender._element.id + '_Display');
      var retval = e.get_value();
      var p = retval.split('|');
      F_AmbSqlIDLeft.value = p[0];
      F_AmbSqlIDLeft_Display.innerHTML = e.get_text();
    },
    ACEAmbSqlIDLeft_Populating: function(sender,e) {
      var p = sender.get_element();
      var Prefix = sender._element.id.replace('AmbSqlIDLeft','');
      p.style.backgroundImage  = 'url(../../images/loader.gif)';
      p.style.backgroundRepeat= 'no-repeat';
      p.style.backgroundPosition = 'right';
      sender._contextKey = '';
    },
    ACEAmbSqlIDLeft_Populated: function(sender,e) {
      var p = sender.get_element();
      p.style.backgroundImage  = 'none';
    },
    ACEGreSqlIDLeft_Selected: function(sender, e) {
      var Prefix = sender._element.id.replace('GreSqlIDLeft','');
      var F_GreSqlIDLeft = $get(sender._element.id);
      var F_GreSqlIDLeft_Display = $get(sender._element.id + '_Display');
      var retval = e.get_value();
      var p = retval.split('|');
      F_GreSqlIDLeft.value = p[0];
      F_GreSqlIDLeft_Display.innerHTML = e.get_text();
    },
    ACEGreSqlIDLeft_Populating: function(sender,e) {
      var p = sender.get_element();
      var Prefix = sender._element.id.replace('GreSqlIDLeft','');
      p.style.backgroundImage  = 'url(../../images/loader.gif)';
      p.style.backgroundRepeat= 'no-repeat';
      p.style.backgroundPosition = 'right';
      sender._contextKey = '';
    },
    ACEGreSqlIDLeft_Populated: function(sender,e) {
      var p = sender.get_element();
      p.style.backgroundImage  = 'none';
    },
    ACETotSqlIDRight_Selected: function(sender, e) {
      var Prefix = sender._element.id.replace('TotSqlIDRight','');
      var F_TotSqlIDRight = $get(sender._element.id);
      var F_TotSqlIDRight_Display = $get(sender._element.id + '_Display');
      var retval = e.get_value();
      var p = retval.split('|');
      F_TotSqlIDRight.value = p[0];
      F_TotSqlIDRight_Display.innerHTML = e.get_text();
    },
    ACETotSqlIDRight_Populating: function(sender,e) {
      var p = sender.get_element();
      var Prefix = sender._element.id.replace('TotSqlIDRight','');
      p.style.backgroundImage  = 'url(../../images/loader.gif)';
      p.style.backgroundRepeat= 'no-repeat';
      p.style.backgroundPosition = 'right';
      sender._contextKey = '';
    },
    ACETotSqlIDRight_Populated: function(sender,e) {
      var p = sender.get_element();
      p.style.backgroundImage  = 'none';
    },
    ACERedSqlIDRight_Selected: function(sender, e) {
      var Prefix = sender._element.id.replace('RedSqlIDRight','');
      var F_RedSqlIDRight = $get(sender._element.id);
      var F_RedSqlIDRight_Display = $get(sender._element.id + '_Display');
      var retval = e.get_value();
      var p = retval.split('|');
      F_RedSqlIDRight.value = p[0];
      F_RedSqlIDRight_Display.innerHTML = e.get_text();
    },
    ACERedSqlIDRight_Populating: function(sender,e) {
      var p = sender.get_element();
      var Prefix = sender._element.id.replace('RedSqlIDRight','');
      p.style.backgroundImage  = 'url(../../images/loader.gif)';
      p.style.backgroundRepeat= 'no-repeat';
      p.style.backgroundPosition = 'right';
      sender._contextKey = '';
    },
    ACERedSqlIDRight_Populated: function(sender,e) {
      var p = sender.get_element();
      p.style.backgroundImage  = 'none';
    },
    ACEAmbSqlIDRight_Selected: function(sender, e) {
      var Prefix = sender._element.id.replace('AmbSqlIDRight','');
      var F_AmbSqlIDRight = $get(sender._element.id);
      var F_AmbSqlIDRight_Display = $get(sender._element.id + '_Display');
      var retval = e.get_value();
      var p = retval.split('|');
      F_AmbSqlIDRight.value = p[0];
      F_AmbSqlIDRight_Display.innerHTML = e.get_text();
    },
    ACEAmbSqlIDRight_Populating: function(sender,e) {
      var p = sender.get_element();
      var Prefix = sender._element.id.replace('AmbSqlIDRight','');
      p.style.backgroundImage  = 'url(../../images/loader.gif)';
      p.style.backgroundRepeat= 'no-repeat';
      p.style.backgroundPosition = 'right';
      sender._contextKey = '';
    },
    ACEAmbSqlIDRight_Populated: function(sender,e) {
      var p = sender.get_element();
      p.style.backgroundImage  = 'none';
    },
    ACEGreSqlIDRight_Selected: function(sender, e) {
      var Prefix = sender._element.id.replace('GreSqlIDRight','');
      var F_GreSqlIDRight = $get(sender._element.id);
      var F_GreSqlIDRight_Display = $get(sender._element.id + '_Display');
      var retval = e.get_value();
      var p = retval.split('|');
      F_GreSqlIDRight.value = p[0];
      F_GreSqlIDRight_Display.innerHTML = e.get_text();
    },
    ACEGreSqlIDRight_Populating: function(sender,e) {
      var p = sender.get_element();
      var Prefix = sender._element.id.replace('GreSqlIDRight','');
      p.style.backgroundImage  = 'url(../../images/loader.gif)';
      p.style.backgroundRepeat= 'no-repeat';
      p.style.backgroundPosition = 'right';
      sender._contextKey = '';
    },
    ACEGreSqlIDRight_Populated: function(sender,e) {
      var p = sender.get_element();
      p.style.backgroundImage  = 'none';
    },
    validate_DashboardID: function(sender) {
      var Prefix = sender.id.replace('DashboardID','');
      this.validated_FK_WF_DBRows_DashboardID_main = true;
      this.validate_FK_WF_DBRows_DashboardID(sender,Prefix);
      },
    validate_ParentDBRows: function(sender) {
      var Prefix = sender.id.replace('ParentDBRows','');
      this.validated_FK_WF_DBRows_ParentDBRows_main = true;
      this.validate_FK_WF_DBRows_ParentDBRows(sender,Prefix);
      },
    validate_MainDBDataID: function(sender) {
      var Prefix = sender.id.replace('MainDBDataID','');
      this.validated_FK_WF_DBRows_MainDBID_main = true;
      this.validate_FK_WF_DBRows_MainDBID(sender,Prefix);
      },
    validate_MainDBIconID: function(sender) {
      var Prefix = sender.id.replace('MainDBIconID','');
      this.validated_FK_WF_DBRows_MainDBIconID_main = true;
      this.validate_FK_WF_DBRows_MainDBIconID(sender,Prefix);
      },
    validate_DVDBIconID: function(sender) {
      var Prefix = sender.id.replace('DVDBIconID','');
      this.validated_FK_WF_DBRows_DVDBIconID_main = true;
      this.validate_FK_WF_DBRows_DVDBIconID(sender,Prefix);
      },
    validate_DVDBDataID: function(sender) {
      var Prefix = sender.id.replace('DVDBDataID','');
      this.validated_FK_WF_DBRows_DVDBDataID_main = true;
      this.validate_FK_WF_DBRows_DVDBDataID(sender,Prefix);
      },
    validate_DVRemarksDBIconID: function(sender) {
      var Prefix = sender.id.replace('DVRemarksDBIconID','');
      this.validated_FK_WF_DBRows_DVRemarksDBIconID_main = true;
      this.validate_FK_WF_DBRows_DVRemarksDBIconID(sender,Prefix);
      },
    validate_DVFDBIconID: function(sender) {
      var Prefix = sender.id.replace('DVFDBIconID','');
      this.validated_FK_WF_DBRows_DVFDBIconID_main = true;
      this.validate_FK_WF_DBRows_DVFDBIconID(sender,Prefix);
      },
    validate_DVForwardDBDataID: function(sender) {
      var Prefix = sender.id.replace('DVForwardDBDataID','');
      this.validated_FK_WF_DBRows_DVForwardDBDataID_main = true;
      this.validate_FK_WF_DBRows_DVForwardDBDataID(sender,Prefix);
      },
    validate_DVRDBIconID: function(sender) {
      var Prefix = sender.id.replace('DVRDBIconID','');
      this.validated_FK_WF_DBRows_DVRDBIconID_main = true;
      this.validate_FK_WF_DBRows_DVRDBIconID(sender,Prefix);
      },
    validate_DVReverseDBDataID: function(sender) {
      var Prefix = sender.id.replace('DVReverseDBDataID','');
      this.validated_FK_WF_DBRows_DVReverseDBDataID_main = true;
      this.validate_FK_WF_DBRows_DVReverseDBDataID(sender,Prefix);
      },
    validate_DVAttachmentDBIconID: function(sender) {
      var Prefix = sender.id.replace('DVAttachmentDBIconID','');
      this.validated_FK_WF_DBRows_DVAttachmentDBIconID_main = true;
      this.validate_FK_WF_DBRows_DVAttachmentDBIconID(sender,Prefix);
      },
    validate_DVFEMailDBDataID: function(sender) {
      var Prefix = sender.id.replace('DVFEMailDBDataID','');
      this.validated_FK_WF_DBRows_DVFEMailDBDataID_main = true;
      this.validate_FK_WF_DBRows_DVFEMailDBDataID(sender,Prefix);
      },
    validate_DVFSMSDBDataID: function(sender) {
      var Prefix = sender.id.replace('DVFSMSDBDataID','');
      this.validated_FK_WF_DBRows_DVFSMSDBDataID_main = true;
      this.validate_FK_WF_DBRows_DVFSMSDBDataID(sender,Prefix);
      },
    validate_DVREMailDBDataID: function(sender) {
      var Prefix = sender.id.replace('DVREMailDBDataID','');
      this.validated_FK_WF_DBRows_DVREMailDBDataID_main = true;
      this.validate_FK_WF_DBRows_DVREMailDBDataID(sender,Prefix);
      },
    validate_DVRSMSDBDataID: function(sender) {
      var Prefix = sender.id.replace('DVRSMSDBDataID','');
      this.validated_FK_WF_DBRows_DVRSMSDBDataID_main = true;
      this.validate_FK_WF_DBRows_DVRSMSDBDataID(sender,Prefix);
      },
    validate_ReminderCountDBDataID: function(sender) {
      var Prefix = sender.id.replace('ReminderCountDBDataID','');
      this.validated_FK_WF_DBRows_ReminderCountDBDataID_main = true;
      this.validate_FK_WF_DBRows_ReminderCountDBDataID(sender,Prefix);
      },
    validate_ReminderAvgDBDataID: function(sender) {
      var Prefix = sender.id.replace('ReminderAvgDBDataID','');
      this.validated_FK_WF_DBRows_ReminderAVGDBDataID_main = true;
      this.validate_FK_WF_DBRows_ReminderAVGDBDataID(sender,Prefix);
      },
    validate_ReminderMaxDBDataID: function(sender) {
      var Prefix = sender.id.replace('ReminderMaxDBDataID','');
      this.validated_FK_WF_DBRows_ReminderMaxDBDataID_main = true;
      this.validate_FK_WF_DBRows_ReminderMaxDBDataID(sender,Prefix);
      },
    validate_ReminderEMailDBDataID: function(sender) {
      var Prefix = sender.id.replace('ReminderEMailDBDataID','');
      this.validated_FK_WF_DBRows_ReminderEMailDBDataID_main = true;
      this.validate_FK_WF_DBRows_ReminderEMailDBDataID(sender,Prefix);
      },
    validate_ReminderSMSDBDataID: function(sender) {
      var Prefix = sender.id.replace('ReminderSMSDBDataID','');
      this.validated_FK_WF_DBRows_ReminderSMSDBDataID_main = true;
      this.validate_FK_WF_DBRows_ReminderSMSDBDataID(sender,Prefix);
      },
    validate_TotSqlIDLeft: function(sender) {
      var Prefix = sender.id.replace('TotSqlIDLeft','');
      this.validated_FK_WF_DBRows_TotSqlIDLeft_main = true;
      this.validate_FK_WF_DBRows_TotSqlIDLeft(sender,Prefix);
      },
    validate_RedSqlIDLeft: function(sender) {
      var Prefix = sender.id.replace('RedSqlIDLeft','');
      this.validated_FK_WF_DBRows_RedSqlIDLeft_main = true;
      this.validate_FK_WF_DBRows_RedSqlIDLeft(sender,Prefix);
      },
    validate_AmbSqlIDLeft: function(sender) {
      var Prefix = sender.id.replace('AmbSqlIDLeft','');
      this.validated_FK_WF_DBRows_AmbSqlIDLeft_main = true;
      this.validate_FK_WF_DBRows_AmbSqlIDLeft(sender,Prefix);
      },
    validate_GreSqlIDLeft: function(sender) {
      var Prefix = sender.id.replace('GreSqlIDLeft','');
      this.validated_FK_WF_DBRows_GreSqlIDLeft_main = true;
      this.validate_FK_WF_DBRows_GreSqlIDLeft(sender,Prefix);
      },
    validate_TotSqlIDRight: function(sender) {
      var Prefix = sender.id.replace('TotSqlIDRight','');
      this.validated_FK_WF_DBRows_TotSqlIDRight_main = true;
      this.validate_FK_WF_DBRows_TotSqlIDRight(sender,Prefix);
      },
    validate_RedSqlIDRight: function(sender) {
      var Prefix = sender.id.replace('RedSqlIDRight','');
      this.validated_FK_WF_DBRows_RedSqlIDRight_main = true;
      this.validate_FK_WF_DBRows_RedSqlIDRight(sender,Prefix);
      },
    validate_AmbSqlIDRight: function(sender) {
      var Prefix = sender.id.replace('AmbSqlIDRight','');
      this.validated_FK_WF_DBRows_AmbSqlIDRight_main = true;
      this.validate_FK_WF_DBRows_AmbSqlIDRight(sender,Prefix);
      },
    validate_GreSqlIDRight: function(sender) {
      var Prefix = sender.id.replace('GreSqlIDRight','');
      this.validated_FK_WF_DBRows_GreSqlIDRight_main = true;
      this.validate_FK_WF_DBRows_GreSqlIDRight(sender,Prefix);
      },
    validate_FK_WF_DBRows_DashboardID: function(o,Prefix) {
      var value = o.id;
      var DashboardID = $get(Prefix + 'DashboardID');
      if(DashboardID.value==''){
        if(this.validated_FK_WF_DBRows_DashboardID_main){
          var o_d = $get(Prefix + 'DashboardID' + '_Display');
          try{o_d.innerHTML = '';}catch(ex){}
        }
        return true;
      }
      value = value + ',' + DashboardID.value ;
        o.style.backgroundImage  = 'url(../../images/pkloader.gif)';
        o.style.backgroundRepeat= 'no-repeat';
        o.style.backgroundPosition = 'right';
        PageMethods.validate_FK_WF_DBRows_DashboardID(value, this.validated_FK_WF_DBRows_DashboardID);
      },
    validated_FK_WF_DBRows_DashboardID_main: false,
    validated_FK_WF_DBRows_DashboardID: function(result) {
      var p = result.split('|');
      var o = $get(p[1]);
      if(script_wfDBRows.validated_FK_WF_DBRows_DashboardID_main){
        var o_d = $get(p[1]+'_Display');
        try{o_d.innerHTML = p[2];}catch(ex){}
      }
      o.style.backgroundImage  = 'none';
      if(p[0]=='1'){
        o.value='';
        o.focus();
      }
    },
    validate_FK_WF_DBRows_ParentDBRows: function(o,Prefix) {
      var value = o.id;
      var DashboardID = $get(Prefix + 'DashboardID');
      if(DashboardID.value==''){
        if(this.validated_FK_WF_DBRows_ParentDBRows_main){
          var o_d = $get(Prefix + 'DashboardID' + '_Display');
          try{o_d.innerHTML = '';}catch(ex){}
        }
        return true;
      }
      value = value + ',' + DashboardID.value ;
      var ParentDBRows = $get(Prefix + 'ParentDBRows');
      if(ParentDBRows.value==''){
        if(this.validated_FK_WF_DBRows_ParentDBRows_main){
          var o_d = $get(Prefix + 'ParentDBRows' + '_Display');
          try{o_d.innerHTML = '';}catch(ex){}
        }
        return true;
      }
      value = value + ',' + ParentDBRows.value ;
        o.style.backgroundImage  = 'url(../../images/pkloader.gif)';
        o.style.backgroundRepeat= 'no-repeat';
        o.style.backgroundPosition = 'right';
        PageMethods.validate_FK_WF_DBRows_ParentDBRows(value, this.validated_FK_WF_DBRows_ParentDBRows);
      },
    validated_FK_WF_DBRows_ParentDBRows_main: false,
    validated_FK_WF_DBRows_ParentDBRows: function(result) {
      var p = result.split('|');
      var o = $get(p[1]);
      if(script_wfDBRows.validated_FK_WF_DBRows_ParentDBRows_main){
        var o_d = $get(p[1]+'_Display');
        try{o_d.innerHTML = p[2];}catch(ex){}
      }
      o.style.backgroundImage  = 'none';
      if(p[0]=='1'){
        o.value='';
        o.focus();
      }
    },
    validate_FK_WF_DBRows_DVReverseDBDataID: function(o,Prefix) {
      var value = o.id;
      var DVReverseDBDataID = $get(Prefix + 'DVReverseDBDataID');
      if(DVReverseDBDataID.value==''){
        if(this.validated_FK_WF_DBRows_DVReverseDBDataID_main){
          var o_d = $get(Prefix + 'DVReverseDBDataID' + '_Display');
          try{o_d.innerHTML = '';}catch(ex){}
        }
        return true;
      }
      value = value + ',' + DVReverseDBDataID.value ;
        o.style.backgroundImage  = 'url(../../images/pkloader.gif)';
        o.style.backgroundRepeat= 'no-repeat';
        o.style.backgroundPosition = 'right';
        PageMethods.validate_FK_WF_DBRows_DVReverseDBDataID(value, this.validated_FK_WF_DBRows_DVReverseDBDataID);
      },
    validated_FK_WF_DBRows_DVReverseDBDataID_main: false,
    validated_FK_WF_DBRows_DVReverseDBDataID: function(result) {
      var p = result.split('|');
      var o = $get(p[1]);
      if(script_wfDBRows.validated_FK_WF_DBRows_DVReverseDBDataID_main){
        var o_d = $get(p[1]+'_Display');
        try{o_d.innerHTML = p[2];}catch(ex){}
      }
      o.style.backgroundImage  = 'none';
      if(p[0]=='1'){
        o.value='';
        o.focus();
      }
    },
    validate_FK_WF_DBRows_DVFEMailDBDataID: function(o,Prefix) {
      var value = o.id;
      var DVFEMailDBDataID = $get(Prefix + 'DVFEMailDBDataID');
      if(DVFEMailDBDataID.value==''){
        if(this.validated_FK_WF_DBRows_DVFEMailDBDataID_main){
          var o_d = $get(Prefix + 'DVFEMailDBDataID' + '_Display');
          try{o_d.innerHTML = '';}catch(ex){}
        }
        return true;
      }
      value = value + ',' + DVFEMailDBDataID.value ;
        o.style.backgroundImage  = 'url(../../images/pkloader.gif)';
        o.style.backgroundRepeat= 'no-repeat';
        o.style.backgroundPosition = 'right';
        PageMethods.validate_FK_WF_DBRows_DVFEMailDBDataID(value, this.validated_FK_WF_DBRows_DVFEMailDBDataID);
      },
    validated_FK_WF_DBRows_DVFEMailDBDataID_main: false,
    validated_FK_WF_DBRows_DVFEMailDBDataID: function(result) {
      var p = result.split('|');
      var o = $get(p[1]);
      if(script_wfDBRows.validated_FK_WF_DBRows_DVFEMailDBDataID_main){
        var o_d = $get(p[1]+'_Display');
        try{o_d.innerHTML = p[2];}catch(ex){}
      }
      o.style.backgroundImage  = 'none';
      if(p[0]=='1'){
        o.value='';
        o.focus();
      }
    },
    validate_FK_WF_DBRows_DVFSMSDBDataID: function(o,Prefix) {
      var value = o.id;
      var DVFSMSDBDataID = $get(Prefix + 'DVFSMSDBDataID');
      if(DVFSMSDBDataID.value==''){
        if(this.validated_FK_WF_DBRows_DVFSMSDBDataID_main){
          var o_d = $get(Prefix + 'DVFSMSDBDataID' + '_Display');
          try{o_d.innerHTML = '';}catch(ex){}
        }
        return true;
      }
      value = value + ',' + DVFSMSDBDataID.value ;
        o.style.backgroundImage  = 'url(../../images/pkloader.gif)';
        o.style.backgroundRepeat= 'no-repeat';
        o.style.backgroundPosition = 'right';
        PageMethods.validate_FK_WF_DBRows_DVFSMSDBDataID(value, this.validated_FK_WF_DBRows_DVFSMSDBDataID);
      },
    validated_FK_WF_DBRows_DVFSMSDBDataID_main: false,
    validated_FK_WF_DBRows_DVFSMSDBDataID: function(result) {
      var p = result.split('|');
      var o = $get(p[1]);
      if(script_wfDBRows.validated_FK_WF_DBRows_DVFSMSDBDataID_main){
        var o_d = $get(p[1]+'_Display');
        try{o_d.innerHTML = p[2];}catch(ex){}
      }
      o.style.backgroundImage  = 'none';
      if(p[0]=='1'){
        o.value='';
        o.focus();
      }
    },
    validate_FK_WF_DBRows_DVREMailDBDataID: function(o,Prefix) {
      var value = o.id;
      var DVREMailDBDataID = $get(Prefix + 'DVREMailDBDataID');
      if(DVREMailDBDataID.value==''){
        if(this.validated_FK_WF_DBRows_DVREMailDBDataID_main){
          var o_d = $get(Prefix + 'DVREMailDBDataID' + '_Display');
          try{o_d.innerHTML = '';}catch(ex){}
        }
        return true;
      }
      value = value + ',' + DVREMailDBDataID.value ;
        o.style.backgroundImage  = 'url(../../images/pkloader.gif)';
        o.style.backgroundRepeat= 'no-repeat';
        o.style.backgroundPosition = 'right';
        PageMethods.validate_FK_WF_DBRows_DVREMailDBDataID(value, this.validated_FK_WF_DBRows_DVREMailDBDataID);
      },
    validated_FK_WF_DBRows_DVREMailDBDataID_main: false,
    validated_FK_WF_DBRows_DVREMailDBDataID: function(result) {
      var p = result.split('|');
      var o = $get(p[1]);
      if(script_wfDBRows.validated_FK_WF_DBRows_DVREMailDBDataID_main){
        var o_d = $get(p[1]+'_Display');
        try{o_d.innerHTML = p[2];}catch(ex){}
      }
      o.style.backgroundImage  = 'none';
      if(p[0]=='1'){
        o.value='';
        o.focus();
      }
    },
    validate_FK_WF_DBRows_DVRSMSDBDataID: function(o,Prefix) {
      var value = o.id;
      var DVRSMSDBDataID = $get(Prefix + 'DVRSMSDBDataID');
      if(DVRSMSDBDataID.value==''){
        if(this.validated_FK_WF_DBRows_DVRSMSDBDataID_main){
          var o_d = $get(Prefix + 'DVRSMSDBDataID' + '_Display');
          try{o_d.innerHTML = '';}catch(ex){}
        }
        return true;
      }
      value = value + ',' + DVRSMSDBDataID.value ;
        o.style.backgroundImage  = 'url(../../images/pkloader.gif)';
        o.style.backgroundRepeat= 'no-repeat';
        o.style.backgroundPosition = 'right';
        PageMethods.validate_FK_WF_DBRows_DVRSMSDBDataID(value, this.validated_FK_WF_DBRows_DVRSMSDBDataID);
      },
    validated_FK_WF_DBRows_DVRSMSDBDataID_main: false,
    validated_FK_WF_DBRows_DVRSMSDBDataID: function(result) {
      var p = result.split('|');
      var o = $get(p[1]);
      if(script_wfDBRows.validated_FK_WF_DBRows_DVRSMSDBDataID_main){
        var o_d = $get(p[1]+'_Display');
        try{o_d.innerHTML = p[2];}catch(ex){}
      }
      o.style.backgroundImage  = 'none';
      if(p[0]=='1'){
        o.value='';
        o.focus();
      }
    },
    validate_FK_WF_DBRows_ReminderCountDBDataID: function(o,Prefix) {
      var value = o.id;
      var ReminderCountDBDataID = $get(Prefix + 'ReminderCountDBDataID');
      if(ReminderCountDBDataID.value==''){
        if(this.validated_FK_WF_DBRows_ReminderCountDBDataID_main){
          var o_d = $get(Prefix + 'ReminderCountDBDataID' + '_Display');
          try{o_d.innerHTML = '';}catch(ex){}
        }
        return true;
      }
      value = value + ',' + ReminderCountDBDataID.value ;
        o.style.backgroundImage  = 'url(../../images/pkloader.gif)';
        o.style.backgroundRepeat= 'no-repeat';
        o.style.backgroundPosition = 'right';
        PageMethods.validate_FK_WF_DBRows_ReminderCountDBDataID(value, this.validated_FK_WF_DBRows_ReminderCountDBDataID);
      },
    validated_FK_WF_DBRows_ReminderCountDBDataID_main: false,
    validated_FK_WF_DBRows_ReminderCountDBDataID: function(result) {
      var p = result.split('|');
      var o = $get(p[1]);
      if(script_wfDBRows.validated_FK_WF_DBRows_ReminderCountDBDataID_main){
        var o_d = $get(p[1]+'_Display');
        try{o_d.innerHTML = p[2];}catch(ex){}
      }
      o.style.backgroundImage  = 'none';
      if(p[0]=='1'){
        o.value='';
        o.focus();
      }
    },
    validate_FK_WF_DBRows_ReminderAVGDBDataID: function(o,Prefix) {
      var value = o.id;
      var ReminderAvgDBDataID = $get(Prefix + 'ReminderAvgDBDataID');
      if(ReminderAvgDBDataID.value==''){
        if(this.validated_FK_WF_DBRows_ReminderAVGDBDataID_main){
          var o_d = $get(Prefix + 'ReminderAvgDBDataID' + '_Display');
          try{o_d.innerHTML = '';}catch(ex){}
        }
        return true;
      }
      value = value + ',' + ReminderAvgDBDataID.value ;
        o.style.backgroundImage  = 'url(../../images/pkloader.gif)';
        o.style.backgroundRepeat= 'no-repeat';
        o.style.backgroundPosition = 'right';
        PageMethods.validate_FK_WF_DBRows_ReminderAVGDBDataID(value, this.validated_FK_WF_DBRows_ReminderAVGDBDataID);
      },
    validated_FK_WF_DBRows_ReminderAVGDBDataID_main: false,
    validated_FK_WF_DBRows_ReminderAVGDBDataID: function(result) {
      var p = result.split('|');
      var o = $get(p[1]);
      if(script_wfDBRows.validated_FK_WF_DBRows_ReminderAVGDBDataID_main){
        var o_d = $get(p[1]+'_Display');
        try{o_d.innerHTML = p[2];}catch(ex){}
      }
      o.style.backgroundImage  = 'none';
      if(p[0]=='1'){
        o.value='';
        o.focus();
      }
    },
    validate_FK_WF_DBRows_ReminderMaxDBDataID: function(o,Prefix) {
      var value = o.id;
      var ReminderMaxDBDataID = $get(Prefix + 'ReminderMaxDBDataID');
      if(ReminderMaxDBDataID.value==''){
        if(this.validated_FK_WF_DBRows_ReminderMaxDBDataID_main){
          var o_d = $get(Prefix + 'ReminderMaxDBDataID' + '_Display');
          try{o_d.innerHTML = '';}catch(ex){}
        }
        return true;
      }
      value = value + ',' + ReminderMaxDBDataID.value ;
        o.style.backgroundImage  = 'url(../../images/pkloader.gif)';
        o.style.backgroundRepeat= 'no-repeat';
        o.style.backgroundPosition = 'right';
        PageMethods.validate_FK_WF_DBRows_ReminderMaxDBDataID(value, this.validated_FK_WF_DBRows_ReminderMaxDBDataID);
      },
    validated_FK_WF_DBRows_ReminderMaxDBDataID_main: false,
    validated_FK_WF_DBRows_ReminderMaxDBDataID: function(result) {
      var p = result.split('|');
      var o = $get(p[1]);
      if(script_wfDBRows.validated_FK_WF_DBRows_ReminderMaxDBDataID_main){
        var o_d = $get(p[1]+'_Display');
        try{o_d.innerHTML = p[2];}catch(ex){}
      }
      o.style.backgroundImage  = 'none';
      if(p[0]=='1'){
        o.value='';
        o.focus();
      }
    },
    validate_FK_WF_DBRows_MainDBID: function(o,Prefix) {
      var value = o.id;
      var MainDBDataID = $get(Prefix + 'MainDBDataID');
      if(MainDBDataID.value==''){
        if(this.validated_FK_WF_DBRows_MainDBID_main){
          var o_d = $get(Prefix + 'MainDBDataID' + '_Display');
          try{o_d.innerHTML = '';}catch(ex){}
        }
        return true;
      }
      value = value + ',' + MainDBDataID.value ;
        o.style.backgroundImage  = 'url(../../images/pkloader.gif)';
        o.style.backgroundRepeat= 'no-repeat';
        o.style.backgroundPosition = 'right';
        PageMethods.validate_FK_WF_DBRows_MainDBID(value, this.validated_FK_WF_DBRows_MainDBID);
      },
    validated_FK_WF_DBRows_MainDBID_main: false,
    validated_FK_WF_DBRows_MainDBID: function(result) {
      var p = result.split('|');
      var o = $get(p[1]);
      if(script_wfDBRows.validated_FK_WF_DBRows_MainDBID_main){
        var o_d = $get(p[1]+'_Display');
        try{o_d.innerHTML = p[2];}catch(ex){}
      }
      o.style.backgroundImage  = 'none';
      if(p[0]=='1'){
        o.value='';
        o.focus();
      }
    },
    validate_FK_WF_DBRows_DVDBDataID: function(o,Prefix) {
      var value = o.id;
      var DVDBDataID = $get(Prefix + 'DVDBDataID');
      if(DVDBDataID.value==''){
        if(this.validated_FK_WF_DBRows_DVDBDataID_main){
          var o_d = $get(Prefix + 'DVDBDataID' + '_Display');
          try{o_d.innerHTML = '';}catch(ex){}
        }
        return true;
      }
      value = value + ',' + DVDBDataID.value ;
        o.style.backgroundImage  = 'url(../../images/pkloader.gif)';
        o.style.backgroundRepeat= 'no-repeat';
        o.style.backgroundPosition = 'right';
        PageMethods.validate_FK_WF_DBRows_DVDBDataID(value, this.validated_FK_WF_DBRows_DVDBDataID);
      },
    validated_FK_WF_DBRows_DVDBDataID_main: false,
    validated_FK_WF_DBRows_DVDBDataID: function(result) {
      var p = result.split('|');
      var o = $get(p[1]);
      if(script_wfDBRows.validated_FK_WF_DBRows_DVDBDataID_main){
        var o_d = $get(p[1]+'_Display');
        try{o_d.innerHTML = p[2];}catch(ex){}
      }
      o.style.backgroundImage  = 'none';
      if(p[0]=='1'){
        o.value='';
        o.focus();
      }
    },
    validate_FK_WF_DBRows_DVForwardDBDataID: function(o,Prefix) {
      var value = o.id;
      var DVForwardDBDataID = $get(Prefix + 'DVForwardDBDataID');
      if(DVForwardDBDataID.value==''){
        if(this.validated_FK_WF_DBRows_DVForwardDBDataID_main){
          var o_d = $get(Prefix + 'DVForwardDBDataID' + '_Display');
          try{o_d.innerHTML = '';}catch(ex){}
        }
        return true;
      }
      value = value + ',' + DVForwardDBDataID.value ;
        o.style.backgroundImage  = 'url(../../images/pkloader.gif)';
        o.style.backgroundRepeat= 'no-repeat';
        o.style.backgroundPosition = 'right';
        PageMethods.validate_FK_WF_DBRows_DVForwardDBDataID(value, this.validated_FK_WF_DBRows_DVForwardDBDataID);
      },
    validated_FK_WF_DBRows_DVForwardDBDataID_main: false,
    validated_FK_WF_DBRows_DVForwardDBDataID: function(result) {
      var p = result.split('|');
      var o = $get(p[1]);
      if(script_wfDBRows.validated_FK_WF_DBRows_DVForwardDBDataID_main){
        var o_d = $get(p[1]+'_Display');
        try{o_d.innerHTML = p[2];}catch(ex){}
      }
      o.style.backgroundImage  = 'none';
      if(p[0]=='1'){
        o.value='';
        o.focus();
      }
    },
    validate_FK_WF_DBRows_MainDBIconID: function(o,Prefix) {
      var value = o.id;
      var MainDBIconID = $get(Prefix + 'MainDBIconID');
      if(MainDBIconID.value==''){
        if(this.validated_FK_WF_DBRows_MainDBIconID_main){
          var o_d = $get(Prefix + 'MainDBIconID' + '_Display');
          try{o_d.innerHTML = '';}catch(ex){}
        }
        return true;
      }
      value = value + ',' + MainDBIconID.value ;
        o.style.backgroundImage  = 'url(../../images/pkloader.gif)';
        o.style.backgroundRepeat= 'no-repeat';
        o.style.backgroundPosition = 'right';
        PageMethods.validate_FK_WF_DBRows_MainDBIconID(value, this.validated_FK_WF_DBRows_MainDBIconID);
      },
    validated_FK_WF_DBRows_MainDBIconID_main: false,
    validated_FK_WF_DBRows_MainDBIconID: function(result) {
      var p = result.split('|');
      var o = $get(p[1]);
      if(script_wfDBRows.validated_FK_WF_DBRows_MainDBIconID_main){
        var o_d = $get(p[1]+'_Display');
        try{o_d.innerHTML = p[2];}catch(ex){}
      }
      o.style.backgroundImage  = 'none';
      if(p[0]=='1'){
        o.value='';
        o.focus();
      }
    },
    validate_FK_WF_DBRows_DVDBIconID: function(o,Prefix) {
      var value = o.id;
      var DVDBIconID = $get(Prefix + 'DVDBIconID');
      if(DVDBIconID.value==''){
        if(this.validated_FK_WF_DBRows_DVDBIconID_main){
          var o_d = $get(Prefix + 'DVDBIconID' + '_Display');
          try{o_d.innerHTML = '';}catch(ex){}
        }
        return true;
      }
      value = value + ',' + DVDBIconID.value ;
        o.style.backgroundImage  = 'url(../../images/pkloader.gif)';
        o.style.backgroundRepeat= 'no-repeat';
        o.style.backgroundPosition = 'right';
        PageMethods.validate_FK_WF_DBRows_DVDBIconID(value, this.validated_FK_WF_DBRows_DVDBIconID);
      },
    validated_FK_WF_DBRows_DVDBIconID_main: false,
    validated_FK_WF_DBRows_DVDBIconID: function(result) {
      var p = result.split('|');
      var o = $get(p[1]);
      if(script_wfDBRows.validated_FK_WF_DBRows_DVDBIconID_main){
        var o_d = $get(p[1]+'_Display');
        try{o_d.innerHTML = p[2];}catch(ex){}
      }
      o.style.backgroundImage  = 'none';
      if(p[0]=='1'){
        o.value='';
        o.focus();
      }
    },
    validate_FK_WF_DBRows_DVRemarksDBIconID: function(o,Prefix) {
      var value = o.id;
      var DVRemarksDBIconID = $get(Prefix + 'DVRemarksDBIconID');
      if(DVRemarksDBIconID.value==''){
        if(this.validated_FK_WF_DBRows_DVRemarksDBIconID_main){
          var o_d = $get(Prefix + 'DVRemarksDBIconID' + '_Display');
          try{o_d.innerHTML = '';}catch(ex){}
        }
        return true;
      }
      value = value + ',' + DVRemarksDBIconID.value ;
        o.style.backgroundImage  = 'url(../../images/pkloader.gif)';
        o.style.backgroundRepeat= 'no-repeat';
        o.style.backgroundPosition = 'right';
        PageMethods.validate_FK_WF_DBRows_DVRemarksDBIconID(value, this.validated_FK_WF_DBRows_DVRemarksDBIconID);
      },
    validated_FK_WF_DBRows_DVRemarksDBIconID_main: false,
    validated_FK_WF_DBRows_DVRemarksDBIconID: function(result) {
      var p = result.split('|');
      var o = $get(p[1]);
      if(script_wfDBRows.validated_FK_WF_DBRows_DVRemarksDBIconID_main){
        var o_d = $get(p[1]+'_Display');
        try{o_d.innerHTML = p[2];}catch(ex){}
      }
      o.style.backgroundImage  = 'none';
      if(p[0]=='1'){
        o.value='';
        o.focus();
      }
    },
    validate_FK_WF_DBRows_DVFDBIconID: function(o,Prefix) {
      var value = o.id;
      var DVFDBIconID = $get(Prefix + 'DVFDBIconID');
      if(DVFDBIconID.value==''){
        if(this.validated_FK_WF_DBRows_DVFDBIconID_main){
          var o_d = $get(Prefix + 'DVFDBIconID' + '_Display');
          try{o_d.innerHTML = '';}catch(ex){}
        }
        return true;
      }
      value = value + ',' + DVFDBIconID.value ;
        o.style.backgroundImage  = 'url(../../images/pkloader.gif)';
        o.style.backgroundRepeat= 'no-repeat';
        o.style.backgroundPosition = 'right';
        PageMethods.validate_FK_WF_DBRows_DVFDBIconID(value, this.validated_FK_WF_DBRows_DVFDBIconID);
      },
    validated_FK_WF_DBRows_DVFDBIconID_main: false,
    validated_FK_WF_DBRows_DVFDBIconID: function(result) {
      var p = result.split('|');
      var o = $get(p[1]);
      if(script_wfDBRows.validated_FK_WF_DBRows_DVFDBIconID_main){
        var o_d = $get(p[1]+'_Display');
        try{o_d.innerHTML = p[2];}catch(ex){}
      }
      o.style.backgroundImage  = 'none';
      if(p[0]=='1'){
        o.value='';
        o.focus();
      }
    },
    validate_FK_WF_DBRows_DVRDBIconID: function(o,Prefix) {
      var value = o.id;
      var DVRDBIconID = $get(Prefix + 'DVRDBIconID');
      if(DVRDBIconID.value==''){
        if(this.validated_FK_WF_DBRows_DVRDBIconID_main){
          var o_d = $get(Prefix + 'DVRDBIconID' + '_Display');
          try{o_d.innerHTML = '';}catch(ex){}
        }
        return true;
      }
      value = value + ',' + DVRDBIconID.value ;
        o.style.backgroundImage  = 'url(../../images/pkloader.gif)';
        o.style.backgroundRepeat= 'no-repeat';
        o.style.backgroundPosition = 'right';
        PageMethods.validate_FK_WF_DBRows_DVRDBIconID(value, this.validated_FK_WF_DBRows_DVRDBIconID);
      },
    validated_FK_WF_DBRows_DVRDBIconID_main: false,
    validated_FK_WF_DBRows_DVRDBIconID: function(result) {
      var p = result.split('|');
      var o = $get(p[1]);
      if(script_wfDBRows.validated_FK_WF_DBRows_DVRDBIconID_main){
        var o_d = $get(p[1]+'_Display');
        try{o_d.innerHTML = p[2];}catch(ex){}
      }
      o.style.backgroundImage  = 'none';
      if(p[0]=='1'){
        o.value='';
        o.focus();
      }
    },
    validate_FK_WF_DBRows_DVAttachmentDBIconID: function(o,Prefix) {
      var value = o.id;
      var DVAttachmentDBIconID = $get(Prefix + 'DVAttachmentDBIconID');
      if(DVAttachmentDBIconID.value==''){
        if(this.validated_FK_WF_DBRows_DVAttachmentDBIconID_main){
          var o_d = $get(Prefix + 'DVAttachmentDBIconID' + '_Display');
          try{o_d.innerHTML = '';}catch(ex){}
        }
        return true;
      }
      value = value + ',' + DVAttachmentDBIconID.value ;
        o.style.backgroundImage  = 'url(../../images/pkloader.gif)';
        o.style.backgroundRepeat= 'no-repeat';
        o.style.backgroundPosition = 'right';
        PageMethods.validate_FK_WF_DBRows_DVAttachmentDBIconID(value, this.validated_FK_WF_DBRows_DVAttachmentDBIconID);
      },
    validated_FK_WF_DBRows_DVAttachmentDBIconID_main: false,
    validated_FK_WF_DBRows_DVAttachmentDBIconID: function(result) {
      var p = result.split('|');
      var o = $get(p[1]);
      if(script_wfDBRows.validated_FK_WF_DBRows_DVAttachmentDBIconID_main){
        var o_d = $get(p[1]+'_Display');
        try{o_d.innerHTML = p[2];}catch(ex){}
      }
      o.style.backgroundImage  = 'none';
      if(p[0]=='1'){
        o.value='';
        o.focus();
      }
    },
    validate_FK_WF_DBRows_ReminderEMailDBDataID: function(o,Prefix) {
      var value = o.id;
      var ReminderEMailDBDataID = $get(Prefix + 'ReminderEMailDBDataID');
      if(ReminderEMailDBDataID.value==''){
        if(this.validated_FK_WF_DBRows_ReminderEMailDBDataID_main){
          var o_d = $get(Prefix + 'ReminderEMailDBDataID' + '_Display');
          try{o_d.innerHTML = '';}catch(ex){}
        }
        return true;
      }
      value = value + ',' + ReminderEMailDBDataID.value ;
        o.style.backgroundImage  = 'url(../../images/pkloader.gif)';
        o.style.backgroundRepeat= 'no-repeat';
        o.style.backgroundPosition = 'right';
        PageMethods.validate_FK_WF_DBRows_ReminderEMailDBDataID(value, this.validated_FK_WF_DBRows_ReminderEMailDBDataID);
      },
    validated_FK_WF_DBRows_ReminderEMailDBDataID_main: false,
    validated_FK_WF_DBRows_ReminderEMailDBDataID: function(result) {
      var p = result.split('|');
      var o = $get(p[1]);
      if(script_wfDBRows.validated_FK_WF_DBRows_ReminderEMailDBDataID_main){
        var o_d = $get(p[1]+'_Display');
        try{o_d.innerHTML = p[2];}catch(ex){}
      }
      o.style.backgroundImage  = 'none';
      if(p[0]=='1'){
        o.value='';
        o.focus();
      }
    },
    validate_FK_WF_DBRows_ReminderSMSDBDataID: function(o,Prefix) {
      var value = o.id;
      var ReminderSMSDBDataID = $get(Prefix + 'ReminderSMSDBDataID');
      if(ReminderSMSDBDataID.value==''){
        if(this.validated_FK_WF_DBRows_ReminderSMSDBDataID_main){
          var o_d = $get(Prefix + 'ReminderSMSDBDataID' + '_Display');
          try{o_d.innerHTML = '';}catch(ex){}
        }
        return true;
      }
      value = value + ',' + ReminderSMSDBDataID.value ;
        o.style.backgroundImage  = 'url(../../images/pkloader.gif)';
        o.style.backgroundRepeat= 'no-repeat';
        o.style.backgroundPosition = 'right';
        PageMethods.validate_FK_WF_DBRows_ReminderSMSDBDataID(value, this.validated_FK_WF_DBRows_ReminderSMSDBDataID);
      },
    validated_FK_WF_DBRows_ReminderSMSDBDataID_main: false,
    validated_FK_WF_DBRows_ReminderSMSDBDataID: function(result) {
      var p = result.split('|');
      var o = $get(p[1]);
      if(script_wfDBRows.validated_FK_WF_DBRows_ReminderSMSDBDataID_main){
        var o_d = $get(p[1]+'_Display');
        try{o_d.innerHTML = p[2];}catch(ex){}
      }
      o.style.backgroundImage  = 'none';
      if(p[0]=='1'){
        o.value='';
        o.focus();
      }
    },
    validate_FK_WF_DBRows_TotSqlIDLeft: function(o,Prefix) {
      var value = o.id;
      var TotSqlIDLeft = $get(Prefix + 'TotSqlIDLeft');
      if(TotSqlIDLeft.value==''){
        if(this.validated_FK_WF_DBRows_TotSqlIDLeft_main){
          var o_d = $get(Prefix + 'TotSqlIDLeft' + '_Display');
          try{o_d.innerHTML = '';}catch(ex){}
        }
        return true;
      }
      value = value + ',' + TotSqlIDLeft.value ;
        o.style.backgroundImage  = 'url(../../images/pkloader.gif)';
        o.style.backgroundRepeat= 'no-repeat';
        o.style.backgroundPosition = 'right';
        PageMethods.validate_FK_WF_DBRows_TotSqlIDLeft(value, this.validated_FK_WF_DBRows_TotSqlIDLeft);
      },
    validated_FK_WF_DBRows_TotSqlIDLeft_main: false,
    validated_FK_WF_DBRows_TotSqlIDLeft: function(result) {
      var p = result.split('|');
      var o = $get(p[1]);
      if(script_wfDBRows.validated_FK_WF_DBRows_TotSqlIDLeft_main){
        var o_d = $get(p[1]+'_Display');
        try{o_d.innerHTML = p[2];}catch(ex){}
      }
      o.style.backgroundImage  = 'none';
      if(p[0]=='1'){
        o.value='';
        o.focus();
      }
    },
    validate_FK_WF_DBRows_RedSqlIDLeft: function(o,Prefix) {
      var value = o.id;
      var RedSqlIDLeft = $get(Prefix + 'RedSqlIDLeft');
      if(RedSqlIDLeft.value==''){
        if(this.validated_FK_WF_DBRows_RedSqlIDLeft_main){
          var o_d = $get(Prefix + 'RedSqlIDLeft' + '_Display');
          try{o_d.innerHTML = '';}catch(ex){}
        }
        return true;
      }
      value = value + ',' + RedSqlIDLeft.value ;
        o.style.backgroundImage  = 'url(../../images/pkloader.gif)';
        o.style.backgroundRepeat= 'no-repeat';
        o.style.backgroundPosition = 'right';
        PageMethods.validate_FK_WF_DBRows_RedSqlIDLeft(value, this.validated_FK_WF_DBRows_RedSqlIDLeft);
      },
    validated_FK_WF_DBRows_RedSqlIDLeft_main: false,
    validated_FK_WF_DBRows_RedSqlIDLeft: function(result) {
      var p = result.split('|');
      var o = $get(p[1]);
      if(script_wfDBRows.validated_FK_WF_DBRows_RedSqlIDLeft_main){
        var o_d = $get(p[1]+'_Display');
        try{o_d.innerHTML = p[2];}catch(ex){}
      }
      o.style.backgroundImage  = 'none';
      if(p[0]=='1'){
        o.value='';
        o.focus();
      }
    },
    validate_FK_WF_DBRows_AmbSqlIDLeft: function(o,Prefix) {
      var value = o.id;
      var AmbSqlIDLeft = $get(Prefix + 'AmbSqlIDLeft');
      if(AmbSqlIDLeft.value==''){
        if(this.validated_FK_WF_DBRows_AmbSqlIDLeft_main){
          var o_d = $get(Prefix + 'AmbSqlIDLeft' + '_Display');
          try{o_d.innerHTML = '';}catch(ex){}
        }
        return true;
      }
      value = value + ',' + AmbSqlIDLeft.value ;
        o.style.backgroundImage  = 'url(../../images/pkloader.gif)';
        o.style.backgroundRepeat= 'no-repeat';
        o.style.backgroundPosition = 'right';
        PageMethods.validate_FK_WF_DBRows_AmbSqlIDLeft(value, this.validated_FK_WF_DBRows_AmbSqlIDLeft);
      },
    validated_FK_WF_DBRows_AmbSqlIDLeft_main: false,
    validated_FK_WF_DBRows_AmbSqlIDLeft: function(result) {
      var p = result.split('|');
      var o = $get(p[1]);
      if(script_wfDBRows.validated_FK_WF_DBRows_AmbSqlIDLeft_main){
        var o_d = $get(p[1]+'_Display');
        try{o_d.innerHTML = p[2];}catch(ex){}
      }
      o.style.backgroundImage  = 'none';
      if(p[0]=='1'){
        o.value='';
        o.focus();
      }
    },
    validate_FK_WF_DBRows_GreSqlIDLeft: function(o,Prefix) {
      var value = o.id;
      var GreSqlIDLeft = $get(Prefix + 'GreSqlIDLeft');
      if(GreSqlIDLeft.value==''){
        if(this.validated_FK_WF_DBRows_GreSqlIDLeft_main){
          var o_d = $get(Prefix + 'GreSqlIDLeft' + '_Display');
          try{o_d.innerHTML = '';}catch(ex){}
        }
        return true;
      }
      value = value + ',' + GreSqlIDLeft.value ;
        o.style.backgroundImage  = 'url(../../images/pkloader.gif)';
        o.style.backgroundRepeat= 'no-repeat';
        o.style.backgroundPosition = 'right';
        PageMethods.validate_FK_WF_DBRows_GreSqlIDLeft(value, this.validated_FK_WF_DBRows_GreSqlIDLeft);
      },
    validated_FK_WF_DBRows_GreSqlIDLeft_main: false,
    validated_FK_WF_DBRows_GreSqlIDLeft: function(result) {
      var p = result.split('|');
      var o = $get(p[1]);
      if(script_wfDBRows.validated_FK_WF_DBRows_GreSqlIDLeft_main){
        var o_d = $get(p[1]+'_Display');
        try{o_d.innerHTML = p[2];}catch(ex){}
      }
      o.style.backgroundImage  = 'none';
      if(p[0]=='1'){
        o.value='';
        o.focus();
      }
    },
    validate_FK_WF_DBRows_TotSqlIDRight: function(o,Prefix) {
      var value = o.id;
      var TotSqlIDRight = $get(Prefix + 'TotSqlIDRight');
      if(TotSqlIDRight.value==''){
        if(this.validated_FK_WF_DBRows_TotSqlIDRight_main){
          var o_d = $get(Prefix + 'TotSqlIDRight' + '_Display');
          try{o_d.innerHTML = '';}catch(ex){}
        }
        return true;
      }
      value = value + ',' + TotSqlIDRight.value ;
        o.style.backgroundImage  = 'url(../../images/pkloader.gif)';
        o.style.backgroundRepeat= 'no-repeat';
        o.style.backgroundPosition = 'right';
        PageMethods.validate_FK_WF_DBRows_TotSqlIDRight(value, this.validated_FK_WF_DBRows_TotSqlIDRight);
      },
    validated_FK_WF_DBRows_TotSqlIDRight_main: false,
    validated_FK_WF_DBRows_TotSqlIDRight: function(result) {
      var p = result.split('|');
      var o = $get(p[1]);
      if(script_wfDBRows.validated_FK_WF_DBRows_TotSqlIDRight_main){
        var o_d = $get(p[1]+'_Display');
        try{o_d.innerHTML = p[2];}catch(ex){}
      }
      o.style.backgroundImage  = 'none';
      if(p[0]=='1'){
        o.value='';
        o.focus();
      }
    },
    validate_FK_WF_DBRows_AmbSqlIDRight: function(o,Prefix) {
      var value = o.id;
      var AmbSqlIDRight = $get(Prefix + 'AmbSqlIDRight');
      if(AmbSqlIDRight.value==''){
        if(this.validated_FK_WF_DBRows_AmbSqlIDRight_main){
          var o_d = $get(Prefix + 'AmbSqlIDRight' + '_Display');
          try{o_d.innerHTML = '';}catch(ex){}
        }
        return true;
      }
      value = value + ',' + AmbSqlIDRight.value ;
        o.style.backgroundImage  = 'url(../../images/pkloader.gif)';
        o.style.backgroundRepeat= 'no-repeat';
        o.style.backgroundPosition = 'right';
        PageMethods.validate_FK_WF_DBRows_AmbSqlIDRight(value, this.validated_FK_WF_DBRows_AmbSqlIDRight);
      },
    validated_FK_WF_DBRows_AmbSqlIDRight_main: false,
    validated_FK_WF_DBRows_AmbSqlIDRight: function(result) {
      var p = result.split('|');
      var o = $get(p[1]);
      if(script_wfDBRows.validated_FK_WF_DBRows_AmbSqlIDRight_main){
        var o_d = $get(p[1]+'_Display');
        try{o_d.innerHTML = p[2];}catch(ex){}
      }
      o.style.backgroundImage  = 'none';
      if(p[0]=='1'){
        o.value='';
        o.focus();
      }
    },
    validate_FK_WF_DBRows_GreSqlIDRight: function(o,Prefix) {
      var value = o.id;
      var GreSqlIDRight = $get(Prefix + 'GreSqlIDRight');
      if(GreSqlIDRight.value==''){
        if(this.validated_FK_WF_DBRows_GreSqlIDRight_main){
          var o_d = $get(Prefix + 'GreSqlIDRight' + '_Display');
          try{o_d.innerHTML = '';}catch(ex){}
        }
        return true;
      }
      value = value + ',' + GreSqlIDRight.value ;
        o.style.backgroundImage  = 'url(../../images/pkloader.gif)';
        o.style.backgroundRepeat= 'no-repeat';
        o.style.backgroundPosition = 'right';
        PageMethods.validate_FK_WF_DBRows_GreSqlIDRight(value, this.validated_FK_WF_DBRows_GreSqlIDRight);
      },
    validated_FK_WF_DBRows_GreSqlIDRight_main: false,
    validated_FK_WF_DBRows_GreSqlIDRight: function(result) {
      var p = result.split('|');
      var o = $get(p[1]);
      if(script_wfDBRows.validated_FK_WF_DBRows_GreSqlIDRight_main){
        var o_d = $get(p[1]+'_Display');
        try{o_d.innerHTML = p[2];}catch(ex){}
      }
      o.style.backgroundImage  = 'none';
      if(p[0]=='1'){
        o.value='';
        o.focus();
      }
    },
    validate_FK_WF_DBRows_RedSqlIDRight: function(o,Prefix) {
      var value = o.id;
      var RedSqlIDRight = $get(Prefix + 'RedSqlIDRight');
      if(RedSqlIDRight.value==''){
        if(this.validated_FK_WF_DBRows_RedSqlIDRight_main){
          var o_d = $get(Prefix + 'RedSqlIDRight' + '_Display');
          try{o_d.innerHTML = '';}catch(ex){}
        }
        return true;
      }
      value = value + ',' + RedSqlIDRight.value ;
        o.style.backgroundImage  = 'url(../../images/pkloader.gif)';
        o.style.backgroundRepeat= 'no-repeat';
        o.style.backgroundPosition = 'right';
        PageMethods.validate_FK_WF_DBRows_RedSqlIDRight(value, this.validated_FK_WF_DBRows_RedSqlIDRight);
      },
    validated_FK_WF_DBRows_RedSqlIDRight_main: false,
    validated_FK_WF_DBRows_RedSqlIDRight: function(result) {
      var p = result.split('|');
      var o = $get(p[1]);
      if(script_wfDBRows.validated_FK_WF_DBRows_RedSqlIDRight_main){
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
