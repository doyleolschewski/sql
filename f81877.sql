prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2016.08.24'
,p_release=>'5.1.4.00.08'
,p_default_workspace_id=>28935568927076561344
,p_default_application_id=>81877
,p_default_owner=>'DOYLEOLSCHEWSKI'
);
end;
/
 
prompt APPLICATION 81877 - O'Scketchy Movie Library
--
-- Application Export:
--   Application:     81877
--   Name:            O'Scketchy Movie Library
--   Date and Time:   23:28 Tuesday February 20, 2018
--   Exported By:     DOYLE_OLSCHEWSKI@HOTMAIL.COM
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.1.4.00.08
--   Instance ID:     63113759365424
--

-- Application Statistics:
--   Pages:                     13
--     Items:                   30
--     Processes:               22
--     Regions:                 17
--     Buttons:                 17
--     Dynamic Actions:          6
--   Shared Components:
--     Logic:
--     Navigation:
--       Lists:                  3
--       Breadcrumbs:            1
--         Entries:              2
--     Security:
--       Authentication:         1
--     User Interface:
--       Themes:                 2
--       Templates:
--         Page:                12
--         Region:              27
--         Label:                8
--         List:                16
--         Popup LOV:            2
--         Calendar:             2
--         Breadcrumb:           1
--         Button:               5
--         Report:              10
--       LOVs:                   2
--       Shortcuts:              1
--       Plug-ins:               1
--     Globalization:
--     Reports:
--   Supporting Objects:  Included

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,81877)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'DOYLEOLSCHEWSKI')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'O''Scketchy Movie Library')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'F_81877')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'55E20F1ACE59316B779481E19D0E0CCE56D04B3FDA5C12F187552CAA4FCE49C2'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'5.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_date_format=>'MM/DD/YYYY'
,p_date_time_format=>'MM/DD/YYYY HH24:MI'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(28936318959084711198)
,p_application_tab_set=>0
,p_logo_image=>'TEXT:O''Sketchy Libraries'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APPNAME'
,p_substitution_value_01=>'O''Sketchy Movie Library'
,p_last_updated_by=>'DOYLE_OLSCHEWSKI@HOTMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20180129234338'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(26147649796114596091)
,p_name=>'Mobile Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26147650217775596092)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'12'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(28936276190132711130)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(28936320118265711210)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1,6'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26143713395539051102)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Maintenance'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'51,52,53'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26225912262932119086)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'LookUps'
,p_list_item_link_target=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(26143713395539051102)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(28936318682117711196)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(28936318840280711197)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Log Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_current_for_pages=>'&LOGOUT_URL.'
);
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(4824985806760660)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'LEGACY'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(11038935044762525)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'classic'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(28936275866844711130)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SELECT_LIST'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(28936275979138711130)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(28936276091283711130)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(33720318172974477978)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_01=>'3'
,p_attribute_02=>'.5'
,p_attribute_03=>'Y'
,p_attribute_04=>'elastic'
,p_attribute_05=>'500'
,p_attribute_06=>'800'
,p_attribute_07=>'Y'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
null;
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
null;
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(30618338225233595773)
,p_lov_name=>'GENRE_LOV'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'   LKUP_DSC',
'  ,LKUP_ID',
'FROM LKUP',
'WHERE LKUP_GRP_ID = 1',
'ORDER BY LKUP_DSC'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(28941994283735075253)
,p_lov_name=>'LIBRARY_LOV'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1, 2',
'FROM DUAL',
'/*SELECT',
'   LKUP_DSC',
'  ,LKUP_ID',
'FROM LKUP',
'WHERE LKUP_GRP_ID = 1',
'AND (END_DT IS NULL OR END_DT >= SYSDATE)',
'ORDER BY LKUP_DSC*/'))
);
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(28936320006275711205)
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(26143714285492051107)
,p_short_name=>'Maintenance'
,p_link=>'f?p=&APP_ID.:50:&SESSION.'
,p_page_id=>50
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(28936320462341711210)
,p_parent_id=>0
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(26147625959398595965)
,p_theme_id=>51
,p_name=>'Dialog'
,p_internal_name=>'DIALOG'
,p_is_popup=>true
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE.">',
'',
'<head>',
'',
'  <meta charset="utf-8" />',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_STYLE_CSS#',
'  #THEME_CSS#',
'  #APPLICATION_CSS#',
'  #APEX_JAVASCRIPT#',
'  #APPLICATION_JAVASCRIPT#',
'  #HEAD#',
'</head>',
'<body #ONLOAD#>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#PAGE_STATIC_ID#" data-dialog="true" data-role="page" data-close-btn="right" aria-label="#TITLE#" data-apex-page-transition="#PAGE_TRANSITION#" data-apex-popup-transition="#POPUP_TRANSITION#" data-theme="a">',
' <div data-role="header" class="ui-header ui-bar-c">',
'  <h1>#TITLE#</h1>',
' </div>',
'#TEMPLATE_CSS#',
'#PAGE_CSS#',
'#FORM_OPEN#',
'',
'<div data-role="content" data-theme="a">',
'  <div id="messages">',
'    #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  </div>',
'  #BODY#',
'</div><!-- /content -->',
'#FORM_CLOSE#',
'#THEME_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</div><!-- /page -->',
''))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="ui-bar ui-bar-d success" id="success-message">',
'  <h4 style="display:inline-block;margin-top:5px;">#SUCCESS_MESSAGE#</h4>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="ui-bar ui-bar-b notification" id="notification-message">',
'  <h4 style="display:inline-block; margin-top:5px;">#MESSAGE#</h4>',
'</div>'))
,p_theme_class_id=>4
,p_grid_type=>'VARIABLE'
,p_grid_max_columns=>5
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>false
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'<div class="ui-grid-#USED_COLUMNS_ALPHA_MINUS#">#ROWS#</div>'
,p_grid_row_template=>'#COLUMNS#'
,p_grid_column_template=>'<div class="ui-block-#COLUMN_ALPHA#">#CONTENT#</div>'
,p_grid_javascript_debug_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.jQuery(document).on("apex-devbar-grid-debug-on", function(){',
'    apex.jQuery(".apex-grid-debug > [class*=''ui-block-'']").addClass("ui-bar-e"); });',
'',
'apex.jQuery(document).on("apex-devbar-grid-debug-off", function(){',
'    apex.jQuery(".apex-grid-debug > [class*=''ui-block-'']").removeClass("ui-bar-e"); });',
''))
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_width=>'92.5%'
,p_dialog_max_width=>'500px'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>3944623128197965030
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(26147626137281595966)
,p_theme_id=>51
,p_name=>'Page'
,p_internal_name=>'PAGE'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE.">',
'',
'<head>',
'',
'  <meta charset="utf-8" />',
'  <meta name="apple-mobile-web-app-capable" content="yes">',
'  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_STYLE_CSS#',
'  #THEME_CSS#',
'  #APPLICATION_CSS#',
'  #APEX_JAVASCRIPT#',
'  #THEME_JAVASCRIPT#',
'  #APPLICATION_JAVASCRIPT#',
'  #HEAD#',
'</head>',
'<body #ONLOAD#>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#PAGE_STATIC_ID#" data-role="page" data-apex-page-transition="#PAGE_TRANSITION#" data-apex-popup-transition="#POPUP_TRANSITION#" data-theme="a" data-url="#REQUESTED_URL#" class="ui-responsive-panel" >',
'#TEMPLATE_CSS#',
'#PAGE_CSS#',
'#FORM_OPEN#',
'',
'#REGION_POSITION_01#',
'',
'<div data-role="panel" id="menupanel"  class="jqm-navmenu-panel" data-position="left" data-display="overlay">',
'    #SIDE_GLOBAL_NAVIGATION_LIST#',
'</div>    ',
'',
'<div data-role="content" data-theme="a">',
'  <div id="messages">',
'    #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  </div>',
'  #BODY#',
'</div>',
'',
'#REGION_POSITION_08#',
'',
'#FORM_CLOSE#',
'#TEMPLATE_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="ui-bar ui-bar-d success" style="margin-bottom:20px;" id="success-message">',
'  <h4 style="display:inline-block;margin-top:5px;">#SUCCESS_MESSAGE#</h4>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="ui-bar ui-bar-b notification" id="notification-message">',
'  <h4 style="display:inline-block; margin-top:5px;">#MESSAGE#</h4>',
'</div>'))
,p_theme_class_id=>17
,p_grid_type=>'VARIABLE'
,p_grid_max_columns=>5
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>false
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'<div class="ui-grid-#USED_COLUMNS_ALPHA_MINUS# apex-grid-debug">#ROWS#</div>'
,p_grid_row_template=>'#COLUMNS#'
,p_grid_column_template=>'<div class="ui-block-#COLUMN_ALPHA#">#CONTENT#</div>'
,p_grid_javascript_debug_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.jQuery(document).on("apex-devbar-grid-debug-on", function(){',
'    apex.jQuery(".apex-grid-debug > [class*=''ui-block-'']").addClass("ui-bar-e"); });',
'',
'apex.jQuery(document).on("apex-devbar-grid-debug-off", function(){',
'    apex.jQuery(".apex-grid-debug > [class*=''ui-block-'']").removeClass("ui-bar-e"); });',
''))
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>3773948923360905623
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(26147627147186595968)
,p_theme_id=>51
,p_name=>'Popup'
,p_internal_name=>'POPUP'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE.">',
'',
'<head>',
'',
'  <meta charset="utf-8" />',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_STYLE_CSS#',
'  #THEME_CSS#    ',
'  #APPLICATION_CSS#',
'  #APEX_JAVASCRIPT#',
'  #THEME_JAVASCRIPT#',
'  #APPLICATION_JAVASCRIPT#',
'  #HEAD#',
'</head>',
'<body #ONLOAD#>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#PAGE_STATIC_ID#" data-role="page" data-apex-page-transition="#PAGE_TRANSITION#" data-apex-popup-transition="#POPUP_TRANSITION#" data-theme="a">',
'#TEMPLATE_CSS#',
'#PAGE_CSS#',
'#FORM_OPEN#',
'',
'<div data-role="content" data-theme="a">',
'  <div id="messages">',
'    #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  </div>',
'  #BODY#',
'</div><!-- /content -->',
'#FORM_CLOSE#',
'#TEMPLATE_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</div><!-- /page -->',
''))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="ui-bar ui-bar-d success" id="success-message">',
'  <h4 style="display:inline-block;margin-top:5px;">#SUCCESS_MESSAGE#</h4>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="ui-bar ui-bar-b notification" id="notification-message">',
'  <h4 style="display:inline-block; margin-top:5px;">#MESSAGE#</h4>',
'</div>'))
,p_theme_class_id=>17
,p_grid_type=>'VARIABLE'
,p_grid_max_columns=>5
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>false
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'<div class="ui-grid-#USED_COLUMNS_ALPHA_MINUS#">#ROWS#</div>'
,p_grid_row_template=>'#COLUMNS#'
,p_grid_column_template=>'<div class="ui-block-#COLUMN_ALPHA#">#CONTENT#</div>'
,p_grid_javascript_debug_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.jQuery(document).on("apex-devbar-grid-debug-on", function(){',
'    apex.jQuery(".apex-grid-debug > [class*=''ui-block-'']").addClass("ui-bar-e"); });',
'',
'apex.jQuery(document).on("apex-devbar-grid-debug-off", function(){',
'    apex.jQuery(".apex-grid-debug > [class*=''ui-block-'']").removeClass("ui-bar-e"); });',
''))
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>3773982230016967788
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(28936276212548711131)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936276304671711134)
,p_page_template_id=>wwv_flow_api.id(28936276212548711131)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936276423089711134)
,p_page_template_id=>wwv_flow_api.id(28936276212548711131)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936276519336711134)
,p_page_template_id=>wwv_flow_api.id(28936276212548711131)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936276675918711134)
,p_page_template_id=>wwv_flow_api.id(28936276212548711131)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936276738435711134)
,p_page_template_id=>wwv_flow_api.id(28936276212548711131)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936276872216711134)
,p_page_template_id=>wwv_flow_api.id(28936276212548711131)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936276909620711134)
,p_page_template_id=>wwv_flow_api.id(28936276212548711131)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936277058480711134)
,p_page_template_id=>wwv_flow_api.id(28936276212548711131)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(28936277172895711136)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936277296451711136)
,p_page_template_id=>wwv_flow_api.id(28936277172895711136)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936277308076711136)
,p_page_template_id=>wwv_flow_api.id(28936277172895711136)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936277416962711136)
,p_page_template_id=>wwv_flow_api.id(28936277172895711136)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936277588507711137)
,p_page_template_id=>wwv_flow_api.id(28936277172895711136)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936277612074711137)
,p_page_template_id=>wwv_flow_api.id(28936277172895711136)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936277708745711137)
,p_page_template_id=>wwv_flow_api.id(28936277172895711136)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936277886040711137)
,p_page_template_id=>wwv_flow_api.id(28936277172895711136)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936277954362711137)
,p_page_template_id=>wwv_flow_api.id(28936277172895711136)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936278075051711137)
,p_page_template_id=>wwv_flow_api.id(28936277172895711136)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(28936278197313711137)
,p_theme_id=>42
,p_name=>'Login'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="html-login no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="html-login no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="html-login no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #REGION_POSITION_01#',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="t-Body-wrap">',
'    <div class="t-Body-col t-Body-col--main">',
'      <div class="t-Login-container">',
'      #BODY#',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936278248939711138)
,p_page_template_id=>wwv_flow_api.id(28936278197313711137)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936278359155711138)
,p_page_template_id=>wwv_flow_api.id(28936278197313711137)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(28936278411053711138)
,p_theme_id=>42
,p_name=>'Master Detail'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-info" id="t_Body_info">',
'        #REGION_POSITION_02#',
'      </div>',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936278551533711138)
,p_page_template_id=>wwv_flow_api.id(28936278411053711138)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936278635960711138)
,p_page_template_id=>wwv_flow_api.id(28936278411053711138)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936278771549711138)
,p_page_template_id=>wwv_flow_api.id(28936278411053711138)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936278833522711138)
,p_page_template_id=>wwv_flow_api.id(28936278411053711138)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936278951835711138)
,p_page_template_id=>wwv_flow_api.id(28936278411053711138)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936279043448711138)
,p_page_template_id=>wwv_flow_api.id(28936278411053711138)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936279100660711138)
,p_page_template_id=>wwv_flow_api.id(28936278411053711138)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936279210071711138)
,p_page_template_id=>wwv_flow_api.id(28936278411053711138)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936279351900711138)
,p_page_template_id=>wwv_flow_api.id(28936278411053711138)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(28936279470939711139)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936279507260711139)
,p_page_template_id=>wwv_flow_api.id(28936279470939711139)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936279630874711139)
,p_page_template_id=>wwv_flow_api.id(28936279470939711139)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936279714467711139)
,p_page_template_id=>wwv_flow_api.id(28936279470939711139)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936279818276711139)
,p_page_template_id=>wwv_flow_api.id(28936279470939711139)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936279948978711139)
,p_page_template_id=>wwv_flow_api.id(28936279470939711139)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936280090610711139)
,p_page_template_id=>wwv_flow_api.id(28936279470939711139)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936280175466711139)
,p_page_template_id=>wwv_flow_api.id(28936279470939711139)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(28936280259578711139)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-wrapper">',
'    <div class="t-Dialog-header">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Dialog-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'500'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--standard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936280323624711139)
,p_page_template_id=>wwv_flow_api.id(28936280259578711139)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936280420927711139)
,p_page_template_id=>wwv_flow_api.id(28936280259578711139)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936280506141711139)
,p_page_template_id=>wwv_flow_api.id(28936280259578711139)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(28936280605342711139)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936280735103711140)
,p_page_template_id=>wwv_flow_api.id(28936280605342711139)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936280882319711140)
,p_page_template_id=>wwv_flow_api.id(28936280605342711139)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936280918388711140)
,p_page_template_id=>wwv_flow_api.id(28936280605342711139)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936281093063711140)
,p_page_template_id=>wwv_flow_api.id(28936280605342711139)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936281190232711140)
,p_page_template_id=>wwv_flow_api.id(28936280605342711139)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936281240473711140)
,p_page_template_id=>wwv_flow_api.id(28936280605342711139)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936281350523711140)
,p_page_template_id=>wwv_flow_api.id(28936280605342711139)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936281499904711140)
,p_page_template_id=>wwv_flow_api.id(28936280605342711139)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(28936281501036711140)
,p_theme_id=>42
,p_name=>'Standard'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936281656181711141)
,p_page_template_id=>wwv_flow_api.id(28936281501036711140)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936281793223711141)
,p_page_template_id=>wwv_flow_api.id(28936281501036711140)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936281874734711141)
,p_page_template_id=>wwv_flow_api.id(28936281501036711140)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936281936503711141)
,p_page_template_id=>wwv_flow_api.id(28936281501036711140)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936282071424711141)
,p_page_template_id=>wwv_flow_api.id(28936281501036711140)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936282150940711141)
,p_page_template_id=>wwv_flow_api.id(28936281501036711140)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936282217794711141)
,p_page_template_id=>wwv_flow_api.id(28936281501036711140)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>false
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(28936282318834711141)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Wizard t-Wizard--modal">',
'    <div class=" t-Wizard-steps">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Wizard-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Wizard-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'480'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--wizard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936282552815711141)
,p_page_template_id=>wwv_flow_api.id(28936282318834711141)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936282657387711141)
,p_page_template_id=>wwv_flow_api.id(28936282318834711141)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936282728786711141)
,p_page_template_id=>wwv_flow_api.id(28936282318834711141)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(26147631604221595974)
,p_template_name=>'Icon Button'
,p_internal_name=>'ICON_BUTTON'
,p_template=>'<button id="#BUTTON_ID#" type="button" data-inline="true" onclick="#JAVASCRIPT#" class="ui-btn #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#>#LABEL#</button>'
,p_hot_template=>'<button id="#BUTTON_ID#" type="button" data-inline="true" onclick="#JAVASCRIPT#" class="ui-btn ui-btn-b #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#>#LABEL#</button>'
,p_reference_id=>3769112915850328396
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_default_template_options=>'ui-btn-inline:ui-corner-all'
,p_preset_template_options=>'ui-btn-icon-notext'
,p_theme_id=>51
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(26147639943366595980)
,p_template_name=>'Standard Button'
,p_internal_name=>'STANDARD_BUTTON'
,p_template=>'<button id="#BUTTON_ID#" type="button" data-inline="true" onclick="#JAVASCRIPT#" class="ui-btn #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#>#LABEL#</button>'
,p_hot_template=>'<button id="#BUTTON_ID#" type="button" data-inline="true" onclick="#JAVASCRIPT#" class="ui-btn ui-btn-b #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#>#LABEL#</button>'
,p_reference_id=>3773985424233098554
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_default_template_options=>'ui-btn-inline:ui-corner-all'
,p_theme_id=>51
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(28936313491734711180)
,p_template_name=>'Icon'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(28936313582931711182)
,p_template_name=>'Text'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(28936313673256711182)
,p_template_name=>'Text with Icon'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26147627386742595969)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-role="controlgroup" data-type="horizontal" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'#CLOSE#',
'#DELETE#',
'#CREATE#',
'#EDIT#',
'#CHANGE#',
'#BODY#',
'</div>'))
,p_page_plug_template_name=>'Button Group (Horizontal)'
,p_internal_name=>'BUTTON_GROUP_HORIZONTAL'
,p_theme_id=>51
,p_theme_class_id=>17
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773986716277171983
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26147627517810595969)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-role="controlgroup" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'#CLOSE#',
'#DELETE#',
'#CREATE#',
'#EDIT#',
'#CHANGE#',
'#BODY#',
'</div>'))
,p_page_plug_template_name=>'Button Group (Vertical)'
,p_internal_name=>'BUTTON_GROUP_VERTICAL'
,p_theme_id=>51
,p_theme_class_id=>17
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773986516015153022
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26147627750423595969)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-role="collapsible" #REGION_CSS_CLASSES# #REGION_ATTRIBUTES#>',
'<h3>#TITLE#</h3>',
'#BODY#',
'</div>'))
,p_page_plug_template_name=>'Collapsible (Closed)'
,p_internal_name=>'COLLAPSIBLE_CLOSED'
,p_theme_id=>51
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3802613893727675064
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26147627914789595969)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-role="collapsible" data-collapsed="false" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'<h3>#TITLE#</h3>',
'#BODY#',
'</div>'))
,p_page_plug_template_name=>'Collapsible (Open)'
,p_internal_name=>'COLLAPSIBLE_OPEN'
,p_theme_id=>51
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773989519618239167
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26147628112042595969)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-role="collapsible-set" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'#SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Collapsible Set'
,p_internal_name=>'COLLAPSIBLE_SET'
,p_theme_id=>51
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773995014648303985
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26147628328598595970)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-role="footer" data-theme="b" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'  #CHANGE#',
'  #BODY#',
'</div> <!-- /footer -->'))
,p_page_plug_template_name=>'Footer Toolbar (Displays at Bottom of Page)'
,p_internal_name=>'FOOTER_TOOLBAR_DISPLAYS_AT_BOTTOM_OF_PAGE'
,p_theme_id=>51
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773960018627216969
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26147628523528595970)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-id="#REGION_STATIC_ID#" data-role="footer" data-theme="b" data-position="fixed" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'  #CHANGE#',
'  #BODY#',
'</div> <!-- /footer -->'))
,p_page_plug_template_name=>'Footer Toolbar (Fixed)'
,p_internal_name=>'FOOTER_TOOLBAR_FIXED'
,p_theme_id=>51
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773956337432111625
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26147628786822595970)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-id="#REGION_STATIC_ID#" data-role="footer" data-theme="b" data-position="fixed" data-fullscreen="true" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'  #CHANGE#',
'  #BODY#',
'</div> <!-- /footer -->'))
,p_page_plug_template_name=>'Footer Toolbar (Fullscreen)'
,p_internal_name=>'FOOTER_TOOLBAR_FULLSCREEN'
,p_theme_id=>51
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773955815682111625
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26147628935128595970)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-id="#REGION_STATIC_ID#" data-role="header" data-theme="a" data-position="fixed" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'  #PREVIOUS#',
'  <h1>#PAGE_TITLE#</h1>',
'  #NEXT#',
'  #BODY#',
'</div> <!-- /header -->'))
,p_page_plug_template_name=>'Header Toolbar (Fixed)'
,p_internal_name=>'HEADER_TOOLBAR_FIXED'
,p_theme_id=>51
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773957032569111626
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26147629164898595970)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-id="#REGION_STATIC_ID#" data-role="header" data-theme="a" data-position="fixed" data-fullscreen="true" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'  #PREVIOUS#',
'  <h1>#TITLE#</h1>',
'  #NEXT#',
'  #BODY#',
'</div> <!-- /header -->'))
,p_page_plug_template_name=>'Header Toolbar (Fullscreen)'
,p_internal_name=>'HEADER_TOOLBAR_FULLSCREEN'
,p_theme_id=>51
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773956714688111626
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26147629340214595971)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-role="panel" id="#REGION_STATIC_ID#" data-position="right" data-display="overlay" class="#REGION_CSS_CLASSES#">',
'#BODY#',
'#SUB_REGIONS#',
'#CLOSE#',
'#DELETE#',
'#CREATE#',
'#EDIT#',
'#CHANGE#',
'</div>  '))
,p_page_plug_template_name=>'Panel'
,p_internal_name=>'PANEL'
,p_theme_id=>51
,p_theme_class_id=>2
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4376395493293226388
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26147629546887595971)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#">',
'#BODY#',
'#SUB_REGIONS#',
'#CLOSE#',
'#DELETE#',
'#CREATE#',
'#EDIT#',
'#CHANGE#',
'#PREVIOUS#',
'#NEXT#    ',
'</div>'))
,p_page_plug_template_name=>'Plain (No Title)'
,p_internal_name=>'PLAIN_NO_TITLE'
,p_theme_id=>51
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3773970912843347834
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26147629700671595971)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" class="ui-collapsible #REGION_CSS_CLASSES#" data-theme="b" #REGION_ATTRIBUTES#>',
'  <h3 class="ui-collapsible-heading ui-btn ui-corner-top ui-btn-up-a">',
'    <span class="ui-btn-inner ui-corner-top ui-corner-bottom">',
'      <span lass="ui-btn-text">#TITLE#</span>',
'    </span>',
'  </h3>',
'  <div class="ui-collapsible-content ui-body-c ui-corner-bottom">',
'    #BODY#',
'    #SUB_REGIONS#',
'    #EDIT#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Region (With Title Bar)'
,p_internal_name=>'REGION_WITH_TITLE_BAR'
,p_theme_id=>51
,p_theme_class_id=>8
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3774008426020553267
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26147629988973595971)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" class="#REGION_CSS_CLASSES#" data-theme="b" #REGION_ATTRIBUTES#>',
'<h3>#TITLE#</h3>',
'#BODY#',
'#SUB_REGIONS#',
'#EDIT#',
'</div>'))
,p_page_plug_template_name=>'Region (With Title)'
,p_internal_name=>'REGION_WITH_TITLE'
,p_theme_id=>51
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3774032731297886006
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(28936282898295711141)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #BODY#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936282978863711145)
,p_plug_template_id=>wwv_flow_api.id(28936282898295711141)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(28936284323848711148)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(28936284454878711148)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936284574575711149)
,p_plug_template_id=>wwv_flow_api.id(28936284454878711148)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936284693546711149)
,p_plug_template_id=>wwv_flow_api.id(28936284454878711148)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(28936285387507711149)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936285455330711152)
,p_plug_template_id=>wwv_flow_api.id(28936285387507711149)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936285503688711152)
,p_plug_template_id=>wwv_flow_api.id(28936285387507711149)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(28936288711336711155)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls">',
'    <button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936288810871711155)
,p_plug_template_id=>wwv_flow_api.id(28936288711336711155)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936288988389711156)
,p_plug_template_id=>wwv_flow_api.id(28936288711336711155)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(28936290887684711157)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h2 class="t-HeroRegion-title">#TITLE#</h2>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936290935562711157)
,p_plug_template_id=>wwv_flow_api.id(28936290887684711157)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(28936291068725711157)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-body js-regionDialog-body">',
'#BODY#',
'  </div>',
'  <div class="t-DialogRegion-buttons js-regionDialog-buttons">',
'     <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'       <div class="t-ButtonRegion-wrap">',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'       </div>',
'     </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936291196597711157)
,p_plug_template_id=>wwv_flow_api.id(28936291068725711157)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(28936291973462711158)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#" role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(28936292221916711158)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">',
'    #BODY#',
'  </div>',
'  <div class="t-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="t-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936292317431711158)
,p_plug_template_id=>wwv_flow_api.id(28936292221916711158)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(28936292453508711158)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936292535302711159)
,p_plug_template_id=>wwv_flow_api.id(28936292453508711158)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936292633679711159)
,p_plug_template_id=>wwv_flow_api.id(28936292453508711158)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(28936294564777711160)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936294605477711160)
,p_plug_template_id=>wwv_flow_api.id(28936294564777711160)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936294785230711160)
,p_plug_template_id=>wwv_flow_api.id(28936294564777711160)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(28936295710979711161)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(28936296200933711161)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(28936296311675711161)
,p_plug_template_id=>wwv_flow_api.id(28936296200933711161)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(26147630386923595972)
,p_list_template_current=>'<a href="#LINK#" rel="external" data-role="button" data-icon="#A01#">#TEXT_ESC_SC#</a>'
,p_list_template_noncurrent=>'<a href="#LINK#" rel="external" data-role="button" data-icon="#A01#">#TEXT_ESC_SC#</a>'
,p_list_template_name=>'Button Control Group'
,p_internal_name=>'BUTTON_CONTROL_GROUP'
,p_theme_id=>51
,p_theme_class_id=>9
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="navgroup">',
'   <div data-role="controlgroup" data-type="horizontal">'))
,p_list_template_after_rows=>'</div></div>'
,p_reference_id=>4142824253118274072
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(26147630518564595972)
,p_list_template_current=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'List View'
,p_internal_name=>'LIST_VIEW'
,p_theme_id=>51
,p_theme_class_id=>9
,p_list_template_before_rows=>'<ul data-role="listview">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-theme="b">',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li>',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_sub_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-theme="b">',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_sub_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li>',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_reference_id=>3776865227797444118
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(26147630713027595972)
,p_list_template_current=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'List View (Inset)'
,p_internal_name=>'LIST_VIEW_INSET'
,p_theme_id=>51
,p_theme_class_id=>10
,p_list_template_before_rows=>'<ul data-role="listview" data-inset="true">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul data-inset="true">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-theme="b">',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li>',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_sub_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-theme="b">',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_sub_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li>',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_reference_id=>3935648678734663305
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(26147630947958595973)
,p_list_template_current=>'<li><a href="#LINK#" class="ui-btn-active" data-transition="flow" data-icon="#IMAGE#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#" data-transition="flow" data-icon="#IMAGE#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Navigation Bar'
,p_internal_name=>'NAVIGATION_BAR'
,p_theme_id=>51
,p_theme_class_id=>11
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-role="navbar">',
'  <ul>',
''))
,p_list_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  </ul>',
'</div><!-- /navbar -->'))
,p_reference_id=>3773961435821288174
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(26147631158895595973)
,p_list_template_current=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Navigation Menu'
,p_internal_name=>'NAVIGATION_MENU'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.jqm-navmenu-panel .ui-listview > li .ui-collapsible-heading {',
'    margin: 0;',
'}',
'.jqm-navmenu-panel .ui-collapsible.ui-li-static {',
'    border: medium none !important;',
'    padding: 0;',
'}',
'.jqm-navmenu-panel .ui-collapsible + li > .ui-btn, .jqm-navmenu-panel .ui-collapsible + .ui-collapsible > .ui-collapsible-heading > .ui-btn, .jqm-navmenu-panel .ui-panel-inner > .ui-listview > li.ui-first-child .ui-btn {',
'    border-top: medium none !important;',
'}',
'.jqm-navmenu-panel .ui-listview .ui-listview .ui-btn {',
'    color: #999;',
'    padding-left: 1.5em;',
'}',
'.jqm-navmenu-panel .ui-listview .ui-listview .ui-btn.ui-btn-active {',
'    color: #fff;',
'}',
'.jqm-navmenu-panel .ui-btn:after {',
'    opacity: 0.4;',
'}',
'.jqm-demos .jqm-navmenu-panel.jqm-panel-page-nav {',
'    display: none;',
'    left: 12px;',
'    position: absolute;',
'    top: 178px;',
'}',
'.jqm-demos .jqm-navmenu-panel.jqm-panel-page-nav ul li:first-child a {',
'    border-top: medium none;',
'}',
'',
''))
,p_theme_id=>51
,p_theme_class_id=>9
,p_list_template_before_rows=>'<ul data-role="listview">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul data-role="listview" data-theme="b">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-role="collapsible" data-iconpos="right" data-inset="false">',
'    <h2>#TEXT_ESC_SC#</h2>',
'    <ul data-role="listview" data-theme="b">',
'        #SUB_LISTS#',
'    </ul>',
'</li>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-role="collapsible" data-iconpos="right" data-inset="false">',
'    <h2>#TEXT_ESC_SC#</h2>',
'    #SUB_LISTS#',
'</li>'))
,p_sub_templ_curr_w_child=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_reference_id=>5052261073199403386
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(28936304791970711172)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_name=>'Badge List'
,p_theme_id=>42
,p_theme_class_id=>3
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_list_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(28936306428688711174)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2885322685880632508
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(28936308579799711175)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_name=>'Links List'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item#A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#<'
||'/span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t'
||'-LinksList-badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(28936309387146711176)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showDesc:t-MediaList--showIcons'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2066548068783481421
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(28936310294803711176)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_reference_id=>2008709236185638887
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(28936310755411711177)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({ slide: e.hasClass("js-slide")});',
''))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Data ID'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut'
,p_reference_id=>3492264004432431646
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(28936310879721711177)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_reference_id=>2846096252961119197
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(28936310920073711178)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''body'').addClass(''t-PageBody--leftNav'');',
''))
,p_theme_id=>42
,p_theme_class_id=>19
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True/False'
,p_a04_label=>'Title'
,p_reference_id=>2466292414354694776
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(28936311073531711178)
,p_list_template_current=>'<li class="t-Tabs-item is-active"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_theme_id=>42
,p_theme_class_id=>7
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>3288206686691809997
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(28936311954062711178)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True / False'
,p_a03_label=>'Hide'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut Key'
,p_reference_id=>2525307901300239072
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(28936312478995711179)
,p_list_template_current=>'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>'
,p_list_template_noncurrent=>'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"><span class="t-Icon a-Icon icon-check"></span></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"'
||'></span></span></div></li>'
,p_list_template_name=>'Wizard Progress'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(26147630104109595971)
,p_row_template_name=>'Standard Report'
,p_internal_name=>'STANDARD_REPORT'
,p_row_template1=>'<div class="list-view-cell" style="width:#COLUMN_WIDTH_VAL#%">#COLUMN_VALUE#</div>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">',
'<ul data-role="listview">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<li data-role="list-divider">'
,p_column_heading_template=>'<div class="list-view-cell" id="#COLUMN_HEADER_NAME#" style="width:#COLUMN_WIDTH_VAL#%">#COLUMN_HEADER#</div>'
,p_after_column_heading=>'</li>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" data-role="button" data-icon="arrow-r" data-iconpos="right" data-transition="slide">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" data-role="button" data-icon="arrow-l" data-iconpos="left" data-transition="slide" data-direction="reverse">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" data-role="button" data-icon="arrow-r" data-iconpos="right" data-transition="slide">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" data-role="button" data-icon="arrow-l" data-iconpos="left" data-transition="slide" data-direction="reverse">#PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_checked=>'#ccc'
,p_theme_id=>51
,p_theme_class_id=>4
,p_reference_id=>3938915966414985025
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(26147630104109595971)
,p_row_template_before_first=>'<li>'
,p_row_template_after_last=>'</li>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(28936296831695711162)
,p_row_template_name=>'Alerts'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(28936296900694711163)
,p_row_template_name=>'Badge List'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(28936298778324711164)
,p_row_template_name=>'Cards'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(28936300875371711166)
,p_row_template_name=>'Comments'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon a-MediaBlock-graphic">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body a-MediaBlock-content">',
'        <div class="t-Comments-info">',
'            #USER_NAME# &middot; <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(28936301277764711167)
,p_row_template_name=>'Search Results'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(28936301385329711167)
,p_row_template_name=>'Standard'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES#>',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" summary="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(28936301385329711167)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(28936302623887711169)
,p_row_template_name=>'Timeline'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline">',
''))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_reference_id=>1513373588340069864
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(28936302891632711169)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(28936303852349711169)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(26147631380889595973)
,p_template_name=>'No Label (For Screenreaders)'
,p_internal_name=>'NO_LABEL_FOR_SCREENREADERS'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#">'
,p_template_body2=>'</label>'
,p_before_item=>'<div class="ui-hide-label" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_on_error_before_label=>' '
,p_on_error_after_label=>' '
,p_theme_id=>51
,p_theme_class_id=>13
,p_reference_id=>3774000536044404829
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(26147631477065595974)
,p_template_name=>'Optional'
,p_internal_name=>'OPTIONAL'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#">'
,p_template_body2=>'</label>'
,p_before_item=>'<div id="#CURRENT_ITEM_CONTAINER_ID#" class="ui-field-contain">'
,p_after_item=>'</div>'
,p_on_error_before_label=>' '
,p_on_error_after_label=>' '
,p_theme_id=>51
,p_theme_class_id=>3
,p_reference_id=>3773999522622381968
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(26147631583808595974)
,p_template_name=>'Required'
,p_internal_name=>'REQUIRED'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#">'
,p_template_body2=>'<span class="a-Icon icon-asterisk"></span></label>'
,p_before_item=>'<div id="#CURRENT_ITEM_CONTAINER_ID#" class="ui-field-contain">'
,p_after_item=>'</div>'
,p_on_error_before_label=>' '
,p_on_error_after_label=>' '
,p_theme_id=>51
,p_theme_class_id=>4
,p_reference_id=>3773952434061913595
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(28936312954598711179)
,p_template_name=>'Hidden'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(28936313087719711180)
,p_template_name=>'Optional'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(28936313121303711180)
,p_template_name=>'Optional - Above'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(28936313229622711180)
,p_template_name=>'Required'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(28936313318547711180)
,p_template_name=>'Required - Above'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(28936314076768711183)
,p_name=>'Breadcrumb'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><span class="t-Breadcrumb-label">#NAME#</span></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(26147640525463595981)
,p_popup_icon=>'#IMAGE_PREFIX#list.gif'
,p_popup_icon_attr=>'width=13 height=13 alt="#LIST_OF_VALUES#" title="#LIST_OF_VALUES#"'
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#APEX_JAVASCRIPT#',
'<link rel=stylesheet href=#IMAGE_PREFIX#platform2.css type=text/css>',
'#THEME_CSS#',
'</head>'))
,p_page_body_attr=>'bgcolor=white OnLoad=first_field()'
,p_before_field_text=>' '
,p_page_heading_text=>'<link rel=stylesheet href=#IMAGE_PREFIX#platform2.css type=text/css><style>a:link { color:#336699; text-decoration:none; padding:2px;} a:visited { color:#336699; text-decoration:none;} a:hover { color:red; text-decoration:underline;} body { font-fami'
||'ly:arial; background-color:#ffffff;} </style>'
,p_page_footer_text=>'</center></td></tr></table>'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_find_button_text=>'Search'
,p_close_button_text=>'Close'
,p_next_button_text=>'Next'
,p_prev_button_text=>'Previous'
,p_after_field_text=>'</div><br />'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'400'
,p_height=>'450'
,p_result_row_x_of_y=>'Row(s) #FIRST_ROW# - #LAST_ROW#'
,p_result_rows_per_pg=>10
,p_theme_id=>51
,p_theme_class_id=>1
,p_reference_id=>3773970616521339369
,p_translate_this_template=>'N'
);
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(28936314279301711186)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="t-Form-field t-Form-searchField"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(26147640411887595981)
,p_cal_template_name=>'Basic Calendar'
,p_internal_name=>'BASIC_CALENDAR'
,p_day_of_week_format=>'<th scope="col" class="m-DayOfWeek">#IDY#</th>'
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="#CALENDAR_TITLE# #IMONTH# #YYYY#" class="m-Calendar" id="calendar_month_#REGION_STATIC_ID#" data-enhance=false>',
'<tr><th scope="colgroup" class="m-MonthTitle" colspan="7" >#IMONTH# #YYYY#</th></tr>',
''))
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<tr><td colspan="7">',
'<div id="calendar_day_details_#REGION_STATIC_ID#"></div>',
'</td>',
'</tr>',
'</table>',
'<script>',
'apex.jQuery( "##PAGE_STATIC_ID#" ).on( "pageinit", function() {',
'',
'    // Initialize calendar data as list view as soon as that section has been refreshed',
'    // Use Swipe Left and Right to go to the next or previous month',
'    apex.jQuery( "##REGION_STATIC_ID#", apex.gPageContext$ )',
'        .on( "apexafterrefresh", function() {',
'            apex.jQuery( "#calendar_month_#REGION_STATIC_ID#", apex.gPageContext$ )',
'                .find( "[data-role=''listview'']")',
'                .listview(); })',
'        .on( "swipeleft", function() {',
'            apex.widget.calendar.ajax_calendar(''S'', ''next''); } )',
'        .on( "swiperight", function() {',
'            apex.widget.calendar.ajax_calendar(''S'', ''previous''); } );',
'',
'    // Load calendar data of date if it''s tapped',
'    apex.jQuery( "##REGION_STATIC_ID#", apex.gPageContext$ ).on( "tap", "#calendar_month_#REGION_STATIC_ID# td[class*=m-]", function () {',
'        var lDate     = apex.jQuery( this ).data( "date" ),',
'            lDetails$ = apex.jQuery( "#calendar_day_details_#REGION_STATIC_ID#", apex.gPageContext$ );',
'        apex.jQuery(".apex-calendar-today-has-data")',
'            .addClass(''apex-calendar-has-data'')',
'            .removeClass("apex-calendar-today-has-data");',
'        apex.jQuery( ".m-Today" )',
'            .addClass("m-Day")',
'            .removeClass( "m-Today" );',
'        apex.jQuery( this ).addClass( "m-Today" );',
'',
'        apex.widget.calendar.getDayData( "#REGION_STATIC_ID#", lDate, {',
'            clear: function() {',
'                lDetails$.empty();',
'            },',
'            success: function( pData ) {',
'                lDetails$.html( pData );',
'            }',
'        });',
'    });',
'',
'    // New calendar entries can be added with tab and hold',
'    apex.jQuery( "##REGION_STATIC_ID#", apex.gPageContext$ ).on( "taphold", "#calendar_month_#REGION_STATIC_ID# td[class*=m-]", function (e) {',
'       apex.widget.calendar.ajaxAddData(e);',
'    });',
'',
'    // Get the data of the current day as soon as the page gets displayed',
'    apex.jQuery( "##PAGE_STATIC_ID#" ).on( "pageshow", function() {',
'        var lDetails$ = apex.jQuery( "#calendar_day_details_#REGION_STATIC_ID#", apex.gPageContext$ );',
'        apex.jQuery( ".m-Today", apex.gPageContext$ )',
'            .addClass( "m-Day" )',
'            .removeClass( "m-Today" );',
'        apex.jQuery( "#calendar_month_#REGION_STATIC_ID#", apex.gPageContext$ )',
'            .find( "td[data-date=#CURRENT_DATE#]" )',
'            .addClass( "m-Today" );',
'        apex.widget.calendar.getDayData( "#REGION_STATIC_ID#", "#CURRENT_DATE#", {',
'            clear: function() {',
'                lDetails$.empty();',
'            },',
'            success: function( pData ) {',
'                lDetails$.html( pData );',
'            }',
'        });',
'    });',
'',
'});',
'</script>'))
,p_day_title_format=>'<div class="content-primary" class="m-DayTitle">#DD#</div>'
,p_day_open_format=>'<td class="m-Day #HAS_DATA#" data-date="#CANONICAL_DATE#">#TITLE_FORMAT#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="m-Today #HAS_DATA#" data-date="#CANONICAL_DATE#">#TITLE_FORMAT#'
,p_weekend_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="content-primary" class="m-WeekendDayTitle">#DD#</div>',
''))
,p_weekend_open_format=>'<td class="m-WeekendDay #HAS_DATA#"  data-date="#CANONICAL_DATE#">#TITLE_FORMAT#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div class="content-primary" class="m-NonDayTitle">#DD#</div>'
,p_nonday_open_format=>'<td class="m-NonDay"  data-date="#CANONICAL_DATE#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="m-WeekCalendar">',
'	<tr>',
'        <th scope="colgroup" class="m-monthTitle" colspan="7" >#WTITLE#</th>',
'	</tr>'))
,p_weekly_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="m-DayOfWeek" >#IDY# #MM#/#DD#</th>',
''))
,p_weekly_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'<script>',
'    // register a delegated event on the table listening for all taphold in TD''s',
'    apex.jQuery( "##REGION_STATIC_ID#" ).on( "taphold", "td[class^=m-]", function (e) {',
'        apex.widget.calendar.ajaxAddData(e);',
'    });',
'</script>'))
,p_weekly_day_open_format=>'<td class="m-Day">'
,p_weekly_day_close_format=>'</td>'
,p_weekly_today_open_format=>'<td class="m-Today">'
,p_weekly_weekend_open_format=>'<td class="m-NonDay">'
,p_weekly_weekend_close_format=>'</td>'
,p_weekly_time_open_format=>'<th scope="row" class="m-hour">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr rowspan="2">'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" class="m-DayOfWeek">#IDAY# #DD# #IMONTH# #YYYY#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="#CALENDAR_TITLE# #START_DL#" class="m-DayCalendar"><tr>',
''))
,p_daily_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'<script>',
'    // register a delegated event on the table listening for all taphold in TD''s',
'    apex.jQuery( "##REGION_STATIC_ID#" ).on( "taphold", "td[class^=m-]", function (e) {',
'        apex.widget.calendar.ajaxAddData(e);',
'    });',
'</script>'))
,p_daily_day_open_format=>'<td class="m-Day">'
,p_daily_day_close_format=>'</td>'
,p_daily_today_open_format=>'<td class="m-ToDay">'
,p_daily_time_open_format=>'<th scope="row" class="m-hour">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr rowspan="2" >'
,p_daily_hour_close_format=>'</tr>'
,p_agenda_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul data-role="listview">',
'#DAYS#',
'</ul>',
''))
,p_agenda_past_day_format=>'<li data-role="list-divider" data-theme="a">#IDAY# #IMONTH# #DD# #YYYY#</li>'
,p_agenda_today_day_format=>'<li data-role="list-divider" data-theme="b">#IDAY# #IMONTH# #DD# #YYYY#</li>'
,p_agenda_future_day_format=>'<li  data-role="list-divider" >#IDAY# #IMONTH# #DD# #YYYY#</li>'
,p_agenda_past_entry_format=>'<li >#DATA#<p class="ui-li-aside">#TIME#</p></li>'
,p_agenda_today_entry_format=>'<li >#DATA#<p class="ui-li-aside">#TIME#</p></li>'
,p_agenda_future_entry_format=>'<li >#DATA#<p class="ui-li-aside">#TIME#</p></li>'
,p_month_data_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul id="listview_#REGION_STATIC_ID#" data-role="listview" data-inset="true" data-theme="a">#DAYS#</ul>',
''))
,p_month_data_entry_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li align="left" >#LINK##DATA#<p class="ui-li-aside">#TIME#</p></li>',
' '))
,p_theme_id=>51
,p_theme_class_id=>1
,p_reference_id=>3894606461977238251
);
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(28936314102658711184)
,p_cal_template_name=>'Calendar'
,p_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="uCal">',
'<h1 class="uMonth">#IMONTH# <span>#YYYY#</span></h1>'))
,p_cust_day_of_week_format=>'<th scope="col" class="uCalDayCol" id="#DY#">#IDAY#</th>'
,p_cust_month_open_format=>'<table class="uCal" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>',
''))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="uDay today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="uDay nonday" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="uDayTitle weekendday">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="uDay" headers="#DY#">'
,p_cust_weekend_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="uDayData">#DATA#</span>',
'</td>'))
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="uCalHour" id="#TIME#">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="uCal uCalWeekly">',
'<h1 class="uMonth">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="uCalDayCol" id="#DY#">',
'  <span class="visible-desktop">#DD# #IDAY#</span>',
'  <span class="hidden-desktop">#DD# <em>#IDY#</em></span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="uCal">'
,p_cust_wk_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_wk_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="uDay today" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_open_format=>'<td class="uDay weekend" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_close_format=>'</div></td>'
,p_agenda_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(26147641542679595983)
,p_theme_id=>51
,p_theme_name=>'Mobile'
,p_theme_internal_name=>'MOBILE'
,p_ui_type_name=>'JQM_SMARTPHONE'
,p_navigation_type=>'L'
,p_nav_bar_type=>'NAVBAR'
,p_reference_id=>3773947624214896911
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(26147626137281595966)
,p_default_dialog_template=>wwv_flow_api.id(26147625959398595965)
,p_error_template=>wwv_flow_api.id(26147626137281595966)
,p_printer_friendly_template=>wwv_flow_api.id(26147626137281595966)
,p_login_template=>wwv_flow_api.id(26147626137281595966)
,p_default_button_template=>wwv_flow_api.id(26147639943366595980)
,p_default_region_template=>wwv_flow_api.id(26147629546887595971)
,p_default_chart_template=>wwv_flow_api.id(26147629546887595971)
,p_default_form_template=>wwv_flow_api.id(26147629546887595971)
,p_default_reportr_template=>wwv_flow_api.id(26147629988973595971)
,p_default_tabform_template=>wwv_flow_api.id(26147629546887595971)
,p_default_wizard_template=>wwv_flow_api.id(26147629546887595971)
,p_default_irr_template=>wwv_flow_api.id(26147629546887595971)
,p_default_report_template=>wwv_flow_api.id(26147630104109595971)
,p_default_label_template=>wwv_flow_api.id(26147631477065595974)
,p_default_calendar_template=>wwv_flow_api.id(26147640411887595981)
,p_default_list_template=>wwv_flow_api.id(26147630713027595972)
,p_default_nav_list_template=>wwv_flow_api.id(26147630518564595972)
,p_default_top_nav_list_temp=>wwv_flow_api.id(26147630518564595972)
,p_default_side_nav_list_temp=>wwv_flow_api.id(26147631158895595973)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(26147627386742595969)
,p_default_dialogr_template=>wwv_flow_api.id(26147629546887595971)
,p_default_option_label=>wwv_flow_api.id(26147631477065595974)
,p_default_header_template=>wwv_flow_api.id(26147628935128595970)
,p_default_footer_template=>wwv_flow_api.id(26147628523528595970)
,p_default_required_label=>wwv_flow_api.id(26147631583808595974)
,p_default_page_transition=>'SLIDE'
,p_default_popup_transition=>'POP'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(51),'#IMAGE_PREFIX#themes/theme_51/')
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#THEME_IMAGES#css/5_0.css',
'#JET_CSS_DIRECTORY#alta/oj-alta-notag-min.css'))
);
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(28936314615469711192)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(28936281501036711140)
,p_default_dialog_template=>wwv_flow_api.id(28936280259578711139)
,p_error_template=>wwv_flow_api.id(28936278197313711137)
,p_printer_friendly_template=>wwv_flow_api.id(28936281501036711140)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(28936278197313711137)
,p_default_button_template=>wwv_flow_api.id(28936313582931711182)
,p_default_region_template=>wwv_flow_api.id(28936292453508711158)
,p_default_chart_template=>wwv_flow_api.id(28936292453508711158)
,p_default_form_template=>wwv_flow_api.id(28936292453508711158)
,p_default_reportr_template=>wwv_flow_api.id(28936292453508711158)
,p_default_tabform_template=>wwv_flow_api.id(28936292453508711158)
,p_default_wizard_template=>wwv_flow_api.id(28936292453508711158)
,p_default_menur_template=>wwv_flow_api.id(28936295710979711161)
,p_default_listr_template=>wwv_flow_api.id(28936292453508711158)
,p_default_irr_template=>wwv_flow_api.id(28936291973462711158)
,p_default_report_template=>wwv_flow_api.id(28936301385329711167)
,p_default_label_template=>wwv_flow_api.id(28936313087719711180)
,p_default_menu_template=>wwv_flow_api.id(28936314076768711183)
,p_default_calendar_template=>wwv_flow_api.id(28936314102658711184)
,p_default_list_template=>wwv_flow_api.id(28936308579799711175)
,p_default_nav_list_template=>wwv_flow_api.id(28936311954062711178)
,p_default_top_nav_list_temp=>wwv_flow_api.id(28936311954062711178)
,p_default_side_nav_list_temp=>wwv_flow_api.id(28936310920073711178)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(28936284454878711148)
,p_default_dialogr_template=>wwv_flow_api.id(28936284323848711148)
,p_default_option_label=>wwv_flow_api.id(28936313087719711180)
,p_default_required_label=>wwv_flow_api.id(28936313229622711180)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(28936310879721711177)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.0/')
,p_files_version=>62
,p_icon_library=>'FONTAWESOME'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#tooltipManager#MIN#.js?v=#APEX_VERSION#',
'#HAMMERJS_URL#',
'#THEME_IMAGES#js/modernizr-custom#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.0/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(26147640775004595982)
,p_theme_id=>51
,p_name=>'Blue'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_51/css/blue/theme_style_blue.min.css',
'#IMAGE_PREFIX#themes/theme_51/css/blue/jquery.mobile.icons.min.css'))
,p_is_current=>false
,p_is_public=>false
,p_is_accessible=>false
,p_theme_roller_read_only=>false
,p_reference_id=>3558019537230577370
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(26147640977876595982)
,p_theme_id=>51
,p_name=>'Dark'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_51/css/dark/theme_style_dark.min.css',
'#IMAGE_PREFIX#themes/theme_51/css/dark/jquery.mobile.icons.min.css'))
,p_is_current=>false
,p_is_public=>false
,p_is_accessible=>false
,p_theme_roller_read_only=>false
,p_reference_id=>3806542953350945495
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(26147641181292595982)
,p_theme_id=>51
,p_name=>'Default'
,p_css_file_urls=>'#IMAGE_PREFIX#themes/theme_51/css/default/theme_style_default.css'
,p_is_current=>true
,p_is_public=>false
,p_is_accessible=>false
,p_theme_roller_read_only=>false
,p_reference_id=>3768671220784242708
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(26147641312574595982)
,p_theme_id=>51
,p_name=>'Red'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_51/css/red/theme_style_red.min.css',
'#IMAGE_PREFIX#themes/theme_51/css/red/jquery.mobile.icons.min.css'))
,p_is_current=>false
,p_is_public=>false
,p_is_accessible=>false
,p_theme_roller_read_only=>false
,p_reference_id=>3558019537227576001
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(28936314332334711188)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_is_public=>false
,p_is_accessible=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(28936314464225711188)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>true
,p_is_public=>false
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(28936314572158711188)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_is_public=>false
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#505f6d","@g_Accent-OG":"#ececec","@g_Body-Title-BG":"#dee1e4","@l_Link-Base":"#337ac0","@g_Body-BG":"#f5f5f5"}}'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26147626426925595967)
,p_theme_id=>51
,p_name=>'MENU_PANEL_OPTIONS'
,p_display_name=>'Menu Panel Options'
,p_display_sequence=>1
,p_template_types=>'PAGE'
,p_help_text=>'The relationship of the menu panel to the page contents. Can either push the page over ("reveal"), re-flow the content to fit the panel content as a column ("push"), or sit over the content ("overlay").'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26147631851061595974)
,p_theme_id=>51
,p_name=>'ICON_BUTTON'
,p_display_name=>'Icon Button'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(26147632827633595975)
,p_theme_id=>51
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936283168497711147)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936283311690711147)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936283591464711148)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936284758540711149)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936284912228711149)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936285693212711152)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936286007976711153)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936286651141711153)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936287287115711154)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936287492875711154)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936288373647711155)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936289963230711156)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936291331384711158)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936294828465711160)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936295037744711160)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936295499117711160)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936295846159711161)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936296498664711161)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936297000129711163)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936297234485711164)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936298909300711165)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the amount of text to display for the Card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936299681157711166)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the style and design of the cards in the report.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936299941137711166)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936300684574711166)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936300920597711167)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936301445384711168)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936301758591711168)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936301948956711168)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936302966216711169)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936304898976711173)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936305603263711173)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936306600176711174)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936307343835711174)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936307653785711175)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936308378147711175)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936309007427711176)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936311438498711178)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936312573692711179)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936313736863711182)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936314724093711193)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936314902473711193)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936315161833711193)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936315386848711193)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936315782112711193)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936315980475711193)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936316135763711194)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936316393139711194)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936316547321711194)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936316761099711194)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936317232730711194)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936317837029711194)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(28936318088892711195)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26147626671583595967)
,p_theme_id=>51
,p_name=>'OVERLAY'
,p_display_name=>'Overlay'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(26147626137281595966)
,p_css_classes=>'overlay'
,p_group_id=>wwv_flow_api.id(26147626426925595967)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26147626895733595968)
,p_theme_id=>51
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(26147626137281595966)
,p_css_classes=>'push'
,p_group_id=>wwv_flow_api.id(26147626426925595967)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26147627030288595968)
,p_theme_id=>51
,p_name=>'REVEAL'
,p_display_name=>'Reveal'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(26147626137281595966)
,p_css_classes=>'reveal'
,p_group_id=>wwv_flow_api.id(26147626426925595967)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26147632041070595974)
,p_theme_id=>51
,p_name=>'ICON_ACTION'
,p_display_name=>'Action'
,p_display_sequence=>100
,p_button_template_id=>wwv_flow_api.id(26147631604221595974)
,p_css_classes=>'ui-icon-action'
,p_group_id=>wwv_flow_api.id(26147631851061595974)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26147632299953595975)
,p_theme_id=>51
,p_name=>'ICON_ALERT'
,p_display_name=>'Alert'
,p_display_sequence=>110
,p_button_template_id=>wwv_flow_api.id(26147631604221595974)
,p_css_classes=>'ui-icon-alert'
,p_group_id=>wwv_flow_api.id(26147631851061595974)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26147632434411595975)
,p_theme_id=>51
,p_name=>'ICON_BACK'
,p_display_name=>'Back'
,p_display_sequence=>120
,p_button_template_id=>wwv_flow_api.id(26147631604221595974)
,p_css_classes=>'ui-icon-back'
,p_group_id=>wwv_flow_api.id(26147631851061595974)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26147632676597595975)
,p_theme_id=>51
,p_name=>'ICON_BARS'
,p_display_name=>'Bars'
,p_display_sequence=>130
,p_button_template_id=>wwv_flow_api.id(26147631604221595974)
,p_css_classes=>'ui-icon-bars'
,p_group_id=>wwv_flow_api.id(26147631851061595974)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26147633088220595975)
,p_theme_id=>51
,p_name=>'ICON_BOTTOM'
,p_display_name=>'Bottom'
,p_display_sequence=>50
,p_button_template_id=>wwv_flow_api.id(26147631604221595974)
,p_css_classes=>'ui-btn-icon-bottom'
,p_group_id=>wwv_flow_api.id(26147632827633595975)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26147633230415595975)
,p_theme_id=>51
,p_name=>'ICON_BULLETS'
,p_display_name=>'Bullets'
,p_display_sequence=>140
,p_button_template_id=>wwv_flow_api.id(26147631604221595974)
,p_css_classes=>'ui-icon-bullets'
,p_group_id=>wwv_flow_api.id(26147631851061595974)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26147633400457595975)
,p_theme_id=>51
,p_name=>'ICON_CALENDAR'
,p_display_name=>'Calendar'
,p_display_sequence=>150
,p_button_template_id=>wwv_flow_api.id(26147631604221595974)
,p_css_classes=>'ui-icon-calendar'
,p_group_id=>wwv_flow_api.id(26147631851061595974)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26147633697833595975)
,p_theme_id=>51
,p_name=>'ICON_CARAT_DOWN'
,p_display_name=>'Down'
,p_display_sequence=>160
,p_button_template_id=>wwv_flow_api.id(26147631604221595974)
,p_css_classes=>'ui-icon-carat-d'
,p_group_id=>wwv_flow_api.id(26147631851061595974)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26147633813644595975)
,p_theme_id=>51
,p_name=>'ICON_CARAT_LEFT'
,p_display_name=>'Left'
,p_display_sequence=>170
,p_button_template_id=>wwv_flow_api.id(26147631604221595974)
,p_css_classes=>'ui-icon-carat-l'
,p_group_id=>wwv_flow_api.id(26147631851061595974)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26147634055543595975)
,p_theme_id=>51
,p_name=>'ICON_CARAT_RIGHT'
,p_display_name=>'Right'
,p_display_sequence=>180
,p_button_template_id=>wwv_flow_api.id(26147631604221595974)
,p_css_classes=>'ui-icon-carat-r'
,p_group_id=>wwv_flow_api.id(26147631851061595974)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26147634260063595976)
,p_theme_id=>51
,p_name=>'ICON_CARAT_UP'
,p_display_name=>'Up'
,p_display_sequence=>190
,p_button_template_id=>wwv_flow_api.id(26147631604221595974)
,p_css_classes=>'ui-icon-carat-u'
,p_group_id=>wwv_flow_api.id(26147631851061595974)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26147634497071595976)
,p_theme_id=>51
,p_name=>'ICON_CHECK'
,p_display_name=>'Check'
,p_display_sequence=>210
,p_button_template_id=>wwv_flow_api.id(26147631604221595974)
,p_css_classes=>'ui-icon-check'
,p_group_id=>wwv_flow_api.id(26147631851061595974)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26147634689199595976)
,p_theme_id=>51
,p_name=>'ICON_CLOCK'
,p_display_name=>'Clock'
,p_display_sequence=>240
,p_button_template_id=>wwv_flow_api.id(26147631604221595974)
,p_css_classes=>'ui-icon-clock'
,p_group_id=>wwv_flow_api.id(26147631851061595974)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26147634804837595977)
,p_theme_id=>51
,p_name=>'ICON_CLOUD'
,p_display_name=>'Cloud'
,p_display_sequence=>220
,p_button_template_id=>wwv_flow_api.id(26147631604221595974)
,p_css_classes=>'ui-icon-cloud'
,p_group_id=>wwv_flow_api.id(26147631851061595974)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26147635025610595977)
,p_theme_id=>51
,p_name=>'ICON_COMMENT'
,p_display_name=>'Comment'
,p_display_sequence=>230
,p_button_template_id=>wwv_flow_api.id(26147631604221595974)
,p_css_classes=>'ui-icon-comment'
,p_group_id=>wwv_flow_api.id(26147631851061595974)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26147635251763595977)
,p_theme_id=>51
,p_name=>'ICON_DELETE'
,p_display_name=>'Delete'
,p_display_sequence=>200
,p_button_template_id=>wwv_flow_api.id(26147631604221595974)
,p_css_classes=>'ui-icon-delete'
,p_group_id=>wwv_flow_api.id(26147631851061595974)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26147635435292595977)
,p_theme_id=>51
,p_name=>'ICON_EDIT'
,p_display_name=>'Edit'
,p_display_sequence=>250
,p_button_template_id=>wwv_flow_api.id(26147631604221595974)
,p_css_classes=>'ui-icon-edit'
,p_group_id=>wwv_flow_api.id(26147631851061595974)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26147635663824595977)
,p_theme_id=>51
,p_name=>'ICON_GEAR'
,p_display_name=>'Gear'
,p_display_sequence=>260
,p_button_template_id=>wwv_flow_api.id(26147631604221595974)
,p_css_classes=>'ui-icon-gear'
,p_group_id=>wwv_flow_api.id(26147631851061595974)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26147635844704595977)
,p_theme_id=>51
,p_name=>'ICON_GRID'
,p_display_name=>'Grid'
,p_display_sequence=>270
,p_button_template_id=>wwv_flow_api.id(26147631604221595974)
,p_css_classes=>'ui-icon-grid'
,p_group_id=>wwv_flow_api.id(26147631851061595974)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26147636089565595977)
,p_theme_id=>51
,p_name=>'ICON_HOME'
,p_display_name=>'Home'
,p_display_sequence=>280
,p_button_template_id=>wwv_flow_api.id(26147631604221595974)
,p_css_classes=>'ui-icon-home'
,p_group_id=>wwv_flow_api.id(26147631851061595974)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26147636277062595977)
,p_theme_id=>51
,p_name=>'ICON_INFO'
,p_display_name=>'Info'
,p_display_sequence=>290
,p_button_template_id=>wwv_flow_api.id(26147631604221595974)
,p_css_classes=>'ui-icon-info'
,p_group_id=>wwv_flow_api.id(26147631851061595974)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26147636476896595978)
,p_theme_id=>51
,p_name=>'ICON_LEFT'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(26147631604221595974)
,p_css_classes=>'ui-btn-icon-left'
,p_group_id=>wwv_flow_api.id(26147632827633595975)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26147636607646595978)
,p_theme_id=>51
,p_name=>'ICON_LOCATION'
,p_display_name=>'Location'
,p_display_sequence=>300
,p_button_template_id=>wwv_flow_api.id(26147631604221595974)
,p_css_classes=>'ui-icon-location'
,p_group_id=>wwv_flow_api.id(26147631851061595974)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26147636813231595978)
,p_theme_id=>51
,p_name=>'ICON_LOCK'
,p_display_name=>'Lock'
,p_display_sequence=>310
,p_button_template_id=>wwv_flow_api.id(26147631604221595974)
,p_css_classes=>'ui-icon-lock'
,p_group_id=>wwv_flow_api.id(26147631851061595974)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26147637042999595978)
,p_theme_id=>51
,p_name=>'ICON_MAIL'
,p_display_name=>'Mail'
,p_display_sequence=>320
,p_button_template_id=>wwv_flow_api.id(26147631604221595974)
,p_css_classes=>'ui-icon-mail'
,p_group_id=>wwv_flow_api.id(26147631851061595974)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26147637246531595978)
,p_theme_id=>51
,p_name=>'ICON_MINUS'
,p_display_name=>'Minus'
,p_display_sequence=>330
,p_button_template_id=>wwv_flow_api.id(26147631604221595974)
,p_css_classes=>'ui-icon-minus'
,p_group_id=>wwv_flow_api.id(26147631851061595974)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26147637444526595978)
,p_theme_id=>51
,p_name=>'ICON_PHONE'
,p_display_name=>'Phone'
,p_display_sequence=>340
,p_button_template_id=>wwv_flow_api.id(26147631604221595974)
,p_css_classes=>'ui-icon-phone'
,p_group_id=>wwv_flow_api.id(26147631851061595974)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26147637669008595978)
,p_theme_id=>51
,p_name=>'ICON_PLUS'
,p_display_name=>'Plus'
,p_display_sequence=>350
,p_button_template_id=>wwv_flow_api.id(26147631604221595974)
,p_css_classes=>'ui-icon-plus'
,p_group_id=>wwv_flow_api.id(26147631851061595974)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26147637886018595979)
,p_theme_id=>51
,p_name=>'ICON_POWER'
,p_display_name=>'Power'
,p_display_sequence=>360
,p_button_template_id=>wwv_flow_api.id(26147631604221595974)
,p_css_classes=>'ui-icon-power'
,p_group_id=>wwv_flow_api.id(26147631851061595974)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26147638013340595979)
,p_theme_id=>51
,p_name=>'ICON_REFRESH'
,p_display_name=>'Refresh'
,p_display_sequence=>370
,p_button_template_id=>wwv_flow_api.id(26147631604221595974)
,p_css_classes=>'ui-icon-refresh'
,p_group_id=>wwv_flow_api.id(26147631851061595974)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26147638264316595979)
,p_theme_id=>51
,p_name=>'ICON_RIGHT'
,p_display_name=>'Right'
,p_display_sequence=>40
,p_button_template_id=>wwv_flow_api.id(26147631604221595974)
,p_css_classes=>'ui-btn-icon-right'
,p_group_id=>wwv_flow_api.id(26147632827633595975)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26147638434739595979)
,p_theme_id=>51
,p_name=>'ICON_SEARCH'
,p_display_name=>'Search'
,p_display_sequence=>380
,p_button_template_id=>wwv_flow_api.id(26147631604221595974)
,p_css_classes=>'ui-icon-search'
,p_group_id=>wwv_flow_api.id(26147631851061595974)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26147638610483595979)
,p_theme_id=>51
,p_name=>'ICON_STAR'
,p_display_name=>'Star'
,p_display_sequence=>390
,p_button_template_id=>wwv_flow_api.id(26147631604221595974)
,p_css_classes=>'ui-icon-star'
,p_group_id=>wwv_flow_api.id(26147631851061595974)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26147638869766595979)
,p_theme_id=>51
,p_name=>'ICON_TAG'
,p_display_name=>'Tag'
,p_display_sequence=>400
,p_button_template_id=>wwv_flow_api.id(26147631604221595974)
,p_css_classes=>'ui-icon-tag'
,p_group_id=>wwv_flow_api.id(26147631851061595974)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26147639004299595979)
,p_theme_id=>51
,p_name=>'ICON_TOP'
,p_display_name=>'Top'
,p_display_sequence=>30
,p_button_template_id=>wwv_flow_api.id(26147631604221595974)
,p_css_classes=>'ui-btn-icon-top'
,p_group_id=>wwv_flow_api.id(26147632827633595975)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26147639216517595979)
,p_theme_id=>51
,p_name=>'ICON_USER'
,p_display_name=>'User'
,p_display_sequence=>410
,p_button_template_id=>wwv_flow_api.id(26147631604221595974)
,p_css_classes=>'ui-icon-user'
,p_group_id=>wwv_flow_api.id(26147631851061595974)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26147639430988595979)
,p_theme_id=>51
,p_name=>'INLINE_BUTTON'
,p_display_name=>'Inline Button'
,p_display_sequence=>5
,p_button_template_id=>wwv_flow_api.id(26147631604221595974)
,p_css_classes=>'ui-btn-inline'
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26147639604831595980)
,p_theme_id=>51
,p_name=>'NO_TEXT'
,p_display_name=>'No Text'
,p_display_sequence=>60
,p_button_template_id=>wwv_flow_api.id(26147631604221595974)
,p_css_classes=>'ui-btn-icon-notext'
,p_group_id=>wwv_flow_api.id(26147632827633595975)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26147639846069595980)
,p_theme_id=>51
,p_name=>'ROUNDED_CORNERS'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(26147631604221595974)
,p_css_classes=>'ui-corner-all'
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26147640120788595980)
,p_theme_id=>51
,p_name=>'INLINE_BUTTON'
,p_display_name=>'Inline Button'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_api.id(26147639943366595980)
,p_css_classes=>'ui-btn-inline'
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(26147640393960595980)
,p_theme_id=>51
,p_name=>'ROUNDED_CORNERS'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_api.id(26147639943366595980)
,p_css_classes=>'ui-corner-all'
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936283074897711145)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(28936282898295711141)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936283258983711147)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(28936282898295711141)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(28936283168497711147)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936283441467711147)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(28936282898295711141)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(28936283311690711147)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936283655098711148)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(28936282898295711141)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(28936283591464711148)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936283761904711148)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(28936282898295711141)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(28936283168497711147)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936283846361711148)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(28936282898295711141)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(28936283311690711147)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936283998250711148)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(28936282898295711141)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(28936283168497711147)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936284021085711148)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(28936282898295711141)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(28936283311690711147)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936284106117711148)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(28936282898295711141)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(28936283168497711147)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936284242495711148)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(28936282898295711141)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(28936283591464711148)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936284843306711149)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(28936284454878711148)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(28936284758540711149)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936285042519711149)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(28936284454878711148)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(28936284912228711149)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936285198997711149)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(28936284454878711148)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(28936284758540711149)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936285211541711149)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(28936284454878711148)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(28936284912228711149)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936285718155711152)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(28936285387507711149)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(28936285693212711152)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936285841062711153)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(28936285387507711149)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(28936285693212711152)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936285998376711153)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(28936285387507711149)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(28936285693212711152)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936286137065711153)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(28936285387507711149)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(28936286007976711153)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936286252609711153)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(28936285387507711149)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(28936286007976711153)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936286330345711153)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(28936285387507711149)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(28936286007976711153)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936286479832711153)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(28936285387507711149)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(28936285693212711152)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936286503935711153)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(28936285387507711149)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(28936286007976711153)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936286776240711153)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(28936285387507711149)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(28936286651141711153)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936286831965711153)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(28936285387507711149)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(28936286651141711153)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936286988588711153)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(28936285387507711149)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(28936286651141711153)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936287066210711154)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(28936285387507711149)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(28936286651141711153)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936287159993711154)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(28936285387507711149)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(28936286651141711153)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936287316611711154)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(28936285387507711149)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(28936287287115711154)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936287537155711154)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(28936285387507711149)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(28936287492875711154)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936287664146711155)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(28936285387507711149)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(28936287287115711154)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936287766936711155)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(28936285387507711149)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936287857804711155)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(28936285387507711149)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(28936284758540711149)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936287932454711155)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(28936285387507711149)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936288089724711155)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(28936285387507711149)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(28936287492875711154)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936288144075711155)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(28936285387507711149)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936288279055711155)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(28936285387507711149)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936288427651711155)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(28936285387507711149)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(28936288373647711155)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936288554731711155)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(28936285387507711149)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(28936288373647711155)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936288625469711155)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(28936285387507711149)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(28936284758540711149)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936289091839711156)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(28936288711336711155)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(28936286007976711153)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936289199886711156)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(28936288711336711155)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(28936286007976711153)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936289269272711156)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(28936288711336711155)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(28936286007976711153)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936289346828711156)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(28936288711336711155)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(28936286007976711153)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936289468275711156)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(28936288711336711155)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(28936286651141711153)
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936289554975711156)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(28936288711336711155)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(28936286651141711153)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936289685834711156)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(28936288711336711155)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(28936286651141711153)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936289795984711156)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(28936288711336711155)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(28936286651141711153)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936289822372711156)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(28936288711336711155)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(28936286651141711153)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936290016498711156)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(28936288711336711155)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(28936289963230711156)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936290107317711156)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(28936288711336711155)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(28936289963230711156)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936290230075711156)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(28936288711336711155)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(28936287492875711154)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936290331366711157)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(28936288711336711155)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936290493764711157)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(28936288711336711155)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(28936284758540711149)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936290569209711157)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(28936288711336711155)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(28936284758540711149)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936290675376711157)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(28936288711336711155)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(28936287492875711154)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936290758476711157)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(28936288711336711155)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(28936284758540711149)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936291218682711157)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(28936291068725711157)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936291404928711158)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(28936291068725711157)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(28936291331384711158)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936291516697711158)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(28936291068725711157)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(28936291331384711158)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936291663067711158)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(28936291068725711157)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936291750553711158)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(28936291068725711157)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936291872251711158)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(28936291068725711157)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(28936291331384711158)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936292035240711158)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(28936291973462711158)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936292148950711158)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(28936291973462711158)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936292705230711159)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(28936292453508711158)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(28936286007976711153)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936292816375711159)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(28936292453508711158)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(28936286007976711153)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936292969189711159)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(28936292453508711158)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(28936286007976711153)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936293039845711159)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(28936292453508711158)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(28936286007976711153)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936293180907711159)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(28936292453508711158)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(28936286651141711153)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936293274406711159)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(28936292453508711158)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(28936286651141711153)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936293338962711159)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(28936292453508711158)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(28936286651141711153)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936293412754711159)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(28936292453508711158)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(28936286651141711153)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936293563548711159)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(28936292453508711158)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(28936286651141711153)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936293617607711159)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(28936292453508711158)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(28936287287115711154)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936293723190711159)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(28936292453508711158)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(28936287492875711154)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936293844699711159)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(28936292453508711158)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(28936287287115711154)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936293917966711159)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(28936292453508711158)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936294064425711159)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(28936292453508711158)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(28936284758540711149)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936294105379711159)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(28936292453508711158)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(28936284758540711149)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936294209984711160)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(28936292453508711158)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(28936287492875711154)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936294386824711160)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(28936292453508711158)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936294472674711160)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(28936292453508711158)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(28936284758540711149)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936294917836711160)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(28936294564777711160)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(28936294828465711160)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936295140262711160)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(28936294564777711160)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(28936295037744711160)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936295254696711160)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(28936294564777711160)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936295396157711160)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(28936294564777711160)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(28936295037744711160)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936295507713711160)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(28936294564777711160)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(28936295499117711160)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936295600147711161)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(28936294564777711160)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(28936295499117711160)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936295937016711161)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(28936295710979711161)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(28936295846159711161)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936296092446711161)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(28936295710979711161)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936296119929711161)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(28936295710979711161)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(28936295846159711161)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936296516318711161)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(28936296200933711161)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(28936296498664711161)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936296694699711161)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(28936296200933711161)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(28936296498664711161)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936296716771711161)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(28936296200933711161)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936297191997711164)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(28936296900694711163)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(28936297000129711163)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936297381633711164)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(28936296900694711163)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(28936297234485711164)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936297475430711164)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(28936296900694711163)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(28936297000129711163)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936297574880711164)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(28936296900694711163)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(28936297234485711164)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936297642541711164)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(28936296900694711163)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(28936297000129711163)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936297715856711164)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(28936296900694711163)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(28936297234485711164)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936297827215711164)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(28936296900694711163)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(28936297234485711164)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936297947858711164)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(28936296900694711163)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(28936297000129711163)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936298035251711164)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(28936296900694711163)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(28936297000129711163)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936298169810711164)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(28936296900694711163)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(28936297234485711164)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936298273578711164)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(28936296900694711163)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(28936297234485711164)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936298382053711164)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(28936296900694711163)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(28936297234485711164)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936298489241711164)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(28936296900694711163)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'REPORT'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936298605154711164)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(28936296900694711163)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(28936297234485711164)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936298893272711165)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(28936298778324711164)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(28936297234485711164)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936299003048711165)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(28936298778324711164)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(28936298909300711165)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936299152842711165)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(28936298778324711164)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(28936297234485711164)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936299286737711165)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(28936298778324711164)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(28936298909300711165)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936299348189711165)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(28936298778324711164)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(28936297234485711164)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936299432200711166)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(28936298778324711164)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(28936298909300711165)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936299549328711166)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(28936298778324711164)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(28936297234485711164)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936299745873711166)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(28936298778324711164)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(28936299681157711166)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936299862439711166)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(28936298778324711164)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(28936299681157711166)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936300007299711166)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(28936298778324711164)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(28936299941137711166)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936300151676711166)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(28936298778324711164)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(28936299941137711166)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936300228814711166)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(28936298778324711164)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(28936299681157711166)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936300353078711166)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(28936298778324711164)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(28936297234485711164)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936300496674711166)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(28936298778324711164)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(28936298909300711165)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936300569380711166)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(28936298778324711164)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(28936297234485711164)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936300715686711166)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(28936298778324711164)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(28936300684574711166)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936301053350711167)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(28936300875371711166)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(28936300920597711167)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936301166785711167)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(28936300875371711166)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(28936300920597711167)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936301504327711168)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(28936301385329711167)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(28936301445384711168)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936301664422711168)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(28936301385329711167)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(28936301445384711168)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936301877762711168)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(28936301385329711167)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(28936301758591711168)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936302065497711168)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(28936301385329711167)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(28936301948956711168)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936302163006711168)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(28936301385329711167)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(28936301948956711168)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936302229098711168)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(28936301385329711167)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(28936301948956711168)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936302340774711168)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(28936301385329711167)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(28936301758591711168)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936302415284711168)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(28936301385329711167)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936302542972711168)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(28936301385329711167)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(28936301948956711168)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936302785274711169)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(28936302623887711169)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(28936299681157711166)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact video of timeline with smaller font-sizes and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936303032879711169)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(28936302891632711169)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(28936302966216711169)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936303199216711169)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(28936302891632711169)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(28936302966216711169)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936303268207711169)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(28936302891632711169)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(28936302966216711169)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936303334064711169)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(28936302891632711169)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(28936297234485711164)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936303497461711169)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(28936302891632711169)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(28936297234485711164)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936303597132711169)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(28936302891632711169)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(28936302966216711169)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936303649602711169)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(28936302891632711169)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(28936302966216711169)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936303763620711169)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(28936302891632711169)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(28936302966216711169)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936303935765711170)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(28936303852349711169)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(28936302966216711169)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936304000796711170)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(28936303852349711169)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(28936302966216711169)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936304187904711170)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(28936303852349711169)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(28936302966216711169)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936304268736711170)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(28936303852349711169)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(28936297234485711164)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936304332671711171)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(28936303852349711169)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(28936297234485711164)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936304407695711171)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(28936303852349711169)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(28936302966216711169)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936304589827711171)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(28936303852349711169)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(28936302966216711169)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936304662057711171)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(28936303852349711169)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(28936302966216711169)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936304936337711173)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(28936304791970711172)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(28936304898976711173)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936305045722711173)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(28936304791970711172)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(28936304898976711173)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936305113831711173)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(28936304791970711172)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(28936304898976711173)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936305297973711173)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(28936304791970711172)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(28936304898976711173)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936305324591711173)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(28936304791970711172)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(28936304898976711173)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936305481069711173)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(28936304791970711172)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(28936304898976711173)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936305584244711173)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(28936304791970711172)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(28936304898976711173)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936305722181711173)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(28936304791970711172)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(28936305603263711173)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936305821717711173)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(28936304791970711172)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(28936305603263711173)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936305954083711173)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(28936304791970711172)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'LIST'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936306052510711173)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(28936304791970711172)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(28936305603263711173)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936306139301711173)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(28936304791970711172)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(28936304898976711173)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936306287540711174)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(28936304791970711172)
,p_css_classes=>'.t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(28936305603263711173)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936306323913711174)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(28936304791970711172)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(28936305603263711173)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936306539322711174)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(28936306428688711174)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(28936304898976711173)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936306769554711174)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(28936306428688711174)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(28936306600176711174)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936306830783711174)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(28936306428688711174)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(28936304898976711173)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936306988334711174)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(28936306428688711174)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(28936306600176711174)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936307010364711174)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(28936306428688711174)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(28936304898976711173)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936307168280711174)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(28936306428688711174)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(28936306600176711174)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936307298237711174)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(28936306428688711174)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(28936304898976711173)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936307442703711174)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(28936306428688711174)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(28936307343835711174)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936307521062711174)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(28936306428688711174)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(28936307343835711174)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936307702210711175)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(28936306428688711174)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(28936307653785711175)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936307828187711175)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(28936306428688711174)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(28936307653785711175)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936307915061711175)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(28936306428688711174)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(28936307343835711174)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936308091602711175)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(28936306428688711174)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(28936304898976711173)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936308176183711175)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(28936306428688711174)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(28936306600176711174)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936308287297711175)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(28936306428688711174)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(28936304898976711173)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936308418830711175)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(28936306428688711174)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(28936308378147711175)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936308659076711175)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(28936308579799711175)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(28936307343835711174)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936308743427711175)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(28936308579799711175)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936308892539711175)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(28936308579799711175)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936308979332711176)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(28936308579799711175)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936309105233711176)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(28936308579799711175)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(28936309007427711176)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936309271735711176)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(28936308579799711175)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(28936309007427711176)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936309455790711176)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(28936309387146711176)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(28936304898976711173)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936309585430711176)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(28936309387146711176)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(28936304898976711173)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936309682640711176)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(28936309387146711176)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(28936304898976711173)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936309741359711176)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(28936309387146711176)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(28936304898976711173)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936309842162711176)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(28936309387146711176)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936309913367711176)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(28936309387146711176)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936310031029711176)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(28936309387146711176)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Shows an icon for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936310164681711176)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(28936309387146711176)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(28936304898976711173)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936310358706711176)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(28936310294803711176)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936310493445711177)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(28936310294803711176)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936310556174711177)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(28936310294803711176)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936310614087711177)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(28936310294803711176)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936311171076711178)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(28936311073531711178)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(28936307653785711175)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936311269804711178)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(28936311073531711178)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(28936304898976711173)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936311349122711178)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(28936311073531711178)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(28936307653785711175)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936311579724711178)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(28936311073531711178)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(28936311438498711178)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936311630113711178)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(28936311073531711178)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(28936307343835711174)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936311724410711178)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(28936311073531711178)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(28936307343835711174)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936311854017711178)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(28936311073531711178)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(28936311438498711178)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936312069439711178)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(28936311954062711178)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936312156662711178)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(28936311954062711178)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936312213395711179)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(28936311954062711178)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936312321052711179)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(28936311954062711178)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936312646189711179)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(28936312478995711179)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(28936312573692711179)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936312728385711179)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(28936312478995711179)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(28936312573692711179)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936312826285711179)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(28936312478995711179)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(28936312573692711179)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936313892177711182)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(28936313673256711182)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(28936313736863711182)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936313942729711182)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(28936313673256711182)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(28936313736863711182)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936314814044711193)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(28936314724093711193)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936315076635711193)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(28936314902473711193)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936315299480711193)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(28936315161833711193)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936315457965711193)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(28936315386848711193)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936315593378711193)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(28936315386848711193)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936315636973711193)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(28936315161833711193)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936315806294711193)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(28936315782112711193)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936316086574711193)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large Left Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(28936315980475711193)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936316276637711194)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large Right Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(28936316135763711194)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936316475679711194)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(28936316393139711194)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936316690921711194)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(28936316547321711194)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936316891751711194)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(28936316761099711194)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936316947042711194)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(28936316761099711194)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936317030897711194)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(28936316761099711194)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936317152207711194)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(28936314724093711193)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936317397954711194)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(28936317232730711194)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936317446259711194)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(28936316547321711194)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936317542394711194)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(28936315782112711193)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936317616943711194)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small Left Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(28936315980475711193)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936317795581711194)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small Right Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(28936316135763711194)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936317946767711195)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(28936317837029711194)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936318141699711195)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(28936318088892711195)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936318203953711195)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936318310487711195)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(28936314724093711193)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936318418948711195)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(28936314724093711193)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(28936318557595711195)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(28936316393139711194)
,p_template_types=>'FIELD'
);
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(17599803444017770183)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(28936318959084711198)
,p_name=>'Application Express Authentication'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/shared_components/plugins/dynamic_action/com_skillbuilders_modal_page
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(68134597650101135099)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'COM_SKILLBUILDERS_MODAL_PAGE'
,p_display_name=>'SkillBuilders Modal Page (2.0.0)'
,p_category=>'EFFECT'
,p_supported_ui_types=>'DESKTOP'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('DYNAMIC ACTION','COM_SKILLBUILDERS_MODAL_PAGE'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'FUNCTION apex_modal_page_render (',
'   p_dynamic_action IN APEX_PLUGIN.T_DYNAMIC_ACTION,',
'   p_plugin         IN APEX_PLUGIN.T_PLUGIN ',
')',
'',
'   RETURN APEX_PLUGIN.T_DYNAMIC_ACTION_RENDER_RESULT',
'   ',
'IS',
'',
'   l_result             APEX_PLUGIN.T_DYNAMIC_ACTION_RENDER_RESULT;',
'   l_dialog_title       VARCHAR2(4000) := p_dynamic_action.attribute_01;',
'   l_url_location       VARCHAR2(50) := NVL(p_dynamic_action.attribute_02, ''STATIC'');',
'   l_static_url         VARCHAR2(4000) := p_dynamic_action.attribute_03;',
'   l_attr_name          VARCHAR2(4000) := NVL(p_dynamic_action.attribute_05, ''data-url'');',
'   l_close_sel          VARCHAR2(4000) := NVL(p_dynamic_action.attribute_06, ''div#success-message'');',
'   l_hw_mode            VARCHAR2(4000) := NVL(p_dynamic_action.attribute_07, ''AUTO'');',
'   l_height             VARCHAR2(4000) := p_dynamic_action.attribute_08;',
'   l_width              VARCHAR2(4000) := p_dynamic_action.attribute_09;',
'   l_modal_page_id      VARCHAR2(4000) := p_dynamic_action.attribute_10;',
'   l_theme              NUMBER := NVL(p_plugin.attribute_01, 3);',
'   l_overlay_opacity    NUMBER := NVL(TO_NUMBER(p_plugin.attribute_02, ''999.99'', ''NLS_NUMERIC_CHARACTERS = ''''.,''''''), .5);',
'   l_scrolling          VARCHAR2(1) := NVL(p_plugin.attribute_03, ''N'');',
'   l_transition         VARCHAR2(50) := NVL(p_plugin.attribute_04, ''none'');',
'   l_initial_height     NUMBER := NVL(p_plugin.attribute_05, 100);',
'   l_initial_width      NUMBER := NVL(p_plugin.attribute_06, 100);',
'   l_draggable          VARCHAR2(1) := NVL(p_plugin.attribute_07, ''Y'');',
'   l_custom_css_path    VARCHAR2(4000) := p_plugin.attribute_08;',
'   l_custom_css_file    VARCHAR2(4000) := p_plugin.attribute_09;',
'   l_loading_image_src  VARCHAR2(32767);',
'   l_onload_code        VARCHAR2(32767);',
'   l_crlf               CHAR(2) := CHR(13)||CHR(10);',
'',
'BEGIN',
'',
'   IF apex_application.g_debug',
'   THEN',
'      apex_plugin_util.debug_dynamic_action(',
'         p_plugin         => p_plugin,',
'         p_dynamic_action => p_dynamic_action ',
'      );',
'   END IF;',
'   ',
'   IF l_theme = 6 --User selected custom theme',
'   THEN',
'      apex_css.add_file(',
'         p_name      => RTRIM(RTRIM(l_custom_css_file,''.css''),''.CSS''),',
'         p_directory => wwv_flow.do_substitutions(l_custom_css_path),',
'         p_version   => NULL',
'      );',
'   ELSE ',
'      apex_css.add_file(',
'         p_name      => ''t'' || l_theme || ''colorbox'',',
'         p_directory => p_plugin.file_prefix,',
'         p_version   => NULL',
'      );',
'   END IF;',
'',
'   apex_javascript.add_library(',
'      p_name      => ''jquery.colorbox-min'',',
'      p_directory => p_plugin.file_prefix,',
'      p_version   => NULL',
'   );',
'   ',
'   apex_javascript.add_library(',
'      p_name      => ''apex_modal_page.min'',',
'      p_directory => p_plugin.file_prefix,',
'      p_version   => NULL ',
'   );',
'',
'   l_onload_code := ''apex.jQuery(document).apex_modal_page({'' || l_crlf',
'      || ''   '' || apex_javascript.add_attribute(''transition'',  l_transition) || l_crlf',
'      || ''   '' || apex_javascript.add_attribute(''draggable'',  ',
'         CASE l_draggable',
'            WHEN ''Y'' THEN TRUE',
'            ELSE FALSE',
'         END',
'      ) || l_crlf',
'      || ''   '' || apex_javascript.add_attribute(''initialHeight'',  l_initial_height) || l_crlf',
'      || ''   '' || apex_javascript.add_attribute(''initialWidth'',  l_initial_width) || l_crlf',
'      || ''   '' || apex_javascript.add_attribute(''overlayOpacity'',  l_overlay_opacity) || l_crlf',
'      || ''   '' || apex_javascript.add_attribute(''scrolling'',  ',
'         CASE l_scrolling',
'            WHEN ''Y'' THEN TRUE',
'            ELSE FALSE',
'         END',
'      ) || l_crlf',
'      || ''   '' || apex_javascript.add_attribute(''loadingImageSrc'', l_loading_image_src, FALSE, FALSE) || l_crlf',
'      || ''});'';',
'      ',
'   apex_javascript.add_onload_code(',
'      p_code => l_onload_code',
'   ); ',
'',
'   l_result.javascript_function := ',
'      ''function(){'' || l_crlf ||',
'      ''   if (this.browserEvent !== ''''load''''){'' || l_crlf ||',
'      ''      apex.jQuery(document).apex_modal_page(''''openPageFromApexThis'''', this);'' || l_crlf ||',
'      ''   }'' || l_crlf ||',
'      ''}'';',
'',
'   l_result.attribute_01 := l_dialog_title;',
'   l_result.attribute_02 := l_url_location;',
'   l_result.attribute_03 := l_static_url;',
'   l_result.attribute_05 := l_attr_name;',
'   l_result.attribute_06 := l_close_sel;',
'   l_result.attribute_07 := l_hw_mode;',
'   l_result.attribute_08 := l_height;',
'   l_result.attribute_09 := l_width;',
'   l_result.attribute_10 := l_modal_page_id;',
'',
'   RETURN l_result;',
'    ',
'END apex_modal_page_render;'))
,p_api_version=>1
,p_render_function=>'apex_modal_page_render'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br />',
''))
,p_version_identifier=>'2.0.0'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33721629459962129981)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Theme'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'3'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'The Theme setting is used to change the look and feel of the modal window. The ColorBox website includes 5 example themes which have been included with this plug-in. Simply select a number from 1 to 5 to use one of these themes. The themes demonstrat'
||'e the flexibility of the plug-in and can be used without making any changes. However, a custom option exists that, when selected, exposes two additional fields that allow for a custom CSS file to be defined. It is recommended that you start with an e'
||'xisting theme and make small changes to it until you are comfortable working with the CSS.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33721629962040130614)
,p_plugin_attribute_id=>wwv_flow_api.id(33721629459962129981)
,p_display_sequence=>10
,p_display_value=>'1'
,p_return_value=>'1'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33721630363772131077)
,p_plugin_attribute_id=>wwv_flow_api.id(33721629459962129981)
,p_display_sequence=>20
,p_display_value=>'2'
,p_return_value=>'2'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33721630765849131659)
,p_plugin_attribute_id=>wwv_flow_api.id(33721629459962129981)
,p_display_sequence=>30
,p_display_value=>'3'
,p_return_value=>'3'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33721631167581132164)
,p_plugin_attribute_id=>wwv_flow_api.id(33721629459962129981)
,p_display_sequence=>40
,p_display_value=>'4'
,p_return_value=>'4'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33721631570005132833)
,p_plugin_attribute_id=>wwv_flow_api.id(33721629459962129981)
,p_display_sequence=>50
,p_display_value=>'5'
,p_return_value=>'5'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33721631939315133461)
,p_plugin_attribute_id=>wwv_flow_api.id(33721629459962129981)
,p_display_sequence=>60
,p_display_value=>'Custom'
,p_return_value=>'6'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33721632738323161223)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Overlay Opacity'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'.5'
,p_display_length=>3
,p_max_length=>3
,p_is_translatable=>false
,p_help_text=>'The Overlay Opacity setting is used to adjust the darkness of the overlay behind the modal dialog. Specify a number between 0 and 1 where 0 is transparent and 1 is completely obscured. The default value of .5 is in the middle and allows the users to '
||'see the screen behind but focuses their attention on the modal dialog.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33721633241702181082)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>3
,p_display_sequence=>17
,p_prompt=>'Scrolling'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The Scrolling setting is used to specify whether or not the modal can include scroll bars across the top and bottom of the modal to allow users to see all of the content in the page. When set to No, any overflow cotent will be hidden from view.<br />'
||' ',
'<br />',
'This setting must be used in conjunction with the Height and Width settings in the component settings. A later version of this plug-in will move this setting to the component settings.'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33721633763519187290)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>4
,p_display_sequence=>15
,p_prompt=>'Transition'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'none'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'The Transition setting can be used to apply some effects to the opening and closing of the modal dialog. '
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33721634266982188302)
,p_plugin_attribute_id=>wwv_flow_api.id(33721633763519187290)
,p_display_sequence=>10
,p_display_value=>'None'
,p_return_value=>'none'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33721634640232199413)
,p_plugin_attribute_id=>wwv_flow_api.id(33721633763519187290)
,p_display_sequence=>20
,p_display_value=>'Elastic'
,p_return_value=>'elastic'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(33721635045080200844)
,p_plugin_attribute_id=>wwv_flow_api.id(33721633763519187290)
,p_display_sequence=>30
,p_display_value=>'Fade'
,p_return_value=>'fade'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(44017449940127081741)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'Initial Height'
,p_attribute_type=>'INTEGER'
,p_is_required=>true
,p_default_value=>'100'
,p_display_length=>2
,p_max_length=>3
,p_is_translatable=>false
,p_help_text=>'The Initial Height setting is used to specify the initial height (in pixels) of the modal page when it opens but before the main content loads. '
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(44017451122596086166)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'Initial Width'
,p_attribute_type=>'INTEGER'
,p_is_required=>true
,p_default_value=>'300'
,p_display_length=>2
,p_max_length=>3
,p_is_translatable=>false
,p_help_text=>'The Initial Width setting is used to specify the initial width (in pixels) of the modal page when it opens but before the main content loads.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33721636665643216165)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>7
,p_display_sequence=>18
,p_prompt=>'Draggable'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_is_translatable=>false
,p_help_text=>'The Draggable setting is used to specify whether or not the user should be able to move the modal dialog around on the screen.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33721637550668230635)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>8
,p_display_sequence=>12
,p_prompt=>'Custom CSS Path'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>50
,p_max_length=>500
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(33721629459962129981)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'6'
,p_help_text=>'The Custom CSS Path setting is used to specify the path to a custom CSS file for the theme. This setting is only displayed when the Theme is set to custom. See Optional Performance Upgrade for additional information.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(33721638059457242614)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>9
,p_display_sequence=>13
,p_prompt=>'Custom CSS Filename'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>50
,p_max_length=>500
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(33721629459962129981)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'6'
,p_help_text=>'The Custom CSS Filename setting is used to specify the name of the file that contains custom CSS for the theme. Only the name of the file should be included with this setting as it is assumed the extension will be â.cssâ. This setting is only dis'
||'played when the Theme is set to custom.  See Optional Performance Upgrade for additional information.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(61414500932984852728)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Dialog Title'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>30
,p_max_length=>50
,p_is_translatable=>false
,p_help_text=>'Use this attribute to specify the title displayed in the modal page.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(61414493743804836918)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'URL Location'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'STATIC'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Use this attribute to specify whether the URL for the modal page is static or dynamic. '
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(61414496025927841158)
,p_plugin_attribute_id=>wwv_flow_api.id(61414493743804836918)
,p_display_sequence=>10
,p_display_value=>'Statically Defined'
,p_return_value=>'STATIC'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(61414497138394844779)
,p_plugin_attribute_id=>wwv_flow_api.id(61414493743804836918)
,p_display_sequence=>20
,p_display_value=>'Attribute of Triggering Element'
,p_return_value=>'TRIG_ELEMENT_ATTR'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(61414488023372830985)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Static URL'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'f?p=&APP_ID.:1:&APP_SESSION.:::1:::'
,p_display_length=>50
,p_max_length=>500
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(61414493743804836918)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'STATIC'
,p_help_text=>'Use this attribute to specify a static URL for the modal page.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(69479196559511331263)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'Attribute Name'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'href'
,p_display_length=>30
,p_max_length=>50
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(61414493743804836918)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'TRIG_ELEMENT_ATTR'
,p_help_text=>'Use this attribute to specify which attribute of the triggering element contains the URL for the modal page. This is often the href attribute of anchor elements.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(69479326557976520033)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'Auto-close On Element Selector'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_default_value=>'div#success-message'
,p_display_length=>30
,p_max_length=>500
,p_is_translatable=>false
,p_help_text=>'Use this attribute to specify a jQuery selector used to close the modal page automatically. The selector is executed when the modal page is loaded. If the selector selects anything, the modal page will close and the Auto Close event will be triggered'
||'. Typically this is only used for modal pages that are submitted for processing where the success message is used to auto-close the modal page.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(46811067042273511691)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_prompt=>'Dialog Height/Width Mode'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'AUTO'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Use this attribute to control the size of the modal page. The default value of "Auto" will try to automatically determine the appropriate size of the page based on the content. However, if you need more control, this attribute allows you set the heig'
||'ht and width as a percentage of the total window size or by a fixed number of pixels.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(46811105631322517983)
,p_plugin_attribute_id=>wwv_flow_api.id(46811067042273511691)
,p_display_sequence=>1
,p_display_value=>'Auto'
,p_return_value=>'AUTO'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(46811068847121513080)
,p_plugin_attribute_id=>wwv_flow_api.id(46811067042273511691)
,p_display_sequence=>10
,p_display_value=>'Static by percent of window'
,p_return_value=>'STATIC_%'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(46811069416777513740)
,p_plugin_attribute_id=>wwv_flow_api.id(46811067042273511691)
,p_display_sequence=>20
,p_display_value=>'Static by pixels'
,p_return_value=>'STATIC_PX'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(46811288918864590022)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_prompt=>'Height'
,p_attribute_type=>'INTEGER'
,p_is_required=>true
,p_display_length=>2
,p_max_length=>3
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(46811067042273511691)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'STATIC_%,STATIC_PX'
,p_help_text=>'Use this attribute to set the height of the modal page. This value can be used to specify a percentage of the total screen or specific number of pixels which is determined by the Dialog Height/Width Mode attribute.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(46811291232024593834)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_prompt=>'Width'
,p_attribute_type=>'INTEGER'
,p_is_required=>true
,p_display_length=>2
,p_max_length=>3
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(46811067042273511691)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'STATIC_%,STATIC_PX'
,p_help_text=>'Use this attribute to set the width of the modal page. This value can be used to specify a percentage of the total screen or specific number of pixels which is determined by the Dialog Height/Width Mode attribute.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(46811332923198629108)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_prompt=>'Modal Page ID'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>30
,p_max_length=>50
,p_is_translatable=>false
,p_help_text=>'Use this attribute to associate an identifier, such as "create-customer-page", with the modal page that has been opened. When the modal page closes this identifier will be passed back with the event object so that the closing of one modal page can be'
||' differentiated from another. The value can be accessed from the data object of "this" in a Dynamic Action with: this.data.modalPageId'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(69416735443948868201)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_name=>'modalpageautoclose'
,p_display_name=>'Auto Close'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(44017018528999700135)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_name=>'modalpageclose'
,p_display_name=>'Close'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(33721669038490778196)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_name=>'modalpageendopen'
,p_display_name=>'End Open'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(33721669443685779727)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_name=>'modalpagemanualclose'
,p_display_name=>'Manual Close'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(33721669749225781327)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_name=>'modalpagestartopen'
,p_display_name=>'Start Open'
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A0D0A20202020436F6C6F72426F7820436F7265205374796C653A0D0A2020202054686520666F6C6C6F77696E672043535320697320636F6E73697374656E74206265747765656E206578616D706C65207468656D657320616E642073686F756C6420';
wwv_flow_api.g_varchar2_table(2) := '6E6F7420626520616C74657265642E0D0A2A2F0D0A23636F6C6F72626F782C202363626F784F7665726C61792C202363626F78577261707065727B706F736974696F6E3A6162736F6C7574653B20746F703A303B206C6566743A303B207A2D696E646578';
wwv_flow_api.g_varchar2_table(3) := '3A393939393B206F766572666C6F773A68696464656E3B7D0D0A2363626F784F7665726C61797B706F736974696F6E3A66697865643B2077696474683A313030253B206865696768743A313030253B7D0D0A2363626F784D6964646C654C6566742C2023';
wwv_flow_api.g_varchar2_table(4) := '63626F78426F74746F6D4C6566747B636C6561723A6C6566743B7D0D0A2363626F78436F6E74656E747B706F736974696F6E3A72656C61746976653B7D0D0A2363626F784C6F61646564436F6E74656E747B6F766572666C6F773A6175746F3B7D0D0A23';
wwv_flow_api.g_varchar2_table(5) := '63626F785469746C657B6D617267696E3A303B7D0D0A2363626F784C6F6164696E674F7665726C61792C202363626F784C6F6164696E67477261706869637B706F736974696F6E3A6162736F6C7574653B20746F703A303B206C6566743A303B20776964';
wwv_flow_api.g_varchar2_table(6) := '74683A313030253B206865696768743A313030253B7D0D0A2363626F7850726576696F75732C202363626F784E6578742C202363626F78436C6F73652C202363626F78536C69646573686F777B637572736F723A706F696E7465723B7D0D0A2E63626F78';
wwv_flow_api.g_varchar2_table(7) := '50686F746F7B666C6F61743A6C6566743B206D617267696E3A6175746F3B20626F726465723A303B20646973706C61793A626C6F636B3B7D0D0A2E63626F78496672616D657B77696474683A313030253B206865696768743A313030253B20646973706C';
wwv_flow_api.g_varchar2_table(8) := '61793A626C6F636B3B20626F726465723A303B7D0D0A0D0A2F2A200D0A2020202055736572205374796C653A0D0A202020204368616E67652074686520666F6C6C6F77696E67207374796C657320746F206D6F646966792074686520617070656172616E';
wwv_flow_api.g_varchar2_table(9) := '6365206F6620436F6C6F72426F782E202054686579206172650D0A202020206F72646572656420262074616262656420696E206120776179207468617420726570726573656E747320746865206E657374696E67206F66207468652067656E6572617465';
wwv_flow_api.g_varchar2_table(10) := '642048544D4C2E0D0A2A2F0D0A2363626F784F7665726C61797B6261636B67726F756E643A75726C2874316F7665726C61792E706E672920726570656174203020303B7D0D0A23636F6C6F72626F787B7D0D0A202020202363626F78546F704C6566747B';
wwv_flow_api.g_varchar2_table(11) := '77696474683A323170783B206865696768743A323170783B206261636B67726F756E643A75726C287431636F6E74726F6C732E706E6729206E6F2D726570656174202D313031707820303B7D0D0A202020202363626F78546F7052696768747B77696474';
wwv_flow_api.g_varchar2_table(12) := '683A323170783B206865696768743A323170783B206261636B67726F756E643A75726C287431636F6E74726F6C732E706E6729206E6F2D726570656174202D313330707820303B7D0D0A202020202363626F78426F74746F6D4C6566747B77696474683A';
wwv_flow_api.g_varchar2_table(13) := '323170783B206865696768743A323170783B206261636B67726F756E643A75726C287431636F6E74726F6C732E706E6729206E6F2D726570656174202D3130317078202D323970783B7D0D0A202020202363626F78426F74746F6D52696768747B776964';
wwv_flow_api.g_varchar2_table(14) := '74683A323170783B206865696768743A323170783B206261636B67726F756E643A75726C287431636F6E74726F6C732E706E6729206E6F2D726570656174202D3133307078202D323970783B7D0D0A202020202363626F784D6964646C654C6566747B77';
wwv_flow_api.g_varchar2_table(15) := '696474683A323170783B206261636B67726F756E643A75726C287431636F6E74726F6C732E706E6729206C65667420746F70207265706561742D793B7D0D0A202020202363626F784D6964646C6552696768747B77696474683A323170783B206261636B';
wwv_flow_api.g_varchar2_table(16) := '67726F756E643A75726C287431636F6E74726F6C732E706E672920726967687420746F70207265706561742D793B7D0D0A202020202363626F78546F7043656E7465727B6865696768743A323170783B206261636B67726F756E643A75726C287431626F';
wwv_flow_api.g_varchar2_table(17) := '726465722E706E672920302030207265706561742D783B7D0D0A202020202363626F78426F74746F6D43656E7465727B6865696768743A323170783B206261636B67726F756E643A75726C287431626F726465722E706E67292030202D32397078207265';
wwv_flow_api.g_varchar2_table(18) := '706561742D783B7D0D0A202020202363626F78436F6E74656E747B6261636B67726F756E643A236666663B206F766572666C6F773A68696464656E3B7D0D0A20202020202020202E63626F78496672616D657B6261636B67726F756E643A236666663B7D';
wwv_flow_api.g_varchar2_table(19) := '0D0A20202020202020202363626F784572726F727B70616464696E673A353070783B20626F726465723A31707820736F6C696420236363633B7D0D0A20202020202020202363626F784C6F61646564436F6E74656E747B6D617267696E2D626F74746F6D';
wwv_flow_api.g_varchar2_table(20) := '3A323870783B7D0D0A20202020202020202363626F785469746C657B706F736974696F6E3A6162736F6C7574653B20626F74746F6D3A3470783B206C6566743A303B20746578742D616C69676E3A63656E7465723B2077696474683A313030253B20636F';
wwv_flow_api.g_varchar2_table(21) := '6C6F723A233934393439343B7D0D0A20202020202020202363626F7843757272656E747B706F736974696F6E3A6162736F6C7574653B20626F74746F6D3A3470783B206C6566743A353870783B20636F6C6F723A233934393439343B7D0D0A2020202020';
wwv_flow_api.g_varchar2_table(22) := '2020202363626F78536C69646573686F777B706F736974696F6E3A6162736F6C7574653B20626F74746F6D3A3470783B2072696768743A333070783B20636F6C6F723A233030393265663B7D0D0A20202020202020202363626F7850726576696F75737B';
wwv_flow_api.g_varchar2_table(23) := '706F736974696F6E3A6162736F6C7574653B20626F74746F6D3A303B206C6566743A303B206261636B67726F756E643A75726C287431636F6E74726F6C732E706E6729206E6F2D726570656174202D3735707820303B2077696474683A323570783B2068';
wwv_flow_api.g_varchar2_table(24) := '65696768743A323570783B20746578742D696E64656E743A2D3939393970783B7D0D0A20202020202020202363626F7850726576696F75733A686F7665727B6261636B67726F756E642D706F736974696F6E3A2D37357078202D323570783B7D0D0A2020';
wwv_flow_api.g_varchar2_table(25) := '2020202020202363626F784E6578747B706F736974696F6E3A6162736F6C7574653B20626F74746F6D3A303B206C6566743A323770783B206261636B67726F756E643A75726C287431636F6E74726F6C732E706E6729206E6F2D726570656174202D3530';
wwv_flow_api.g_varchar2_table(26) := '707820303B2077696474683A323570783B206865696768743A323570783B20746578742D696E64656E743A2D3939393970783B7D0D0A20202020202020202363626F784E6578743A686F7665727B6261636B67726F756E642D706F736974696F6E3A2D35';
wwv_flow_api.g_varchar2_table(27) := '307078202D323570783B7D0D0A20202020202020202363626F784C6F6164696E674F7665726C61797B6261636B67726F756E643A75726C2874316C6F6164696E675F6261636B67726F756E642E706E6729206E6F2D7265706561742063656E7465722063';
wwv_flow_api.g_varchar2_table(28) := '656E7465723B7D0D0A20202020202020202363626F784C6F6164696E67477261706869637B6261636B67726F756E643A75726C2874316C6F6164696E672E67696629206E6F2D7265706561742063656E7465722063656E7465723B7D0D0A202020202020';
wwv_flow_api.g_varchar2_table(29) := '20202363626F78436C6F73657B706F736974696F6E3A6162736F6C7574653B20626F74746F6D3A303B2072696768743A303B206261636B67726F756E643A75726C287431636F6E74726F6C732E706E6729206E6F2D726570656174202D3235707820303B';
wwv_flow_api.g_varchar2_table(30) := '2077696474683A323570783B206865696768743A323570783B20746578742D696E64656E743A2D3939393970783B7D0D0A20202020202020202363626F78436C6F73653A686F7665727B6261636B67726F756E642D706F736974696F6E3A2D3235707820';
wwv_flow_api.g_varchar2_table(31) := '2D323570783B7D0D0A0D0A2F2A0D0A202054686520666F6C6C6F77696E6720666978657320612070726F626C656D2077686572652049453720616E6420494538207265706C616365206120504E47277320616C706861207472616E73706172656E637920';
wwv_flow_api.g_varchar2_table(32) := '77697468206120626C61636B2066696C6C0D0A20207768656E20616E20616C7068612066696C74657220286F706163697479206368616E67652920697320736574206F6E2074686520656C656D656E74206F7220616E636573746F7220656C656D656E74';
wwv_flow_api.g_varchar2_table(33) := '2E202054686973207374796C65206973206E6F74206170706C69656420746F206F72206E656564656420696E204945392E0D0A20205365653A20687474703A2F2F6A61636B6C6D6F6F72652E636F6D2F6E6F7465732F69652D7472616E73706172656E63';
wwv_flow_api.g_varchar2_table(34) := '792D70726F626C656D732F0D0A2A2F0D0A2E63626F784945202363626F78546F704C6566742C0D0A2E63626F784945202363626F78546F7043656E7465722C0D0A2E63626F784945202363626F78546F7052696768742C0D0A2E63626F78494520236362';
wwv_flow_api.g_varchar2_table(35) := '6F78426F74746F6D4C6566742C0D0A2E63626F784945202363626F78426F74746F6D43656E7465722C0D0A2E63626F784945202363626F78426F74746F6D52696768742C0D0A2E63626F784945202363626F784D6964646C654C6566742C0D0A2E63626F';
wwv_flow_api.g_varchar2_table(36) := '784945202363626F784D6964646C655269676874207B0D0A2020202066696C7465723A2070726F6769643A4458496D6167655472616E73666F726D2E4D6963726F736F66742E6772616469656E74287374617274436F6C6F727374723D23303046464646';
wwv_flow_api.g_varchar2_table(37) := '46462C656E64436F6C6F727374723D233030464646464646293B0D0A7D0D0A0D0A2F2A0D0A202054686520666F6C6C6F77696E672070726F766964657320504E47207472616E73706172656E637920737570706F727420666F72204945360D0A20204665';
wwv_flow_api.g_varchar2_table(38) := '656C206672656520746F2072656D6F7665207468697320616E6420746865202F6965362F206469726563746F727920696620796F7520686176652064726F707065642049453620737570706F72742E0D0A2A2F0D0A2E63626F78494536202363626F7854';
wwv_flow_api.g_varchar2_table(39) := '6F704C6566747B6261636B67726F756E643A75726C287431626F72646572546F704C6566742E706E67293B7D0D0A2E63626F78494536202363626F78546F7043656E7465727B6261636B67726F756E643A75726C287431626F72646572546F7043656E74';
wwv_flow_api.g_varchar2_table(40) := '65722E706E67293B7D0D0A2E63626F78494536202363626F78546F7052696768747B6261636B67726F756E643A75726C287431626F72646572546F7052696768742E706E67293B7D0D0A2E63626F78494536202363626F78426F74746F6D4C6566747B62';
wwv_flow_api.g_varchar2_table(41) := '61636B67726F756E643A75726C287431626F72646572426F74746F6D4C6566742E706E67293B7D0D0A2E63626F78494536202363626F78426F74746F6D43656E7465727B6261636B67726F756E643A75726C287431626F72646572426F74746F6D43656E';
wwv_flow_api.g_varchar2_table(42) := '7465722E706E67293B7D0D0A2E63626F78494536202363626F78426F74746F6D52696768747B6261636B67726F756E643A75726C287431626F72646572426F74746F6D52696768742E706E67293B7D0D0A2E63626F78494536202363626F784D6964646C';
wwv_flow_api.g_varchar2_table(43) := '654C6566747B6261636B67726F756E643A75726C287431626F726465724D6964646C654C6566742E706E67293B7D0D0A2E63626F78494536202363626F784D6964646C6552696768747B6261636B67726F756E643A75726C287431626F726465724D6964';
wwv_flow_api.g_varchar2_table(44) := '646C6552696768742E706E67293B7D0D0A0D0A2E63626F78494536202363626F78546F704C6566742C0D0A2E63626F78494536202363626F78546F7043656E7465722C0D0A2E63626F78494536202363626F78546F7052696768742C0D0A2E63626F7849';
wwv_flow_api.g_varchar2_table(45) := '4536202363626F78426F74746F6D4C6566742C0D0A2E63626F78494536202363626F78426F74746F6D43656E7465722C0D0A2E63626F78494536202363626F78426F74746F6D52696768742C0D0A2E63626F78494536202363626F784D6964646C654C65';
wwv_flow_api.g_varchar2_table(46) := '66742C0D0A2E63626F78494536202363626F784D6964646C655269676874207B0D0A202020205F6265686176696F723A2065787072657373696F6E28746869732E737263203D20746869732E737263203F20746869732E737263203A20746869732E6375';
wwv_flow_api.g_varchar2_table(47) := '7272656E745374796C652E6261636B67726F756E64496D6167652E73706C697428272227295B315D2C20746869732E7374796C652E6261636B67726F756E64203D20226E6F6E65222C20746869732E7374796C652E66696C746572203D202270726F6769';
wwv_flow_api.g_varchar2_table(48) := '643A4458496D6167655472616E73666F726D2E4D6963726F736F66742E416C706861496D6167654C6F61646572287372633D22202B20746869732E737263202B20222C2073697A696E674D6574686F643D277363616C65272922293B0D0A7D0D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(33721641661764698164)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_file_name=>'t1colorbox.css'
,p_mime_type=>'text/css'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A0D0A20202020436F6C6F72426F7820436F7265205374796C653A0D0A2020202054686520666F6C6C6F77696E672043535320697320636F6E73697374656E74206265747765656E206578616D706C65207468656D657320616E642073686F756C6420';
wwv_flow_api.g_varchar2_table(2) := '6E6F7420626520616C74657265642E0D0A2A2F0D0A23636F6C6F72626F782C202363626F784F7665726C61792C202363626F78577261707065727B706F736974696F6E3A6162736F6C7574653B20746F703A303B206C6566743A303B207A2D696E646578';
wwv_flow_api.g_varchar2_table(3) := '3A393939393B206F766572666C6F773A68696464656E3B7D0D0A2363626F784F7665726C61797B706F736974696F6E3A66697865643B2077696474683A313030253B206865696768743A313030253B7D0D0A2363626F784D6964646C654C6566742C2023';
wwv_flow_api.g_varchar2_table(4) := '63626F78426F74746F6D4C6566747B636C6561723A6C6566743B7D0D0A2363626F78436F6E74656E747B706F736974696F6E3A72656C61746976653B7D0D0A2363626F784C6F61646564436F6E74656E747B6F766572666C6F773A6175746F3B7D0D0A23';
wwv_flow_api.g_varchar2_table(5) := '63626F785469746C657B6D617267696E3A303B7D0D0A2363626F784C6F6164696E674F7665726C61792C202363626F784C6F6164696E67477261706869637B706F736974696F6E3A6162736F6C7574653B20746F703A303B206C6566743A303B20776964';
wwv_flow_api.g_varchar2_table(6) := '74683A313030253B206865696768743A313030253B7D0D0A2363626F7850726576696F75732C202363626F784E6578742C202363626F78436C6F73652C202363626F78536C69646573686F777B637572736F723A706F696E7465723B7D0D0A2E63626F78';
wwv_flow_api.g_varchar2_table(7) := '50686F746F7B666C6F61743A6C6566743B206D617267696E3A6175746F3B20626F726465723A303B20646973706C61793A626C6F636B3B7D0D0A2E63626F78496672616D657B77696474683A313030253B206865696768743A313030253B20646973706C';
wwv_flow_api.g_varchar2_table(8) := '61793A626C6F636B3B20626F726465723A303B7D0D0A0D0A2F2A200D0A2020202055736572205374796C653A0D0A202020204368616E67652074686520666F6C6C6F77696E67207374796C657320746F206D6F646966792074686520617070656172616E';
wwv_flow_api.g_varchar2_table(9) := '6365206F6620436F6C6F72426F782E202054686579206172650D0A202020206F72646572656420262074616262656420696E206120776179207468617420726570726573656E747320746865206E657374696E67206F66207468652067656E6572617465';
wwv_flow_api.g_varchar2_table(10) := '642048544D4C2E0D0A2A2F0D0A2363626F784F7665726C61797B6261636B67726F756E643A236666663B7D0D0A23636F6C6F72626F787B7D0D0A202020202363626F78436F6E74656E747B6D617267696E2D746F703A333270783B206F766572666C6F77';
wwv_flow_api.g_varchar2_table(11) := '3A76697369626C653B7D0D0A20202020202020202E63626F78496672616D657B6261636B67726F756E643A236666663B7D0D0A20202020202020202363626F784572726F727B70616464696E673A353070783B20626F726465723A31707820736F6C6964';
wwv_flow_api.g_varchar2_table(12) := '20236363633B7D0D0A20202020202020202363626F784C6F61646564436F6E74656E747B6261636B67726F756E643A233030303B2070616464696E673A3170783B7D0D0A20202020202020202363626F784C6F6164696E67477261706869637B6261636B';
wwv_flow_api.g_varchar2_table(13) := '67726F756E643A75726C2874326C6F6164696E672E67696629206E6F2D7265706561742063656E7465722063656E7465723B7D0D0A20202020202020202363626F784C6F6164696E674F7665726C61797B6261636B67726F756E643A233030303B7D0D0A';
wwv_flow_api.g_varchar2_table(14) := '20202020202020202363626F785469746C657B706F736974696F6E3A6162736F6C7574653B20746F703A2D323270783B206C6566743A303B20636F6C6F723A233030303B7D0D0A20202020202020202363626F7843757272656E747B706F736974696F6E';
wwv_flow_api.g_varchar2_table(15) := '3A6162736F6C7574653B20746F703A2D323270783B2072696768743A32303570783B20746578742D696E64656E743A2D3939393970783B7D0D0A20202020202020202363626F78536C69646573686F772C202363626F7850726576696F75732C20236362';
wwv_flow_api.g_varchar2_table(16) := '6F784E6578742C202363626F78436C6F73657B746578742D696E64656E743A2D3939393970783B2077696474683A323070783B206865696768743A323070783B20706F736974696F6E3A6162736F6C7574653B20746F703A2D323070783B206261636B67';
wwv_flow_api.g_varchar2_table(17) := '726F756E643A75726C287432636F6E74726F6C732E706E6729206E6F2D726570656174203020303B7D0D0A20202020202020202363626F7850726576696F75737B6261636B67726F756E642D706F736974696F6E3A307078203070783B2072696768743A';
wwv_flow_api.g_varchar2_table(18) := '343470783B7D0D0A20202020202020202363626F7850726576696F75733A686F7665727B6261636B67726F756E642D706F736974696F6E3A307078202D323570783B7D0D0A20202020202020202363626F784E6578747B6261636B67726F756E642D706F';
wwv_flow_api.g_varchar2_table(19) := '736974696F6E3A2D32357078203070783B2072696768743A323270783B7D0D0A20202020202020202363626F784E6578743A686F7665727B6261636B67726F756E642D706F736974696F6E3A2D32357078202D323570783B7D0D0A202020202020202023';
wwv_flow_api.g_varchar2_table(20) := '63626F78436C6F73657B6261636B67726F756E642D706F736974696F6E3A2D35307078203070783B2072696768743A303B7D0D0A20202020202020202363626F78436C6F73653A686F7665727B6261636B67726F756E642D706F736974696F6E3A2D3530';
wwv_flow_api.g_varchar2_table(21) := '7078202D323570783B7D0D0A20202020202020202E63626F78536C69646573686F775F6F6E202363626F7850726576696F75732C202E63626F78536C69646573686F775F6F6666202363626F7850726576696F75737B72696768743A363670783B7D0D0A';
wwv_flow_api.g_varchar2_table(22) := '20202020202020202E63626F78536C69646573686F775F6F6E202363626F78536C69646573686F777B6261636B67726F756E642D706F736974696F6E3A2D37357078202D323570783B2072696768743A343470783B7D0D0A20202020202020202E63626F';
wwv_flow_api.g_varchar2_table(23) := '78536C69646573686F775F6F6E202363626F78536C69646573686F773A686F7665727B6261636B67726F756E642D706F736974696F6E3A2D3130307078202D323570783B7D0D0A20202020202020202E63626F78536C69646573686F775F6F6666202363';
wwv_flow_api.g_varchar2_table(24) := '626F78536C69646573686F777B6261636B67726F756E642D706F736974696F6E3A2D3130307078203070783B2072696768743A343470783B7D0D0A20202020202020202E63626F78536C69646573686F775F6F6666202363626F78536C69646573686F77';
wwv_flow_api.g_varchar2_table(25) := '3A686F7665727B6261636B67726F756E642D706F736974696F6E3A2D37357078202D323570783B7D0D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(33721642359823699037)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_file_name=>'t2colorbox.css'
,p_mime_type=>'text/css'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A0D0A20202020436F6C6F72426F7820436F7265205374796C653A0D0A2020202054686520666F6C6C6F77696E672043535320697320636F6E73697374656E74206265747765656E206578616D706C65207468656D657320616E642073686F756C6420';
wwv_flow_api.g_varchar2_table(2) := '6E6F7420626520616C74657265642E0D0A2A2F0D0A23636F6C6F72626F782C202363626F784F7665726C61792C202363626F78577261707065727B706F736974696F6E3A6162736F6C7574653B20746F703A303B206C6566743A303B207A2D696E646578';
wwv_flow_api.g_varchar2_table(3) := '3A393939393B206F766572666C6F773A68696464656E3B7D0D0A2363626F784F7665726C61797B706F736974696F6E3A66697865643B2077696474683A313030253B206865696768743A313030253B7D0D0A2363626F784D6964646C654C6566742C2023';
wwv_flow_api.g_varchar2_table(4) := '63626F78426F74746F6D4C6566747B636C6561723A6C6566743B7D0D0A2363626F78436F6E74656E747B706F736974696F6E3A72656C61746976653B7D0D0A2363626F784C6F61646564436F6E74656E747B6F766572666C6F773A6175746F3B7D0D0A23';
wwv_flow_api.g_varchar2_table(5) := '63626F785469746C657B6D617267696E3A303B7D0D0A2363626F784C6F6164696E674F7665726C61792C202363626F784C6F6164696E67477261706869637B706F736974696F6E3A6162736F6C7574653B20746F703A303B206C6566743A303B20776964';
wwv_flow_api.g_varchar2_table(6) := '74683A313030253B206865696768743A313030253B7D0D0A2363626F7850726576696F75732C202363626F784E6578742C202363626F78436C6F73652C202363626F78536C69646573686F777B637572736F723A706F696E7465723B7D0D0A2E63626F78';
wwv_flow_api.g_varchar2_table(7) := '50686F746F7B666C6F61743A6C6566743B206D617267696E3A6175746F3B20626F726465723A303B20646973706C61793A626C6F636B3B7D0D0A2E63626F78496672616D657B77696474683A313030253B206865696768743A313030253B20646973706C';
wwv_flow_api.g_varchar2_table(8) := '61793A626C6F636B3B20626F726465723A303B7D0D0A0D0A2F2A200D0A2020202055736572205374796C653A0D0A202020204368616E67652074686520666F6C6C6F77696E67207374796C657320746F206D6F646966792074686520617070656172616E';
wwv_flow_api.g_varchar2_table(9) := '6365206F6620436F6C6F72426F782E202054686579206172650D0A202020206F72646572656420262074616262656420696E206120776179207468617420726570726573656E747320746865206E657374696E67206F66207468652067656E6572617465';
wwv_flow_api.g_varchar2_table(10) := '642048544D4C2E0D0A2A2F0D0A2363626F784F7665726C61797B6261636B67726F756E643A233030303B7D0D0A23636F6C6F72626F787B7D0D0A202020202363626F78436F6E74656E747B6D617267696E2D746F703A323070783B7D0D0A202020202020';
wwv_flow_api.g_varchar2_table(11) := '20202E63626F78496672616D657B6261636B67726F756E643A236666663B7D0D0A20202020202020202363626F784572726F727B70616464696E673A353070783B20626F726465723A31707820736F6C696420236363633B7D0D0A202020202020202023';
wwv_flow_api.g_varchar2_table(12) := '63626F784C6F61646564436F6E74656E747B626F726465723A35707820736F6C696420233030303B206261636B67726F756E643A236666663B7D0D0A20202020202020202363626F785469746C657B706F736974696F6E3A6162736F6C7574653B20746F';
wwv_flow_api.g_varchar2_table(13) := '703A2D323070783B206C6566743A303B20636F6C6F723A236363633B7D0D0A20202020202020202363626F7843757272656E747B706F736974696F6E3A6162736F6C7574653B20746F703A2D323070783B2072696768743A3070783B20636F6C6F723A23';
wwv_flow_api.g_varchar2_table(14) := '6363633B7D0D0A20202020202020202363626F78536C69646573686F777B706F736974696F6E3A6162736F6C7574653B20746F703A2D323070783B2072696768743A393070783B20636F6C6F723A236666663B7D0D0A20202020202020202363626F7850';
wwv_flow_api.g_varchar2_table(15) := '726576696F75737B706F736974696F6E3A6162736F6C7574653B20746F703A3530253B206C6566743A3570783B206D617267696E2D746F703A2D333270783B206261636B67726F756E643A75726C287433636F6E74726F6C732E706E6729206E6F2D7265';
wwv_flow_api.g_varchar2_table(16) := '7065617420746F70206C6566743B2077696474683A323870783B206865696768743A363570783B20746578742D696E64656E743A2D3939393970783B7D0D0A20202020202020202363626F7850726576696F75733A686F7665727B6261636B67726F756E';
wwv_flow_api.g_varchar2_table(17) := '642D706F736974696F6E3A626F74746F6D206C6566743B7D0D0A20202020202020202363626F784E6578747B706F736974696F6E3A6162736F6C7574653B20746F703A3530253B2072696768743A3570783B206D617267696E2D746F703A2D333270783B';
wwv_flow_api.g_varchar2_table(18) := '206261636B67726F756E643A75726C287433636F6E74726F6C732E706E6729206E6F2D72657065617420746F702072696768743B2077696474683A323870783B206865696768743A363570783B20746578742D696E64656E743A2D3939393970783B7D0D';
wwv_flow_api.g_varchar2_table(19) := '0A20202020202020202363626F784E6578743A686F7665727B6261636B67726F756E642D706F736974696F6E3A626F74746F6D2072696768743B7D0D0A20202020202020202363626F784C6F6164696E674F7665726C61797B6261636B67726F756E643A';
wwv_flow_api.g_varchar2_table(20) := '233030303B7D0D0A20202020202020202363626F784C6F6164696E67477261706869637B6261636B67726F756E643A75726C2874336C6F6164696E672E67696629206E6F2D7265706561742063656E7465722063656E7465723B7D0D0A20202020202020';
wwv_flow_api.g_varchar2_table(21) := '202363626F78436C6F73657B706F736974696F6E3A6162736F6C7574653B20746F703A3570783B2072696768743A3570783B20646973706C61793A626C6F636B3B206261636B67726F756E643A75726C287433636F6E74726F6C732E706E6729206E6F2D';
wwv_flow_api.g_varchar2_table(22) := '72657065617420746F702063656E7465723B2077696474683A333870783B206865696768743A313970783B20746578742D696E64656E743A2D3939393970783B7D0D0A20202020202020202363626F78436C6F73653A686F7665727B6261636B67726F75';
wwv_flow_api.g_varchar2_table(23) := '6E642D706F736974696F6E3A626F74746F6D2063656E7465723B7D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(33721643058098699804)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_file_name=>'t3colorbox.css'
,p_mime_type=>'text/css'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A0D0A20202020436F6C6F72426F7820436F7265205374796C653A0D0A2020202054686520666F6C6C6F77696E672043535320697320636F6E73697374656E74206265747765656E206578616D706C65207468656D657320616E642073686F756C6420';
wwv_flow_api.g_varchar2_table(2) := '6E6F7420626520616C74657265642E0D0A2A2F0D0A23636F6C6F72626F782C202363626F784F7665726C61792C202363626F78577261707065727B706F736974696F6E3A6162736F6C7574653B20746F703A303B206C6566743A303B207A2D696E646578';
wwv_flow_api.g_varchar2_table(3) := '3A393939393B206F766572666C6F773A68696464656E3B7D0D0A2363626F784F7665726C61797B706F736974696F6E3A66697865643B2077696474683A313030253B206865696768743A313030253B7D0D0A2363626F784D6964646C654C6566742C2023';
wwv_flow_api.g_varchar2_table(4) := '63626F78426F74746F6D4C6566747B636C6561723A6C6566743B7D0D0A2363626F78436F6E74656E747B706F736974696F6E3A72656C61746976653B7D0D0A2363626F784C6F61646564436F6E74656E747B6F766572666C6F773A6175746F3B7D0D0A23';
wwv_flow_api.g_varchar2_table(5) := '63626F785469746C657B6D617267696E3A303B7D0D0A2363626F784C6F6164696E674F7665726C61792C202363626F784C6F6164696E67477261706869637B706F736974696F6E3A6162736F6C7574653B20746F703A303B206C6566743A303B20776964';
wwv_flow_api.g_varchar2_table(6) := '74683A313030253B206865696768743A313030253B7D0D0A2363626F7850726576696F75732C202363626F784E6578742C202363626F78436C6F73652C202363626F78536C69646573686F777B637572736F723A706F696E7465723B7D0D0A2E63626F78';
wwv_flow_api.g_varchar2_table(7) := '50686F746F7B666C6F61743A6C6566743B206D617267696E3A6175746F3B20626F726465723A303B20646973706C61793A626C6F636B3B7D0D0A2E63626F78496672616D657B77696474683A313030253B206865696768743A313030253B20646973706C';
wwv_flow_api.g_varchar2_table(8) := '61793A626C6F636B3B20626F726465723A303B7D0D0A0D0A2F2A200D0A2020202055736572205374796C653A0D0A202020204368616E67652074686520666F6C6C6F77696E67207374796C657320746F206D6F646966792074686520617070656172616E';
wwv_flow_api.g_varchar2_table(9) := '6365206F6620436F6C6F72426F782E202054686579206172650D0A202020206F72646572656420262074616262656420696E206120776179207468617420726570726573656E747320746865206E657374696E67206F66207468652067656E6572617465';
wwv_flow_api.g_varchar2_table(10) := '642048544D4C2E0D0A2A2F0D0A2363626F784F7665726C61797B6261636B67726F756E643A236666663B7D0D0A23636F6C6F72626F787B7D0D0A202020202363626F78546F704C6566747B77696474683A323570783B206865696768743A323570783B20';
wwv_flow_api.g_varchar2_table(11) := '6261636B67726F756E643A75726C287434626F72646572312E706E6729206E6F2D726570656174203020303B7D0D0A202020202363626F78546F7043656E7465727B6865696768743A323570783B206261636B67726F756E643A75726C287434626F7264';
wwv_flow_api.g_varchar2_table(12) := '6572312E706E6729207265706561742D782030202D353070783B7D0D0A202020202363626F78546F7052696768747B77696474683A323570783B206865696768743A323570783B206261636B67726F756E643A75726C287434626F72646572312E706E67';
wwv_flow_api.g_varchar2_table(13) := '29206E6F2D726570656174202D3235707820303B7D0D0A202020202363626F78426F74746F6D4C6566747B77696474683A323570783B206865696768743A323570783B206261636B67726F756E643A75726C287434626F72646572312E706E6729206E6F';
wwv_flow_api.g_varchar2_table(14) := '2D7265706561742030202D323570783B7D0D0A202020202363626F78426F74746F6D43656E7465727B6865696768743A323570783B206261636B67726F756E643A75726C287434626F72646572312E706E6729207265706561742D782030202D37357078';
wwv_flow_api.g_varchar2_table(15) := '3B7D0D0A202020202363626F78426F74746F6D52696768747B77696474683A323570783B206865696768743A323570783B206261636B67726F756E643A75726C287434626F72646572312E706E6729206E6F2D726570656174202D32357078202D323570';
wwv_flow_api.g_varchar2_table(16) := '783B7D0D0A202020202363626F784D6964646C654C6566747B77696474683A323570783B206261636B67726F756E643A75726C287434626F72646572322E706E6729207265706561742D79203020303B7D0D0A202020202363626F784D6964646C655269';
wwv_flow_api.g_varchar2_table(17) := '6768747B77696474683A323570783B206261636B67726F756E643A75726C287434626F72646572322E706E6729207265706561742D79202D3235707820303B7D0D0A202020202363626F78436F6E74656E747B6261636B67726F756E643A236666663B20';
wwv_flow_api.g_varchar2_table(18) := '6F766572666C6F773A68696464656E3B7D0D0A20202020202020202E63626F78496672616D657B6261636B67726F756E643A236666663B7D0D0A20202020202020202363626F784572726F727B70616464696E673A353070783B20626F726465723A3170';
wwv_flow_api.g_varchar2_table(19) := '7820736F6C696420236363633B7D0D0A20202020202020202363626F784C6F61646564436F6E74656E747B6D617267696E2D626F74746F6D3A323070783B7D0D0A20202020202020202363626F785469746C657B706F736974696F6E3A6162736F6C7574';
wwv_flow_api.g_varchar2_table(20) := '653B20626F74746F6D3A3070783B206C6566743A303B20746578742D616C69676E3A63656E7465723B2077696474683A313030253B20636F6C6F723A233939393B7D0D0A20202020202020202363626F7843757272656E747B706F736974696F6E3A6162';
wwv_flow_api.g_varchar2_table(21) := '736F6C7574653B20626F74746F6D3A3070783B206C6566743A31303070783B20636F6C6F723A233939393B7D0D0A20202020202020202363626F78536C69646573686F777B706F736974696F6E3A6162736F6C7574653B20626F74746F6D3A3070783B20';
wwv_flow_api.g_varchar2_table(22) := '72696768743A343270783B20636F6C6F723A233434343B7D0D0A20202020202020202363626F7850726576696F75737B706F736974696F6E3A6162736F6C7574653B20626F74746F6D3A3070783B206C6566743A303B20636F6C6F723A233434343B7D0D';
wwv_flow_api.g_varchar2_table(23) := '0A20202020202020202363626F784E6578747B706F736974696F6E3A6162736F6C7574653B20626F74746F6D3A3070783B206C6566743A363370783B20636F6C6F723A233434343B7D0D0A20202020202020202363626F784C6F6164696E674F7665726C';
wwv_flow_api.g_varchar2_table(24) := '61797B6261636B67726F756E643A236666662075726C2874346C6F6164696E672E67696629206E6F2D72657065617420357078203570783B7D0D0A20202020202020202363626F78436C6F73657B706F736974696F6E3A6162736F6C7574653B20626F74';
wwv_flow_api.g_varchar2_table(25) := '746F6D3A303B2072696768743A303B20646973706C61793A626C6F636B3B20636F6C6F723A233434343B7D0D0A0D0A2F2A0D0A202054686520666F6C6C6F77696E6720666978657320612070726F626C656D2077686572652049453720616E6420494538';
wwv_flow_api.g_varchar2_table(26) := '207265706C616365206120504E47277320616C706861207472616E73706172656E63792077697468206120626C61636B2066696C6C0D0A20207768656E20616E20616C7068612066696C74657220286F706163697479206368616E676529206973207365';
wwv_flow_api.g_varchar2_table(27) := '74206F6E2074686520656C656D656E74206F7220616E636573746F7220656C656D656E742E202054686973207374796C65206973206E6F74206170706C69656420746F206F72206E656564656420696E204945392E0D0A20205365653A20687474703A2F';
wwv_flow_api.g_varchar2_table(28) := '2F6A61636B6C6D6F6F72652E636F6D2F6E6F7465732F69652D7472616E73706172656E63792D70726F626C656D732F0D0A2A2F0D0A2E63626F784945202363626F78546F704C6566742C0D0A2E63626F784945202363626F78546F7043656E7465722C0D';
wwv_flow_api.g_varchar2_table(29) := '0A2E63626F784945202363626F78546F7052696768742C0D0A2E63626F784945202363626F78426F74746F6D4C6566742C0D0A2E63626F784945202363626F78426F74746F6D43656E7465722C0D0A2E63626F784945202363626F78426F74746F6D5269';
wwv_flow_api.g_varchar2_table(30) := '6768742C0D0A2E63626F784945202363626F784D6964646C654C6566742C0D0A2E63626F784945202363626F784D6964646C655269676874207B0D0A2020202066696C7465723A2070726F6769643A4458496D6167655472616E73666F726D2E4D696372';
wwv_flow_api.g_varchar2_table(31) := '6F736F66742E6772616469656E74287374617274436F6C6F727374723D2330304646464646462C656E64436F6C6F727374723D233030464646464646293B0D0A7D0D0A0D0A2F2A0D0A202054686520666F6C6C6F77696E672070726F766964657320504E';
wwv_flow_api.g_varchar2_table(32) := '47207472616E73706172656E637920737570706F727420666F72204945360D0A20204665656C206672656520746F2072656D6F7665207468697320616E6420746865202F6965362F206469726563746F727920696620796F7520686176652064726F7070';
wwv_flow_api.g_varchar2_table(33) := '65642049453620737570706F72742E0D0A2A2F0D0A2E63626F78494536202363626F78546F704C6566747B6261636B67726F756E643A75726C287434626F72646572546F704C6566742E706E67293B7D0D0A2E63626F78494536202363626F78546F7043';
wwv_flow_api.g_varchar2_table(34) := '656E7465727B6261636B67726F756E643A75726C287434626F72646572546F7043656E7465722E706E67293B7D0D0A2E63626F78494536202363626F78546F7052696768747B6261636B67726F756E643A75726C287434626F72646572546F7052696768';
wwv_flow_api.g_varchar2_table(35) := '742E706E67293B7D0D0A2E63626F78494536202363626F78426F74746F6D4C6566747B6261636B67726F756E643A75726C287434626F72646572426F74746F6D4C6566742E706E67293B7D0D0A2E63626F78494536202363626F78426F74746F6D43656E';
wwv_flow_api.g_varchar2_table(36) := '7465727B6261636B67726F756E643A75726C287434626F72646572426F74746F6D43656E7465722E706E67293B7D0D0A2E63626F78494536202363626F78426F74746F6D52696768747B6261636B67726F756E643A75726C287434626F72646572426F74';
wwv_flow_api.g_varchar2_table(37) := '746F6D52696768742E706E67293B7D0D0A2E63626F78494536202363626F784D6964646C654C6566747B6261636B67726F756E643A75726C287434626F726465724D6964646C654C6566742E706E67293B7D0D0A2E63626F78494536202363626F784D69';
wwv_flow_api.g_varchar2_table(38) := '64646C6552696768747B6261636B67726F756E643A75726C287434626F726465724D6964646C6552696768742E706E67293B7D0D0A0D0A2E63626F78494536202363626F78546F704C6566742C0D0A2E63626F78494536202363626F78546F7043656E74';
wwv_flow_api.g_varchar2_table(39) := '65722C0D0A2E63626F78494536202363626F78546F7052696768742C0D0A2E63626F78494536202363626F78426F74746F6D4C6566742C0D0A2E63626F78494536202363626F78426F74746F6D43656E7465722C0D0A2E63626F78494536202363626F78';
wwv_flow_api.g_varchar2_table(40) := '426F74746F6D52696768742C0D0A2E63626F78494536202363626F784D6964646C654C6566742C0D0A2E63626F78494536202363626F784D6964646C655269676874207B0D0A202020205F6265686176696F723A2065787072657373696F6E2874686973';
wwv_flow_api.g_varchar2_table(41) := '2E737263203D20746869732E737263203F20746869732E737263203A20746869732E63757272656E745374796C652E6261636B67726F756E64496D6167652E73706C697428272227295B315D2C20746869732E7374796C652E6261636B67726F756E6420';
wwv_flow_api.g_varchar2_table(42) := '3D20226E6F6E65222C20746869732E7374796C652E66696C746572203D202270726F6769643A4458496D6167655472616E73666F726D2E4D6963726F736F66742E416C706861496D6167654C6F61646572287372633D22202B20746869732E737263202B';
wwv_flow_api.g_varchar2_table(43) := '20222C2073697A696E674D6574686F643D277363616C65272922293B0D0A7D0D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(33721643756373700570)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_file_name=>'t4colorbox.css'
,p_mime_type=>'text/css'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A0D0A20202020436F6C6F72426F7820436F7265205374796C653A0D0A2020202054686520666F6C6C6F77696E672043535320697320636F6E73697374656E74206265747765656E206578616D706C65207468656D657320616E642073686F756C6420';
wwv_flow_api.g_varchar2_table(2) := '6E6F7420626520616C74657265642E0D0A2A2F0D0A23636F6C6F72626F782C202363626F784F7665726C61792C202363626F78577261707065727B706F736974696F6E3A6162736F6C7574653B20746F703A303B206C6566743A303B207A2D696E646578';
wwv_flow_api.g_varchar2_table(3) := '3A393939393B206F766572666C6F773A68696464656E3B7D0D0A2363626F784F7665726C61797B706F736974696F6E3A66697865643B2077696474683A313030253B206865696768743A313030253B7D0D0A2363626F784D6964646C654C6566742C2023';
wwv_flow_api.g_varchar2_table(4) := '63626F78426F74746F6D4C6566747B636C6561723A6C6566743B7D0D0A2363626F78436F6E74656E747B706F736974696F6E3A72656C61746976653B7D0D0A2363626F784C6F61646564436F6E74656E747B6F766572666C6F773A6175746F3B7D0D0A23';
wwv_flow_api.g_varchar2_table(5) := '63626F785469746C657B6D617267696E3A303B7D0D0A2363626F784C6F6164696E674F7665726C61792C202363626F784C6F6164696E67477261706869637B706F736974696F6E3A6162736F6C7574653B20746F703A303B206C6566743A303B20776964';
wwv_flow_api.g_varchar2_table(6) := '74683A313030253B206865696768743A313030253B7D0D0A2363626F7850726576696F75732C202363626F784E6578742C202363626F78436C6F73652C202363626F78536C69646573686F777B637572736F723A706F696E7465723B7D0D0A2E63626F78';
wwv_flow_api.g_varchar2_table(7) := '50686F746F7B666C6F61743A6C6566743B206D617267696E3A6175746F3B20626F726465723A303B20646973706C61793A626C6F636B3B7D0D0A2E63626F78496672616D657B77696474683A313030253B206865696768743A313030253B20646973706C';
wwv_flow_api.g_varchar2_table(8) := '61793A626C6F636B3B20626F726465723A303B7D0D0A0D0A2F2A200D0A2020202055736572205374796C653A0D0A202020204368616E67652074686520666F6C6C6F77696E67207374796C657320746F206D6F646966792074686520617070656172616E';
wwv_flow_api.g_varchar2_table(9) := '6365206F6620436F6C6F72426F782E202054686579206172650D0A202020206F72646572656420262074616262656420696E206120776179207468617420726570726573656E747320746865206E657374696E67206F66207468652067656E6572617465';
wwv_flow_api.g_varchar2_table(10) := '642048544D4C2E0D0A2A2F0D0A2363626F784F7665726C61797B6261636B67726F756E643A233030303B7D0D0A23636F6C6F72626F787B7D0D0A202020202363626F78546F704C6566747B77696474683A313470783B206865696768743A313470783B20';
wwv_flow_api.g_varchar2_table(11) := '6261636B67726F756E643A75726C287435636F6E74726F6C732E706E6729206E6F2D726570656174203020303B7D0D0A202020202363626F78546F7043656E7465727B6865696768743A313470783B206261636B67726F756E643A75726C287435626F72';
wwv_flow_api.g_varchar2_table(12) := '6465722E706E6729207265706561742D7820746F70206C6566743B7D0D0A202020202363626F78546F7052696768747B77696474683A313470783B206865696768743A313470783B206261636B67726F756E643A75726C287435636F6E74726F6C732E70';
wwv_flow_api.g_varchar2_table(13) := '6E6729206E6F2D726570656174202D3336707820303B7D0D0A202020202363626F78426F74746F6D4C6566747B77696474683A313470783B206865696768743A343370783B206261636B67726F756E643A75726C287435636F6E74726F6C732E706E6729';
wwv_flow_api.g_varchar2_table(14) := '206E6F2D7265706561742030202D333270783B7D0D0A202020202363626F78426F74746F6D43656E7465727B6865696768743A343370783B206261636B67726F756E643A75726C287435626F726465722E706E6729207265706561742D7820626F74746F';
wwv_flow_api.g_varchar2_table(15) := '6D206C6566743B7D0D0A202020202363626F78426F74746F6D52696768747B77696474683A313470783B206865696768743A343370783B206261636B67726F756E643A75726C287435636F6E74726F6C732E706E6729206E6F2D726570656174202D3336';
wwv_flow_api.g_varchar2_table(16) := '7078202D333270783B7D0D0A202020202363626F784D6964646C654C6566747B77696474683A313470783B206261636B67726F756E643A75726C287435636F6E74726F6C732E706E6729207265706561742D79202D313735707820303B7D0D0A20202020';
wwv_flow_api.g_varchar2_table(17) := '2363626F784D6964646C6552696768747B77696474683A313470783B206261636B67726F756E643A75726C287435636F6E74726F6C732E706E6729207265706561742D79202D323131707820303B7D0D0A202020202363626F78436F6E74656E747B6261';
wwv_flow_api.g_varchar2_table(18) := '636B67726F756E643A236666663B206F766572666C6F773A76697369626C653B7D0D0A20202020202020202E63626F78496672616D657B6261636B67726F756E643A236666663B7D0D0A20202020202020202363626F784572726F727B70616464696E67';
wwv_flow_api.g_varchar2_table(19) := '3A353070783B20626F726465723A31707820736F6C696420236363633B7D0D0A20202020202020202363626F784C6F61646564436F6E74656E747B6D617267696E2D626F74746F6D3A3570783B7D0D0A20202020202020202363626F784C6F6164696E67';
wwv_flow_api.g_varchar2_table(20) := '4F7665726C61797B6261636B67726F756E643A75726C2874356C6F6164696E675F6261636B67726F756E642E706E6729206E6F2D7265706561742063656E7465722063656E7465723B7D0D0A20202020202020202363626F784C6F6164696E6747726170';
wwv_flow_api.g_varchar2_table(21) := '6869637B6261636B67726F756E643A75726C2874356C6F6164696E672E67696629206E6F2D7265706561742063656E7465722063656E7465723B7D0D0A20202020202020202363626F785469746C657B706F736974696F6E3A6162736F6C7574653B2062';
wwv_flow_api.g_varchar2_table(22) := '6F74746F6D3A2D323570783B206C6566743A303B20746578742D616C69676E3A63656E7465723B2077696474683A313030253B20666F6E742D7765696768743A626F6C643B20636F6C6F723A233743374337433B7D0D0A20202020202020202363626F78';
wwv_flow_api.g_varchar2_table(23) := '43757272656E747B706F736974696F6E3A6162736F6C7574653B20626F74746F6D3A2D323570783B206C6566743A353870783B20666F6E742D7765696768743A626F6C643B20636F6C6F723A233743374337433B7D0D0A20202020202020200D0A202020';
wwv_flow_api.g_varchar2_table(24) := '20202020202363626F7850726576696F75732C202363626F784E6578742C202363626F78436C6F73652C202363626F78536C69646573686F777B706F736974696F6E3A6162736F6C7574653B20626F74746F6D3A2D323970783B206261636B67726F756E';
wwv_flow_api.g_varchar2_table(25) := '643A75726C287435636F6E74726F6C732E706E6729206E6F2D72657065617420307078203070783B2077696474683A323370783B206865696768743A323370783B20746578742D696E64656E743A2D3939393970783B7D0D0A2020202020202020236362';
wwv_flow_api.g_varchar2_table(26) := '6F7850726576696F75737B6C6566743A3070783B206261636B67726F756E642D706F736974696F6E3A202D35317078202D323570783B7D0D0A20202020202020202363626F7850726576696F75733A686F7665727B6261636B67726F756E642D706F7369';
wwv_flow_api.g_varchar2_table(27) := '74696F6E3A2D35317078203070783B7D0D0A20202020202020202363626F784E6578747B6C6566743A323770783B206261636B67726F756E642D706F736974696F6E3A2D37357078202D323570783B7D0D0A20202020202020202363626F784E6578743A';
wwv_flow_api.g_varchar2_table(28) := '686F7665727B6261636B67726F756E642D706F736974696F6E3A2D37357078203070783B7D0D0A20202020202020202363626F78436C6F73657B72696768743A303B206261636B67726F756E642D706F736974696F6E3A2D3130307078202D323570783B';
wwv_flow_api.g_varchar2_table(29) := '7D0D0A20202020202020202363626F78436C6F73653A686F7665727B6261636B67726F756E642D706F736974696F6E3A2D3130307078203070783B7D0D0A20202020202020200D0A20202020202020202E63626F78536C69646573686F775F6F6E202363';
wwv_flow_api.g_varchar2_table(30) := '626F78536C69646573686F777B6261636B67726F756E642D706F736974696F6E3A2D3132357078203070783B2072696768743A323770783B7D0D0A20202020202020202E63626F78536C69646573686F775F6F6E202363626F78536C69646573686F773A';
wwv_flow_api.g_varchar2_table(31) := '686F7665727B6261636B67726F756E642D706F736974696F6E3A2D3135307078203070783B7D0D0A20202020202020202E63626F78536C69646573686F775F6F6666202363626F78536C69646573686F777B6261636B67726F756E642D706F736974696F';
wwv_flow_api.g_varchar2_table(32) := '6E3A2D3135307078202D323570783B2072696768743A323770783B7D0D0A20202020202020202E63626F78536C69646573686F775F6F6666202363626F78536C69646573686F773A686F7665727B6261636B67726F756E642D706F736974696F6E3A2D31';
wwv_flow_api.g_varchar2_table(33) := '32357078203070783B7D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(33721644454863701317)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_file_name=>'t5colorbox.css'
,p_mime_type=>'text/css'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2866756E6374696F6E2861297B612E776964676574282275692E617065785F6D6F64616C5F70616765222C7B6F7074696F6E733A7B7472616E736974696F6E3A6E756C6C2C6C6F6164696E67496D6167655372633A6E756C6C2C696E697469616C486569';
wwv_flow_api.g_varchar2_table(2) := '6768743A6E756C6C2C696E697469616C57696474683A6E756C6C2C6F7665726C61794F7061636974793A6E756C6C2C7363726F6C6C696E673A6E756C6C2C647261676761626C653A6E756C6C7D2C5F6372656174655072697661746553746F726167653A';
wwv_flow_api.g_varchar2_table(3) := '66756E6374696F6E28297B76617220623D746869733B6966286128222370646562756722292E6C656E677468297B617065782E646562756728274D6F64616C2050616765202D20537461727420225F6372656174655072697661746553746F7261676522';
wwv_flow_api.g_varchar2_table(4) := '27297D622E5F76616C7565733D7B75726C3A6E756C6C2C6469616C6F675469746C653A6E756C6C2C636C6F736553656C6563746F723A6E756C6C2C70726576656E7444656661756C743A6E756C6C2C68656967687457696474684D6F64653A6E756C6C2C';
wwv_flow_api.g_varchar2_table(5) := '6865696768743A6E756C6C2C77696474683A6E756C6C2C636C6F7365456C656D656E7453656C6563746F723A6E756C6C2C6D6F64616C5061676549643A6E756C6C2C6D6F64616C50616765436C6F736556616C75653A6E756C6C2C6469616C6F67546F70';
wwv_flow_api.g_varchar2_table(6) := '3A302C6469616C6F674C6566743A302C696672616D654865696768743A302C696672616D6557696474683A302C686173565363726F6C6C3A66616C73652C686173485363726F6C6C3A66616C73652C6175746F436C6F7365643A66616C73652C64656275';
wwv_flow_api.g_varchar2_table(7) := '673A6128222370646562756722292E6C656E677468213D3D307D3B622E5F656C656D656E74733D7B2477696E646F773A7B7D2C246469616C6F673A7B7D2C24777261707065723A7B7D2C24696672616D653A7B7D7D3B696628622E5F76616C7565732E64';
wwv_flow_api.g_varchar2_table(8) := '65627567297B617065782E646562756728274D6F64616C2050616765202D20456E6420225F6372656174655072697661746553746F726167652227297D7D2C5F6372656174653A66756E6374696F6E28297B76617220633D746869733B76617220623D6E';
wwv_flow_api.g_varchar2_table(9) := '657720496D61676528293B622E7372633D632E6F7074696F6E732E6C6F6164696E67496D6167655372633B6966286128222370646562756722292E6C656E677468297B617065782E646562756728274D6F64616C2050616765202D20537461727420225F';
wwv_flow_api.g_varchar2_table(10) := '6372656174652227293B617065782E646562756728222E2E2E4F7074696F6E7322293B666F72286E616D6520696E20632E6F7074696F6E73297B617065782E646562756728222E2E2E2E2E2E222B6E616D652B273A2022272B632E6F7074696F6E735B6E';
wwv_flow_api.g_varchar2_table(11) := '616D655D2B272227297D7D632E5F6372656174655072697661746553746F7261676528293B632E5F656C656D656E74732E2477696E646F773D612877696E646F77293B696628632E5F76616C7565732E6465627567297B617065782E646562756728274D';
wwv_flow_api.g_varchar2_table(12) := '6F64616C2050616765202D20456E6420225F6372656174652227297D7D2C6F70656E506167653A66756E6374696F6E28642C632C662C652C622C67297B76617220683D746869733B76617220693D7B7469746C653A756E646566696E65642C636C6F7365';
wwv_flow_api.g_varchar2_table(13) := '53656C6563746F723A756E646566696E65642C6D6F64616C5061676549643A756E646566696E65642C6865696768743A756E646566696E65647D3B696628682E5F76616C7565732E6465627567297B617065782E646562756728274D6F64616C20506167';
wwv_flow_api.g_varchar2_table(14) := '65202D20537461727420226F70656E506167652227297D682E5F76616C7565732E6175746F436C6F7365643D66616C73653B682E5F76616C7565732E6469616C6F675469746C653D643B682E5F76616C7565732E636C6F7365456C656D656E7453656C65';
wwv_flow_api.g_varchar2_table(15) := '63746F723D633B682E5F76616C7565732E6D6F64616C5061676549643D663B682E5F76616C7565732E68656967687457696474684D6F64653D653B682E5F76616C7565732E6865696768743D623B682E5F76616C7565732E77696474683D673B612E636F';
wwv_flow_api.g_varchar2_table(16) := '6C6F72626F78287B7472616E736974696F6E3A682E6F7074696F6E732E7472616E736974696F6E2C7469746C653A682E5F76616C7565732E6469616C6F675469746C652C6865696768743A682E6F7074696F6E732E696E697469616C4865696768742B22';
wwv_flow_api.g_varchar2_table(17) := '7078222C77696474683A682E6F7074696F6E732E696E697469616C57696474682B227078222C696672616D653A747275652C7363726F6C6C696E673A682E6F7074696F6E732E7363726F6C6C696E672C66617374496672616D653A66616C73652C6F7665';
wwv_flow_api.g_varchar2_table(18) := '726C6179436C6F73653A66616C73652C6F7061636974793A682E6F7074696F6E732E6F7665726C61794F7061636974792C687265663A682E5F76616C7565732E75726C2C6F6E4F70656E3A66756E6374696F6E28297B696628682E6F7074696F6E732E64';
wwv_flow_api.g_varchar2_table(19) := '7261676761626C65297B61282223636F6C6F72626F7822292E647261676761626C6528292E6373732822637572736F72222C226D6F766522297D6128646F63756D656E74292E747269676765722822617065786D6F64616C706167656F70656E22297D2C';
wwv_flow_api.g_varchar2_table(20) := '6F6E436F6D706C6574653A66756E6374696F6E28297B682E5F68616E646C65496672616D654C6F616428293B6128646F63756D656E74292E747269676765722822617065786D6F64616C70616765636F6D706C65746522297D2C6F6E436C65616E75703A';
wwv_flow_api.g_varchar2_table(21) := '66756E6374696F6E28297B682E5F656C656D656E74732E2477696E646F772E756E62696E642822726573697A65222C682E5F636865636B526573697A6554696D6572293B69662821682E5F76616C7565732E6175746F436C6F736564297B6128646F6375';
wwv_flow_api.g_varchar2_table(22) := '6D656E74292E7472696767657228226D6F64616C706167656D616E75616C636C6F7365222C7B6D6F64616C5061676549643A682E5F76616C7565732E6D6F64616C5061676549642C6D6F64616C50616765436C6F736556616C75653A2828682E5F76616C';
wwv_flow_api.g_varchar2_table(23) := '7565732E6D6F64616C50616765436C6F736556616C7565293F682E5F76616C7565732E6D6F64616C50616765436C6F736556616C75653A2222297D297D682E5F76616C7565732E6D6F64616C50616765436C6F736556616C75653D6E756C6C7D2C6F6E43';
wwv_flow_api.g_varchar2_table(24) := '6C6F7365643A66756E6374696F6E28297B6128646F63756D656E74292E747269676765722822617065786D6F64616C70616765636C6F73656422297D7D293B682E5F656C656D656E74732E2477696E646F772E62696E642822726573697A65222C7B7569';
wwv_flow_api.g_varchar2_table(25) := '773A687D2C682E5F636865636B526573697A6554696D6572293B696628682E5F76616C7565732E6465627567297B617065782E646562756728274D6F64616C2050616765202D20456E6420226F70656E506167652227297D7D2C6F70656E506167654672';
wwv_flow_api.g_varchar2_table(26) := '6F6D41706578546869733A66756E6374696F6E2869297B76617220673D746869733B76617220653D692E616374696F6E2E61747472696275746530323B76617220683D692E616374696F6E2E61747472696275746530333B76617220643D692E61637469';
wwv_flow_api.g_varchar2_table(27) := '6F6E2E61747472696275746530353B76617220633D692E616374696F6E2E61747472696275746530373B76617220623B76617220663B696628672E5F76616C7565732E6465627567297B617065782E646562756728274D6F64616C2050616765202D2053';
wwv_flow_api.g_varchar2_table(28) := '7461727420226F70656E5061676546726F6D41706578546869732227297D696628653D3D3D2253544154494322297B672E5F76616C7565732E75726C3D687D656C73657B696628653D3D3D22545249475F454C454D454E545F4154545222297B672E5F76';
wwv_flow_api.g_varchar2_table(29) := '616C7565732E75726C3D6128692E74726967676572696E67456C656D656E74292E617474722864297D7D696628633D3D3D224155544F22297B623D66616C73653B663D66616C73657D656C73657B696628633D3D3D225354415449435F505822297B623D';
wwv_flow_api.g_varchar2_table(30) := '692E616374696F6E2E61747472696275746530382B227078223B663D692E616374696F6E2E61747472696275746530392B227078227D656C73657B696628633D3D3D225354415449435F2522297B623D692E616374696F6E2E6174747269627574653038';
wwv_flow_api.g_varchar2_table(31) := '2B2225223B663D692E616374696F6E2E61747472696275746530392B2225227D7D7D672E6F70656E5061676528692E616374696F6E2E61747472696275746530312C692E616374696F6E2E61747472696275746530362C692E616374696F6E2E61747472';
wwv_flow_api.g_varchar2_table(32) := '696275746531302C632C622C66293B696628672E5F76616C7565732E6465627567297B617065782E646562756728274D6F64616C2050616765202D20456E6420226F70656E5061676546726F6D41706578546869732227297D7D2C5F68616E646C654966';
wwv_flow_api.g_varchar2_table(33) := '72616D654C6F61643A66756E6374696F6E28297B76617220653D746869733B652E5F656C656D656E74732E24696672616D653D61282223636F6C6F72626F7820696672616D6522293B76617220623D652E5F656C656D656E74732E24696672616D652E63';
wwv_flow_api.g_varchar2_table(34) := '6F6E74656E747328292E66696E6428652E5F76616C7565732E636C6F7365456C656D656E7453656C6563746F72293B76617220643D652E5F656C656D656E74732E24696672616D652E6765742830292E636F6E74656E7457696E646F773B76617220633D';
wwv_flow_api.g_varchar2_table(35) := '642E617065782E6A51756572793B696628652E5F76616C7565732E6465627567297B617065782E646562756728274D6F64616C2050616765202D20537461727420225F68616E646C65496672616D654C6F61642227297D6328652E5F656C656D656E7473';
wwv_flow_api.g_varchar2_table(36) := '2E24696672616D652E636F6E74656E747328292E676574283029292E62696E642822617065786265666F7265706167657375626D6974222C66756E6374696F6E28297B6128222363626F784C6F61646564436F6E74656E7422292E6869646528293B6128';
wwv_flow_api.g_varchar2_table(37) := '222363626F784C6F6164696E674F7665726C617922292E73686F7728293B6128222363626F784C6F6164696E674772617068696322292E73686F7728297D293B652E5F656C656D656E74732E24696672616D652E636F6E74656E747328292E66696E6428';
wwv_flow_api.g_varchar2_table(38) := '2223617065782D6465762D746F6F6C6261722C2368746D6C6462446576546F6F6C62617222292E72656D6F766528293B696628622E6C656E677468297B652E5F76616C7565732E6175746F436C6F7365643D747275653B6A51756572792E636F6C6F7262';
wwv_flow_api.g_varchar2_table(39) := '6F782E636C6F736528293B6128646F63756D656E74292E7472696767657228226D6F64616C706167656175746F636C6F7365222C7B6D6F64616C5061676549643A652E5F76616C7565732E6D6F64616C5061676549642C22246D6F64616C50616765436C';
wwv_flow_api.g_varchar2_table(40) := '6F73654F626A656374223A622E636C6F6E652874727565297D297D656C73657B652E5F656C656D656E74732E24696672616D652E636F6E74656E747328292E66696E642822626F647922292E63737328226D617267696E222C2230707822293B61282223';
wwv_flow_api.g_varchar2_table(41) := '63626F784C6F6164696E674F7665726C617922292E6869646528293B6128222363626F784C6F6164696E674772617068696322292E6869646528293B6128222363626F784C6F61646564436F6E74656E7422292E73686F7728293B652E5F726573697A65';
wwv_flow_api.g_varchar2_table(42) := '4D6F64616C28293B652E5F656C656D656E74732E24696672616D652E72656D6F7665436C617373282275692D68656C7065722D68696464656E2D61636365737369626C6522293B652E5F656C656D656E74732E24696672616D652E6F6E6528226C6F6164';
wwv_flow_api.g_varchar2_table(43) := '222C66756E6374696F6E28297B652E5F68616E646C65496672616D654C6F616428297D297D696628652E5F76616C7565732E6465627567297B617065782E646562756728274D6F64616C2050616765202D20456E6420225F68616E646C65496672616D65';
wwv_flow_api.g_varchar2_table(44) := '4C6F61642227297D7D2C5F726573697A654D6F64616C3A66756E6374696F6E2862297B76617220633D746869733B696628632E5F76616C7565732E6465627567297B617065782E646562756728274D6F64616C2050616765202D20537461727420225F72';
wwv_flow_api.g_varchar2_table(45) := '6573697A654D6F64616C2227297D632E5F656C656D656E74732E2477696E646F772E756E62696E642822726573697A65222C632E5F636865636B526573697A6554696D6572293B69662862297B6A51756572792E636F6C6F72626F782E726573697A6528';
wwv_flow_api.g_varchar2_table(46) := '7B77696474683A622E77696474682C6865696768743A622E6865696768742C696E6E65724865696768743A622E696E6E65724865696768742C696E6E657257696474683A622E696E6E657257696474687D297D656C73657B696628632E5F76616C756573';
wwv_flow_api.g_varchar2_table(47) := '2E68656967687457696474684D6F64653D3D3D224155544F22297B6A51756572792E636F6C6F72626F782E726573697A65287B696E6E65724865696768743A632E5F656C656D656E74732E24696672616D652E636F6E74656E747328292E686569676874';
wwv_flow_api.g_varchar2_table(48) := '28292C696E6E657257696474683A632E5F656C656D656E74732E24696672616D652E636F6E74656E747328292E776964746828297D297D656C73657B6A51756572792E636F6C6F72626F782E726573697A65287B696E6E65724865696768743A632E5F76';
wwv_flow_api.g_varchar2_table(49) := '616C7565732E6865696768742C696E6E657257696474683A632E5F76616C7565732E77696474687D297D7D632E5F656C656D656E74732E2477696E646F772E62696E642822726573697A65222C7B7569773A637D2C632E5F636865636B526573697A6554';
wwv_flow_api.g_varchar2_table(50) := '696D6572293B696628632E5F76616C7565732E6465627567297B617065782E646562756728274D6F64616C2050616765202D20456E6420225F726573697A654D6F64616C2227297D7D2C5F636865636B526573697A6554696D65723A66756E6374696F6E';
wwv_flow_api.g_varchar2_table(51) := '2863297B76617220623D632E646174612E7569773B696628622E5F76616C7565732E6465627567297B617065782E646562756728274D6F64616C2050616765202D20537461727420225F636865636B526573697A6554696D65722227297D696628622E5F';
wwv_flow_api.g_varchar2_table(52) := '76616C7565732E74696D6572297B636C65617254696D656F757428622E5F76616C7565732E74696D6572297D622E5F76616C7565732E74696D65723D73657454696D656F75742866756E6374696F6E28297B622E5F68616E646C6557696E646F77526573';
wwv_flow_api.g_varchar2_table(53) := '697A6528297D2C3530293B696628622E5F76616C7565732E6465627567297B617065782E646562756728274D6F64616C2050616765202D20456E6420225F636865636B526573697A6554696D65722227297D7D2C5F68616E646C6557696E646F77526573';
wwv_flow_api.g_varchar2_table(54) := '697A653A66756E6374696F6E28297B76617220623D746869733B696628622E5F76616C7565732E6465627567297B617065782E646562756728274D6F64616C2050616765202D20537461727420225F68616E646C6557696E646F77526573697A65222729';
wwv_flow_api.g_varchar2_table(55) := '7D696628622E5F76616C7565732E68656967687457696474684D6F6465213D3D224155544F22297B622E5F726573697A654D6F64616C28297D696628622E5F76616C7565732E6465627567297B617065782E646562756728274D6F64616C205061676520';
wwv_flow_api.g_varchar2_table(56) := '2D20456E6420225F68616E646C6557696E646F77526573697A652227297D7D2C636C6F73653A66756E6374696F6E2863297B76617220623D746869733B696628622E5F76616C7565732E6465627567297B617065782E646562756728274D6F64616C2050';
wwv_flow_api.g_varchar2_table(57) := '616765202D2053746172742022636C6F73652227297D622E5F76616C7565732E6D6F64616C50616765436C6F736556616C75653D633B6A51756572792E636F6C6F72626F782E636C6F736528293B696628622E5F76616C7565732E6465627567297B6170';
wwv_flow_api.g_varchar2_table(58) := '65782E646562756728274D6F64616C2050616765202D20456E642022636C6F73652227297D7D2C726573697A653A66756E6374696F6E2862297B7569773D746869733B6966287569772E5F76616C7565732E6465627567297B617065782E646562756728';
wwv_flow_api.g_varchar2_table(59) := '274D6F64616C2050616765202D2053746172742022726573697A652227297D7569772E5F726573697A654D6F64616C2862293B6966287569772E5F76616C7565732E6465627567297B617065782E646562756728274D6F64616C2050616765202D20456E';
wwv_flow_api.g_varchar2_table(60) := '642022726573697A652227297D7D7D297D2928617065782E6A5175657279293B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(33721645152060702584)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_file_name=>'apex_modal_page.min.js'
,p_mime_type=>'application/javascript'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2F20436F6C6F72426F782076312E332E3139202D206A5175657279206C69676874626F7820706C7567696E0D0A2F2F202863292032303131204A61636B204D6F6F7265202D206A61636B6C6D6F6F72652E636F6D0D0A2F2F204C6963656E73653A2068';
wwv_flow_api.g_varchar2_table(2) := '7474703A2F2F7777772E6F70656E736F757263652E6F72672F6C6963656E7365732F6D69742D6C6963656E73652E7068700D0A2866756E6374696F6E28612C622C63297B66756E6374696F6E205A28632C642C65297B76617220673D622E637265617465';
wwv_flow_api.g_varchar2_table(3) := '456C656D656E742863293B72657475726E2064262628672E69643D662B64292C65262628672E7374796C652E637373546578743D65292C612867297D66756E6374696F6E20242861297B76617220623D792E6C656E6774682C633D28512B612925623B72';
wwv_flow_api.g_varchar2_table(4) := '657475726E20633C303F622B633A637D66756E6374696F6E205F28612C62297B72657475726E204D6174682E726F756E6428282F252F2E746573742861293F28623D3D3D2278223F7A2E776964746828293A7A2E6865696768742829292F3130303A3129';
wwv_flow_api.g_varchar2_table(5) := '2A7061727365496E7428612C313029297D66756E6374696F6E2062612861297B72657475726E204B2E70686F746F7C7C2F5C2E286769667C706E677C6A70653F677C626D707C69636F292828237C5C3F292E2A293F242F692E746573742861297D66756E';
wwv_flow_api.g_varchar2_table(6) := '6374696F6E20626228297B76617220623B4B3D612E657874656E64287B7D2C612E6461746128502C6529293B666F72286220696E204B29612E697346756E6374696F6E284B5B625D292626622E736C69636528302C3229213D3D226F6E222626284B5B62';
wwv_flow_api.g_varchar2_table(7) := '5D3D4B5B625D2E63616C6C285029293B4B2E72656C3D4B2E72656C7C7C502E72656C7C7C226E6F666F6C6C6F77222C4B2E687265663D4B2E687265667C7C612850292E6174747228226872656622292C4B2E7469746C653D4B2E7469746C657C7C502E74';
wwv_flow_api.g_varchar2_table(8) := '69746C652C747970656F66204B2E687265663D3D22737472696E67222626284B2E687265663D612E7472696D284B2E6872656629297D66756E6374696F6E20626328622C63297B612E6576656E742E747269676765722862292C632626632E63616C6C28';
wwv_flow_api.g_varchar2_table(9) := '50297D66756E6374696F6E20626428297B76617220612C623D662B22536C69646573686F775F222C633D22636C69636B2E222B662C642C652C673B4B2E736C69646573686F772626795B315D3F28643D66756E6374696F6E28297B462E74657874284B2E';
wwv_flow_api.g_varchar2_table(10) := '736C69646573686F7753746F70292E756E62696E642863292E62696E64286A2C66756E6374696F6E28297B6966284B2E6C6F6F707C7C795B512B315D29613D73657454696D656F757428572E6E6578742C4B2E736C69646573686F775370656564297D29';
wwv_flow_api.g_varchar2_table(11) := '2E62696E6428692C66756E6374696F6E28297B636C65617254696D656F75742861297D292E6F6E6528632B2220222B6B2C65292C722E72656D6F7665436C61737328622B226F666622292E616464436C61737328622B226F6E22292C613D73657454696D';
wwv_flow_api.g_varchar2_table(12) := '656F757428572E6E6578742C4B2E736C69646573686F775370656564297D2C653D66756E6374696F6E28297B636C65617254696D656F75742861292C462E74657874284B2E736C69646573686F775374617274292E756E62696E64285B6A2C692C6B2C63';
wwv_flow_api.g_varchar2_table(13) := '5D2E6A6F696E2822202229292E6F6E6528632C66756E6374696F6E28297B572E6E65787428292C6428297D292C722E72656D6F7665436C61737328622B226F6E22292E616464436C61737328622B226F666622297D2C4B2E736C69646573686F77417574';
wwv_flow_api.g_varchar2_table(14) := '6F3F6428293A652829293A722E72656D6F7665436C61737328622B226F666620222B622B226F6E22297D66756E6374696F6E2062652862297B557C7C28503D622C626228292C793D612850292C513D302C4B2E72656C213D3D226E6F666F6C6C6F772226';
wwv_flow_api.g_varchar2_table(15) := '2628793D6128222E222B67292E66696C7465722866756E6374696F6E28297B76617220623D612E6461746128746869732C65292E72656C7C7C746869732E72656C3B72657475726E20623D3D3D4B2E72656C7D292C513D792E696E6465782850292C513D';
wwv_flow_api.g_varchar2_table(16) := '3D3D2D31262628793D792E6164642850292C513D792E6C656E6774682D3129292C537C7C28533D543D21302C722E73686F7728292C4B2E72657475726E466F6375732626612850292E626C757228292E6F6E65286C2C66756E6374696F6E28297B612874';
wwv_flow_api.g_varchar2_table(17) := '686973292E666F63757328297D292C712E637373287B6F7061636974793A2B4B2E6F7061636974792C637572736F723A4B2E6F7665726C6179436C6F73653F22706F696E746572223A226175746F227D292E73686F7728292C4B2E773D5F284B2E696E69';
wwv_flow_api.g_varchar2_table(18) := '7469616C57696474682C227822292C4B2E683D5F284B2E696E697469616C4865696768742C227922292C572E706F736974696F6E28292C6F26267A2E62696E642822726573697A652E222B702B22207363726F6C6C2E222B702C66756E6374696F6E2829';
wwv_flow_api.g_varchar2_table(19) := '7B712E637373287B77696474683A7A2E776964746828292C6865696768743A7A2E68656967687428292C746F703A7A2E7363726F6C6C546F7028292C6C6566743A7A2E7363726F6C6C4C65667428297D297D292E747269676765722822726573697A652E';
wwv_flow_api.g_varchar2_table(20) := '222B70292C626328682C4B2E6F6E4F70656E292C4A2E6164642844292E6869646528292C492E68746D6C284B2E636C6F7365292E73686F772829292C572E6C6F616428213029297D66756E6374696F6E20626628297B21722626622E626F647926262859';
wwv_flow_api.g_varchar2_table(21) := '3D21312C7A3D612863292C723D5A2858292E61747472287B69643A652C22636C617373223A6E3F662B286F3F22494536223A22494522293A22227D292E6869646528292C713D5A28582C224F7665726C6179222C6F3F22706F736974696F6E3A6162736F';
wwv_flow_api.g_varchar2_table(22) := '6C757465223A2222292E6869646528292C733D5A28582C225772617070657222292C743D5A28582C22436F6E74656E7422292E617070656E6428413D5A28582C224C6F61646564436F6E74656E74222C2277696474683A303B206865696768743A303B20';
wwv_flow_api.g_varchar2_table(23) := '6F766572666C6F773A68696464656E22292C433D5A28582C224C6F6164696E674F7665726C617922292E616464285A28582C224C6F6164696E67477261706869632229292C443D5A28582C225469746C6522292C453D5A28582C2243757272656E742229';
wwv_flow_api.g_varchar2_table(24) := '2C473D5A28582C224E65787422292C483D5A28582C2250726576696F757322292C463D5A28582C22536C69646573686F7722292E62696E6428682C6264292C493D5A28582C22436C6F73652229292C732E617070656E64285A2858292E617070656E6428';
wwv_flow_api.g_varchar2_table(25) := '5A28582C22546F704C65667422292C753D5A28582C22546F7043656E74657222292C5A28582C22546F7052696768742229292C5A28582C21312C22636C6561723A6C65667422292E617070656E6428763D5A28582C224D6964646C654C65667422292C74';
wwv_flow_api.g_varchar2_table(26) := '2C773D5A28582C224D6964646C6552696768742229292C5A28582C21312C22636C6561723A6C65667422292E617070656E64285A28582C22426F74746F6D4C65667422292C783D5A28582C22426F74746F6D43656E74657222292C5A28582C22426F7474';
wwv_flow_api.g_varchar2_table(27) := '6F6D5269676874222929292E66696E6428226469762064697622292E637373287B22666C6F6174223A226C656674227D292C423D5A28582C21312C22706F736974696F6E3A6162736F6C7574653B2077696474683A3939393970783B207669736962696C';
wwv_flow_api.g_varchar2_table(28) := '6974793A68696464656E3B20646973706C61793A6E6F6E6522292C4A3D472E6164642848292E6164642845292E6164642846292C6128622E626F6479292E617070656E6428712C722E617070656E6428732C422929297D66756E6374696F6E2062672829';
wwv_flow_api.g_varchar2_table(29) := '7B72657475726E20723F28597C7C28593D21302C4C3D752E68656967687428292B782E68656967687428292B742E6F75746572486569676874282130292D742E68656967687428292C4D3D762E776964746828292B772E776964746828292B742E6F7574';
wwv_flow_api.g_varchar2_table(30) := '65725769647468282130292D742E776964746828292C4E3D412E6F75746572486569676874282130292C4F3D412E6F757465725769647468282130292C722E637373287B2270616464696E672D626F74746F6D223A4C2C2270616464696E672D72696768';
wwv_flow_api.g_varchar2_table(31) := '74223A4D7D292C472E636C69636B2866756E6374696F6E28297B572E6E65787428297D292C482E636C69636B2866756E6374696F6E28297B572E7072657628297D292C492E636C69636B2866756E6374696F6E28297B572E636C6F736528297D292C712E';
wwv_flow_api.g_varchar2_table(32) := '636C69636B2866756E6374696F6E28297B4B2E6F7665726C6179436C6F73652626572E636C6F736528297D292C612862292E62696E6428226B6579646F776E2E222B662C66756E6374696F6E2861297B76617220623D612E6B6579436F64653B5326264B';
wwv_flow_api.g_varchar2_table(33) := '2E6573634B65792626623D3D3D3237262628612E70726576656E7444656661756C7428292C572E636C6F73652829292C5326264B2E6172726F774B65792626795B315D262628623D3D3D33373F28612E70726576656E7444656661756C7428292C482E63';
wwv_flow_api.g_varchar2_table(34) := '6C69636B2829293A623D3D3D3339262628612E70726576656E7444656661756C7428292C472E636C69636B282929297D292C6128222E222B672C62292E6C6976652822636C69636B222C66756E6374696F6E2861297B612E77686963683E317C7C612E73';
wwv_flow_api.g_varchar2_table(35) := '686966744B65797C7C612E616C744B65797C7C612E6D6574614B65797C7C28612E70726576656E7444656661756C7428292C6265287468697329297D29292C2130293A21317D76617220643D7B7472616E736974696F6E3A22656C6173746963222C7370';
wwv_flow_api.g_varchar2_table(36) := '6565643A3330302C77696474683A21312C696E697469616C57696474683A22363030222C696E6E657257696474683A21312C6D617857696474683A21312C6865696768743A21312C696E697469616C4865696768743A22343530222C696E6E6572486569';
wwv_flow_api.g_varchar2_table(37) := '6768743A21312C6D61784865696768743A21312C7363616C6550686F746F733A21302C7363726F6C6C696E673A21302C696E6C696E653A21312C68746D6C3A21312C696672616D653A21312C66617374496672616D653A21302C70686F746F3A21312C68';
wwv_flow_api.g_varchar2_table(38) := '7265663A21312C7469746C653A21312C72656C3A21312C6F7061636974793A2E392C7072656C6F6164696E673A21302C63757272656E743A22696D616765207B63757272656E747D206F66207B746F74616C7D222C70726576696F75733A227072657669';
wwv_flow_api.g_varchar2_table(39) := '6F7573222C6E6578743A226E657874222C636C6F73653A22636C6F7365222C6F70656E3A21312C72657475726E466F6375733A21302C7265706F736974696F6E3A21302C6C6F6F703A21302C736C69646573686F773A21312C736C69646573686F774175';
wwv_flow_api.g_varchar2_table(40) := '746F3A21302C736C69646573686F7753706565643A323530302C736C69646573686F7753746172743A22737461727420736C69646573686F77222C736C69646573686F7753746F703A2273746F7020736C69646573686F77222C6F6E4F70656E3A21312C';
wwv_flow_api.g_varchar2_table(41) := '6F6E4C6F61643A21312C6F6E436F6D706C6574653A21312C6F6E436C65616E75703A21312C6F6E436C6F7365643A21312C6F7665726C6179436C6F73653A21302C6573634B65793A21302C6172726F774B65793A21302C746F703A21312C626F74746F6D';
wwv_flow_api.g_varchar2_table(42) := '3A21312C6C6566743A21312C72696768743A21312C66697865643A21312C646174613A756E646566696E65647D2C653D22636F6C6F72626F78222C663D2263626F78222C673D662B22456C656D656E74222C683D662B225F6F70656E222C693D662B225F';
wwv_flow_api.g_varchar2_table(43) := '6C6F6164222C6A3D662B225F636F6D706C657465222C6B3D662B225F636C65616E7570222C6C3D662B225F636C6F736564222C6D3D662B225F7075726765222C6E3D21612E737570706F72742E6F706163697479262621612E737570706F72742E737479';
wwv_flow_api.g_varchar2_table(44) := '6C652C6F3D6E262621632E584D4C48747470526571756573742C703D662B225F494536222C712C722C732C742C752C762C772C782C792C7A2C412C422C432C442C452C462C472C482C492C4A2C4B2C4C2C4D2C4E2C4F2C502C512C522C532C542C552C56';
wwv_flow_api.g_varchar2_table(45) := '2C572C583D22646976222C593B696628612E636F6C6F72626F782972657475726E3B61286266292C573D612E666E5B655D3D615B655D3D66756E6374696F6E28622C63297B76617220663D746869733B623D627C7C7B7D2C626628293B69662862672829';
wwv_flow_api.g_varchar2_table(46) := '297B69662821665B305D297B696628662E73656C6563746F722972657475726E20663B663D6128223C612F3E22292C622E6F70656E3D21307D63262628622E6F6E436F6D706C6574653D63292C662E656163682866756E6374696F6E28297B612E646174';
wwv_flow_api.g_varchar2_table(47) := '6128746869732C652C612E657874656E64287B7D2C612E6461746128746869732C65297C7C642C6229297D292E616464436C6173732867292C28612E697346756E6374696F6E28622E6F70656E292626622E6F70656E2E63616C6C2866297C7C622E6F70';
wwv_flow_api.g_varchar2_table(48) := '656E292626626528665B305D297D72657475726E20667D2C572E706F736974696F6E3D66756E6374696F6E28612C62297B66756E6374696F6E20692861297B755B305D2E7374796C652E77696474683D785B305D2E7374796C652E77696474683D745B30';
wwv_flow_api.g_varchar2_table(49) := '5D2E7374796C652E77696474683D612E7374796C652E77696474682C745B305D2E7374796C652E6865696768743D765B305D2E7374796C652E6865696768743D775B305D2E7374796C652E6865696768743D612E7374796C652E6865696768747D766172';
wwv_flow_api.g_varchar2_table(50) := '20633D302C643D302C653D722E6F666673657428292C673D7A2E7363726F6C6C546F7028292C683D7A2E7363726F6C6C4C65667428293B7A2E756E62696E642822726573697A652E222B66292C722E637373287B746F703A2D3965342C6C6566743A2D39';
wwv_flow_api.g_varchar2_table(51) := '65347D292C4B2E66697865642626216F3F28652E746F702D3D672C652E6C6566742D3D682C722E637373287B706F736974696F6E3A226669786564227D29293A28633D672C643D682C722E637373287B706F736974696F6E3A226162736F6C757465227D';
wwv_flow_api.g_varchar2_table(52) := '29292C4B2E7269676874213D3D21313F642B3D4D6174682E6D6178287A2E776964746828292D4B2E772D4F2D4D2D5F284B2E72696768742C227822292C30293A4B2E6C656674213D3D21313F642B3D5F284B2E6C6566742C227822293A642B3D4D617468';
wwv_flow_api.g_varchar2_table(53) := '2E726F756E64284D6174682E6D6178287A2E776964746828292D4B2E772D4F2D4D2C30292F32292C4B2E626F74746F6D213D3D21313F632B3D4D6174682E6D6178287A2E68656967687428292D4B2E682D4E2D4C2D5F284B2E626F74746F6D2C22792229';
wwv_flow_api.g_varchar2_table(54) := '2C30293A4B2E746F70213D3D21313F632B3D5F284B2E746F702C227922293A632B3D4D6174682E726F756E64284D6174682E6D6178287A2E68656967687428292D4B2E682D4E2D4C2C30292F32292C722E637373287B746F703A652E746F702C6C656674';
wwv_flow_api.g_varchar2_table(55) := '3A652E6C6566747D292C613D722E776964746828293D3D3D4B2E772B4F2626722E68656967687428293D3D3D4B2E682B4E3F303A617C7C302C735B305D2E7374796C652E77696474683D735B305D2E7374796C652E6865696768743D2239393939707822';
wwv_flow_api.g_varchar2_table(56) := '2C722E6465717565756528292E616E696D617465287B77696474683A4B2E772B4F2C6865696768743A4B2E682B4E2C746F703A632C6C6566743A647D2C7B6475726174696F6E3A612C636F6D706C6574653A66756E6374696F6E28297B69287468697329';
wwv_flow_api.g_varchar2_table(57) := '2C543D21312C735B305D2E7374796C652E77696474683D4B2E772B4F2B4D2B227078222C735B305D2E7374796C652E6865696768743D4B2E682B4E2B4C2B227078222C4B2E7265706F736974696F6E262673657454696D656F75742866756E6374696F6E';
wwv_flow_api.g_varchar2_table(58) := '28297B7A2E62696E642822726573697A652E222B662C572E706F736974696F6E297D2C31292C6226266228297D2C737465703A66756E6374696F6E28297B692874686973297D7D297D2C572E726573697A653D66756E6374696F6E2861297B5326262861';
wwv_flow_api.g_varchar2_table(59) := '3D617C7C7B7D2C612E77696474682626284B2E773D5F28612E77696474682C227822292D4F2D4D292C612E696E6E657257696474682626284B2E773D5F28612E696E6E657257696474682C22782229292C412E637373287B77696474683A4B2E777D292C';
wwv_flow_api.g_varchar2_table(60) := '612E6865696768742626284B2E683D5F28612E6865696768742C227922292D4E2D4C292C612E696E6E65724865696768742626284B2E683D5F28612E696E6E65724865696768742C22792229292C21612E696E6E6572486569676874262621612E686569';
wwv_flow_api.g_varchar2_table(61) := '676874262628412E637373287B6865696768743A226175746F227D292C4B2E683D412E6865696768742829292C412E637373287B6865696768743A4B2E687D292C572E706F736974696F6E284B2E7472616E736974696F6E3D3D3D226E6F6E65223F303A';
wwv_flow_api.g_varchar2_table(62) := '4B2E737065656429297D2C572E707265703D66756E6374696F6E2862297B66756E6374696F6E206728297B72657475726E204B2E773D4B2E777C7C412E776964746828292C4B2E773D4B2E6D7726264B2E6D773C4B2E773F4B2E6D773A4B2E772C4B2E77';
wwv_flow_api.g_varchar2_table(63) := '7D66756E6374696F6E206828297B72657475726E204B2E683D4B2E687C7C412E68656967687428292C4B2E683D4B2E6D6826264B2E6D683C4B2E683F4B2E6D683A4B2E682C4B2E687D69662821532972657475726E3B76617220632C643D4B2E7472616E';
wwv_flow_api.g_varchar2_table(64) := '736974696F6E3D3D3D226E6F6E65223F303A4B2E73706565643B412E72656D6F766528292C413D5A28582C224C6F61646564436F6E74656E7422292E617070656E642862292C412E6869646528292E617070656E64546F28422E73686F772829292E6373';
wwv_flow_api.g_varchar2_table(65) := '73287B77696474683A6728292C6F766572666C6F773A4B2E7363726F6C6C696E673F226175746F223A2268696464656E227D292E637373287B6865696768743A6828297D292E70726570656E64546F2874292C422E6869646528292C612852292E637373';
wwv_flow_api.g_varchar2_table(66) := '287B22666C6F6174223A226E6F6E65227D292C6F262661282273656C65637422292E6E6F7428722E66696E64282273656C6563742229292E66696C7465722866756E6374696F6E28297B72657475726E20746869732E7374796C652E7669736962696C69';
wwv_flow_api.g_varchar2_table(67) := '7479213D3D2268696464656E227D292E637373287B7669736962696C6974793A2268696464656E227D292E6F6E65286B2C66756E6374696F6E28297B746869732E7374796C652E7669736962696C6974793D22696E6865726974227D292C633D66756E63';
wwv_flow_api.g_varchar2_table(68) := '74696F6E28297B66756E6374696F6E207128297B6E2626725B305D2E7374796C652E72656D6F7665417474726962757465282266696C74657222297D76617220622C632C673D792E6C656E6774682C682C693D226672616D65426F72646572222C6B3D22';
wwv_flow_api.g_varchar2_table(69) := '616C6C6F775472616E73706172656E6379222C6C2C6F2C703B69662821532972657475726E3B6C3D66756E6374696F6E28297B636C65617254696D656F75742856292C432E6869646528292C6263286A2C4B2E6F6E436F6D706C657465297D2C6E262652';
wwv_flow_api.g_varchar2_table(70) := '2626412E66616465496E28313030292C442E68746D6C284B2E7469746C65292E6164642841292E73686F7728293B696628673E31297B747970656F66204B2E63757272656E743D3D22737472696E67222626452E68746D6C284B2E63757272656E742E72';
wwv_flow_api.g_varchar2_table(71) := '65706C61636528227B63757272656E747D222C512B31292E7265706C61636528227B746F74616C7D222C6729292E73686F7728292C475B4B2E6C6F6F707C7C513C672D313F2273686F77223A2268696465225D28292E68746D6C284B2E6E657874292C48';
wwv_flow_api.g_varchar2_table(72) := '5B4B2E6C6F6F707C7C513F2273686F77223A2268696465225D28292E68746D6C284B2E70726576696F7573292C4B2E736C69646573686F772626462E73686F7728293B6966284B2E7072656C6F6164696E67297B623D5B24282D31292C242831295D3B77';
wwv_flow_api.g_varchar2_table(73) := '68696C6528633D795B622E706F7028295D296F3D612E6461746128632C65292E687265667C7C632E687265662C612E697346756E6374696F6E286F292626286F3D6F2E63616C6C286329292C6261286F29262628703D6E657720496D6167652C702E7372';
wwv_flow_api.g_varchar2_table(74) := '633D6F297D7D656C7365204A2E6869646528293B4B2E696672616D653F28683D5A2822696672616D6522295B305D2C6920696E2068262628685B695D3D30292C6B20696E2068262628685B6B5D3D227472756522292C682E6E616D653D662B202B286E65';
wwv_flow_api.g_varchar2_table(75) := '772044617465292C4B2E66617374496672616D653F6C28293A612868292E6F6E6528226C6F6164222C6C292C682E7372633D4B2E687265662C4B2E7363726F6C6C696E677C7C28682E7363726F6C6C696E673D226E6F22292C612868292E616464436C61';
wwv_flow_api.g_varchar2_table(76) := '737328662B22496672616D6522292E617070656E64546F2841292E6F6E65286D2C66756E6374696F6E28297B682E7372633D222F2F61626F75743A626C616E6B227D29293A6C28292C4B2E7472616E736974696F6E3D3D3D2266616465223F722E666164';
wwv_flow_api.g_varchar2_table(77) := '65546F28642C312C71293A7128297D2C4B2E7472616E736974696F6E3D3D3D2266616465223F722E66616465546F28642C302C66756E6374696F6E28297B572E706F736974696F6E28302C63297D293A572E706F736974696F6E28642C63297D2C572E6C';
wwv_flow_api.g_varchar2_table(78) := '6F61643D66756E6374696F6E2862297B76617220632C642C653D572E707265703B543D21302C523D21312C503D795B515D2C627C7C626228292C6263286D292C626328692C4B2E6F6E4C6F6164292C4B2E683D4B2E6865696768743F5F284B2E68656967';
wwv_flow_api.g_varchar2_table(79) := '68742C227922292D4E2D4C3A4B2E696E6E657248656967687426265F284B2E696E6E65724865696768742C227922292C4B2E773D4B2E77696474683F5F284B2E77696474682C227822292D4F2D4D3A4B2E696E6E6572576964746826265F284B2E696E6E';
wwv_flow_api.g_varchar2_table(80) := '657257696474682C227822292C4B2E6D773D4B2E772C4B2E6D683D4B2E682C4B2E6D617857696474682626284B2E6D773D5F284B2E6D617857696474682C227822292D4F2D4D2C4B2E6D773D4B2E7726264B2E773C4B2E6D773F4B2E773A4B2E6D77292C';
wwv_flow_api.g_varchar2_table(81) := '4B2E6D61784865696768742626284B2E6D683D5F284B2E6D61784865696768742C227922292D4E2D4C2C4B2E6D683D4B2E6826264B2E683C4B2E6D683F4B2E683A4B2E6D68292C633D4B2E687265662C563D73657454696D656F75742866756E6374696F';
wwv_flow_api.g_varchar2_table(82) := '6E28297B432E73686F7728297D2C313030292C4B2E696E6C696E653F285A2858292E6869646528292E696E736572744265666F726528612863295B305D292E6F6E65286D2C66756E6374696F6E28297B612874686973292E7265706C6163655769746828';
wwv_flow_api.g_varchar2_table(83) := '412E6368696C6472656E2829297D292C65286128632929293A4B2E696672616D653F6528222022293A4B2E68746D6C3F65284B2E68746D6C293A62612863293F286128523D6E657720496D616765292E616464436C61737328662B2250686F746F22292E';
wwv_flow_api.g_varchar2_table(84) := '6572726F722866756E6374696F6E28297B4B2E7469746C653D21312C65285A28582C224572726F7222292E7465787428225468697320696D61676520636F756C64206E6F74206265206C6F616465642229297D292E6C6F61642866756E6374696F6E2829';
wwv_flow_api.g_varchar2_table(85) := '7B76617220613B522E6F6E6C6F61643D6E756C6C2C4B2E7363616C6550686F746F73262628643D66756E6374696F6E28297B522E6865696768742D3D522E6865696768742A612C522E77696474682D3D522E77696474682A617D2C4B2E6D772626522E77';
wwv_flow_api.g_varchar2_table(86) := '696474683E4B2E6D77262628613D28522E77696474682D4B2E6D77292F522E77696474682C642829292C4B2E6D682626522E6865696768743E4B2E6D68262628613D28522E6865696768742D4B2E6D68292F522E6865696768742C64282929292C4B2E68';
wwv_flow_api.g_varchar2_table(87) := '262628522E7374796C652E6D617267696E546F703D4D6174682E6D6178284B2E682D522E6865696768742C30292F322B22707822292C795B315D2626284B2E6C6F6F707C7C795B512B315D29262628522E7374796C652E637572736F723D22706F696E74';
wwv_flow_api.g_varchar2_table(88) := '6572222C522E6F6E636C69636B3D66756E6374696F6E28297B572E6E65787428297D292C6E262628522E7374796C652E6D73496E746572706F6C6174696F6E4D6F64653D226269637562696322292C73657454696D656F75742866756E6374696F6E2829';
wwv_flow_api.g_varchar2_table(89) := '7B652852297D2C31297D292C73657454696D656F75742866756E6374696F6E28297B522E7372633D637D2C3129293A632626422E6C6F616428632C4B2E646174612C66756E6374696F6E28622C632C64297B6528633D3D3D226572726F72223F5A28582C';
wwv_flow_api.g_varchar2_table(90) := '224572726F7222292E7465787428225265717565737420756E7375636365737366756C3A20222B642E73746174757354657874293A612874686973292E636F6E74656E74732829297D297D2C572E6E6578743D66756E6374696F6E28297B21542626795B';
wwv_flow_api.g_varchar2_table(91) := '315D2626284B2E6C6F6F707C7C795B512B315D29262628513D242831292C572E6C6F61642829297D2C572E707265763D66756E6374696F6E28297B21542626795B315D2626284B2E6C6F6F707C7C5129262628513D24282D31292C572E6C6F6164282929';
wwv_flow_api.g_varchar2_table(92) := '7D2C572E636C6F73653D66756E6374696F6E28297B5326262155262628553D21302C533D21312C6263286B2C4B2E6F6E436C65616E7570292C7A2E756E62696E6428222E222B662B22202E222B70292C712E66616465546F283230302C30292C722E7374';
wwv_flow_api.g_varchar2_table(93) := '6F7028292E66616465546F283330302C302C66756E6374696F6E28297B722E6164642871292E637373287B6F7061636974793A312C637572736F723A226175746F227D292E6869646528292C6263286D292C412E72656D6F766528292C73657454696D65';
wwv_flow_api.g_varchar2_table(94) := '6F75742866756E6374696F6E28297B553D21312C6263286C2C4B2E6F6E436C6F736564297D2C31297D29297D2C572E72656D6F76653D66756E6374696F6E28297B61285B5D292E6164642872292E6164642871292E72656D6F766528292C723D6E756C6C';
wwv_flow_api.g_varchar2_table(95) := '2C6128222E222B67292E72656D6F7665446174612865292E72656D6F7665436C6173732867292E64696528297D2C572E656C656D656E743D66756E6374696F6E28297B72657475726E20612850297D2C572E73657474696E67733D647D29286A51756572';
wwv_flow_api.g_varchar2_table(96) := '792C646F63756D656E742C74686973293B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(33721645848825704070)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_file_name=>'jquery.colorbox-min.js'
,p_mime_type=>'application/javascript'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000001000000320103000000A73523C900000006504C5445000000FFFFFFA5D99FDD0000000174524E5380AD5E5B460000001849444154785E95C1010D0000008230A31B9D066CFC330F0526820B01E3EC9A99';
wwv_flow_api.g_varchar2_table(2) := '0000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(33721646544512706086)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_file_name=>'t1border.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000001000000150103000000BD9C164700000006504C5445000000FFFFFFA5D99FDD0000000174524E5380AD5E5B460000001749444154785E7DC1210100000083B0477F7434866DD7007AAA03813389C49000';
wwv_flow_api.g_varchar2_table(2) := '00000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(33721647241492707439)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_file_name=>'t1borderBottomCenter.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000150000001504030000005B39B8A500000027504C5445000000000000000000656565B7B7B7000000000000CFCFCF000000000000000000000000FFFFFF94C88E050000000C74524E538000789FC75830D7';
wwv_flow_api.g_varchar2_table(2) := '386810181AE7B20E0000005349444154785E85CAB10D8020180561125DE05991D83088235830028D5B50390133D0B18503FC4311A289579878D5579C7B32B3EBCB19DEE019763B3CE5E1FF021CE1042FB08755E00AAFE1B51AAC13D6716F1D361416074A';
wwv_flow_api.g_varchar2_table(3) := 'BD57B20000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(33721647939551708372)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_file_name=>'t1borderBottomLeft.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000150000001504030000005B39B8A500000027504C5445000000000000000000656565B7B7B7000000000000CFCFCF000000000000000000000000FFFFFF94C88E050000000C74524E538000789FC75830D7';
wwv_flow_api.g_varchar2_table(2) := '386810181AE7B20E0000005549444154785E9DC6B10D80201005D0CB55DA791BD858D938822338026E60C2048EE0086C426179434142E05F2879D523558D54F47FCC0FFC27FCC43D0D5ACD2F7387F2824FE61FCE01DFA57D0EEDFC4AFD764B7E02967416';
wwv_flow_api.g_varchar2_table(3) := '07AA8DD7170000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(33721648637610709231)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_file_name=>'t1borderBottomRight.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000150000000101030000000B9E775800000006504C5445000000FFFFFFA5D99FDD0000000174524E5380AD5E5B460000001449444154785E0580B1090000004094FFFF350A6C010200FC69A300E400000000';
wwv_flow_api.g_varchar2_table(2) := '49454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(33721649368653710045)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_file_name=>'t1borderMiddleLeft.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000150000000101030000000B9E775800000006504C5445000000FFFFFFA5D99FDD0000000174524E5380AD5E5B460000001449444154785E05C001090000008020FF8F8E100302FE00FFBFDBF57F00000000';
wwv_flow_api.g_varchar2_table(2) := '49454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(33721650066065711272)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_file_name=>'t1borderMiddleRight.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000001000000150103000000BD9C164700000006504C5445000000FFFFFFA5D99FDD0000000174524E5380AD5E5B460000001749444154785E7DC1210100000083B0477F742C8A6DE50E18AA0381149316F900';
wwv_flow_api.g_varchar2_table(2) := '00000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(33721650763477712460)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_file_name=>'t1borderTopCenter.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000150000001504030000005B39B8A500000027504C5445000000000000000000000000000000000000000000000000656565CFCFCFB7B7B7000000FFFFFF3B8665F90000000C74524E538000783058106838';
wwv_flow_api.g_varchar2_table(2) := '9FD7C7183A2073AD0000005449444154785E9DC6A10D80401044D19104070681D9121014400D0834355007256C091441015B147709D99920F9E63F74A5D950AB3ECA5E6F488F46AFA0777A00EBC59378111BFED5F89DBE22DD067D8A5D1C1F3F3EC015AD';
wwv_flow_api.g_varchar2_table(3) := '86FEAAE00000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(33721651460889713674)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_file_name=>'t1borderTopLeft.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000150000001504030000005B39B8A500000027504C5445000000000000000000000000000000000000000000656565000000CFCFCFB7B7B7000000FFFFFF96FF543C0000000C74524E53800078583868109F';
wwv_flow_api.g_varchar2_table(2) := '30D7C718E289AB9F0000005249444154785E8DC6B10D406010C7D17F2EF46E03895263052318E1DBC0086CA0D31A452D379484E27E85C2AB9E1EDDEAEE8D5E36E65597BC7ADC4A5E135EE1866BC107BCD51FB1E371E0171E33BEE1E7C76FFB181607D27D';
wwv_flow_api.g_varchar2_table(3) := '175A0000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(33721652058517714724)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_file_name=>'t1borderTopRight.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000B0000000320806000000FCCF518D0000001974455874536F6674776172650041646F626520496D616765526561647971C9653C00000AEF4944415478DAEC5D5B6C14D719FEC137ECD8E035361787C66014';
wwv_flow_api.g_varchar2_table(2) := '1A2EA5126E5A356D95982E455C525AA4A86DA2A65221CB53D4F6A1AA5B449F1A8C1FA884821F705BA9A18E4915A04A534C2319DC848221C9D6A1D4405C2EB5C1C6368ED76137BE81E5CE77D8339C1DCFCCCECCEECCEE2CF349471EEFCECC37FF9E6FFEF3';
wwv_flow_api.g_varchar2_table(3) := '9FCBFC338388F690054C4D4DFD823CD8811912E2ED532595CA68F1397C7D21A95C8B96A0019D4C1934BACECAC5643F8C0A191B1B6365D6AC59ACB80810AE3F05A215E18B5E07BF96162342B60B6921E05BB76ED1F0F0308D8C8C4CFBAEA0A0808A8B8B69';
wwv_flow_api.g_varchar2_table(4) := 'E1C2850F330744F35CD4E3A613F87541CC6F46BDB3B3CD552A430854F6D5AB57E50A2E2C2AA2ECAC2CF9FB7B939314098765412C5DBA9489C02A47494989EC71F3F3F369747454F6C843434349E148821DCA10022209A4D8EB1A0D2D1A9422B63B844899';
wwv_flow_api.g_varchar2_table(5) := '80AF5FBFCE44830A2F292BA782FC5CCAC99A11D3A443587727A768647482866EF7320140844B962C31C581637C3E1F65E5E469724CDE1DA7502824EF6F94E3C6CD9B34D0DF6FDA8E79F3E7D3E7162D8A2760B7885753C41919037361A1128B0A0B256F34';
wwv_flow_api.g_varchar2_table(6) := '47753F16A34A7F8B1EC9A7BCEC290A47224C2C403C81891CC5BEB9EC1C7A1C924F6602CFCEC9B1C461D50E0D11733CE722F18A214543C6C6C0686E8D084B0934B9101880CA8747D56A86458EB2D252C31D355C4B4E56A9698E44ECB82FFC62BD9106B7A1';
wwv_flow_api.g_varchar2_table(7) := '327AED8E74EC663A6D1D624534B7A838A3952E0A0CC7E1781E736A71200CC0BE664719B03F8EC3F1F1386CB6C3EFE2811EC7AEDD5101A397CEBD90E87510479E3C7992156C739C3E73867D86BFA207E3C7F2F3A971141495E876C62E5DBA44E1CF4635BD';
wwv_flow_api.g_varchar2_table(8) := '248E8FC7A1B4432DC4D0F3C43A7654B92C74D01A6ACB2C01A3D985D7C108404C654A4DF0952B57A8ADAD8D8E3737336141B4FF686D659F95F862EB921F8FF3697120D68C77331D7AFD4F31378C087EBC1E87D20E11478F1E95AEFDACEE35E8D85149EE47';
wwv_flow_api.g_varchar2_table(9) := '65C60918BD6F0C31299B7534A91B366E64DBB76FDFA653EFB6D299D3A7D9FFCB972F6745D9CCA389571B6FD5E28060E111798168C0F5C6A143AA9ED20A07176353D321E6E12391700CA7924787C313703A8F42A801BDF167AAAB99D76D6F6F679F959595';
wwv_flow_api.g_varchar2_table(10) := 'D1BAF51B54C565161014BCB912E888EDDCB993B66FDF4E6BD7AE35CC218EF38AA1106E88898909F9666C6A6A92841CA1AEAE2EAAA8A8A0DADA5A231CBE0C10B02336CC4C85655A1557B5660DE5E6E6B20AEFE8E8A095AB5699EE20191520840B8ECECE4E';
wwv_flow_api.g_varchar2_table(11) := '1A1F1FA7FAFA7A6A96C217A3C0E484C8010F2F8A17801DDDDDDD3287870CF0C0F7EEDED5891BFF4267CF3E881BEBF7EFA7952B56989E1953E340D30E3185C3615531AD5FBF9E3646C3182B1C982286076F68B83F043A3838E8A92B534308BE9046443018';
wwv_flow_api.g_varchar2_table(12) := 'A423470EB3ED6DDBB651636323135A5D5D5D4CB3CB8F37CB81E6FBE9A79F91FFBF70E1DFCC33E6E5E54D0B1FAC7254555551201090455C5A5A1AC3A99CE830C26115D275F8A4E297AEC9542C2AD5C335E9FA5BA412F204AC007AEE68BA314120563CBCE3';
wwv_flow_api.g_varchar2_table(13) := 'DEBD7BD9F6B265CB98279C2379DDDF4A9F4164E8D16FDDBA35A6E2F934B4510E880B85430A4D595CBA6BD7AE699D44AB1C9CA7A6A686F64BAD07C2A1E79FFF81EE0DA0C591088E1D3BE6977E434BC35810FC810307025BB66C096EDAB4A9C513B0385C26';
wwv_flow_api.g_varchar2_table(14) := '89123D6E2CA211C3828E8B1769F3E667D97675F57D8FF5B5A79EA2FEBE3EA992C75911C117E1A885169C03D3B57AA147C5E20A76D368AD0EC3F1F138947670600A1A374673F371DDDF43CF8E54885704CE219D8BD25DC48E2FE641A8005859F5C5BD359F';
wwv_flow_api.g_varchar2_table(15) := 'BD123D6A2A38E039710358E540C70F378282038B792CD509C20678CF640A64C78E1D0D09841335762FE6717C1402A202B0F24B6B264C0BD81FC789E789C7A13611114F58463920BE44ECC0F17A1C16049CF4295C3BCEE9EA4E1CBC1506EFF9FADB499D05';
wwv_flow_api.g_varchar2_table(16) := '336AC2E2CB1DF58E5172186DA613E1B0C30E2BF16BB2EBCB8E73BA7E14822F534425A223835810D3AACA477CF8A33FF89E3FE96074ADAEC8212E79D4E21097385AE1B0CB0E0F6928605EF9E8C523D6E453A9A8540095CF8798442F6A36A61539204E14CE';
wwv_flow_api.g_varchar2_table(17) := '2122591C76D9E1210D05CC9B617460F8B36462258B4356893CAF96291C1ED250C01CA8545EB1763D312C72B8D90E0F692860119952E19E709DC14CEF27F0E009D8838787398410C74695E08FC427DA6B7722B1891376784823012B1382888947C48E10DF';
wwv_flow_api.g_varchar2_table(18) := '27194947301EAC9674A4B7B797956470D86187873413303C22046326210804505E5E6ED8531A4D9E8267F2440E33930C4ED8E121CD04CC2BDD6C421034CF380E8857F94E244F71C20E0F69266034B7BCD2AD2604C1F198B2B53BE948BCC42676DB611658';
wwv_flow_api.g_varchar2_table(19) := '8C9EECB50B38A7370A2120D18420109591C4264E244FB1DB0EB3C09314C9AE2F3BCEE95A016B250439FCF776DA77B09595B6F6FB373C961C36FCF99FF2E7FD839F4E3B3691A423E0ECEAFD44D34B268B43CF13EB7158145BA8B9B93969299D70AE747FB4';
wwv_flow_api.g_varchar2_table(20) := '282D129B3CB9FA31EAFCDF002B475BCE33B1BE73EA329DFFB8877DE69B5340F34B1FC49746129B14CED66F967B068669FFEBEFD1E56B7DAADF1BE1D04A6C829BAFB6E11D6A7DBF53F71AF438AC024F502443C43887F74891023CADA8728AB5A27C2E6DF8';
wwv_flow_api.g_varchar2_table(21) := 'C60A3A7EEA22EBA9D7379DA24F863F63DFCD2D7E84BEEB5F3DAD53A45CEFABE4C048800878767E4E00DBE07AB5F15DDABAEE8BF4CDAF3E619A436DAA185EFD0F87DB642EF10601DF9A958F19E24854C4814020E83DD469076156966AC56FAEFE025DBD31';
wwv_flow_api.g_varchar2_table(22) := 'C83C2EAFFCB1897BB4E37B5F9F16631A5963A0DCE7FD0B5DECDCD3BCE99D51FAF5ABCD74E2DC7F69F74F9F35CCA166076E12B420102A076E10D8D17D4BEAF40D7C4A1D6FFFCA941D898413527933D347211CEFC461E2400BDFDFB886FD8D8C8C5367D7A0';
wwv_flow_api.g_varchar2_table(23) := '1436CCA647E7DB33E00FE17E74B9873EFAB89786C363F4D6890BF4F26F0E5BB6E35F1DDDD4F8F60731E2857061C7D9F35D4CBC1E32C003EB2536D9D7F81E7DF89F1B14898A00A27AF1DB4FD213950B12E6B81319A39B7DC334327E8F86240F0F7189F8FC';
wwv_flow_api.g_varchar2_table(24) := '927954F392DF32C7E38BCB68F1A373A5EBEFA621E9E6B8131E95EDF090411E98792695841E07DF3AC7048B4A2F9FF7A0C3F6F22B47A63D346934E988889C9C6C2A9E9D4FE56545B4EAF10554989F2B7FB7F62BCBE8B5DA1762BCBD590E84393FDFE6A7A5';
wwv_flow_api.g_varchar2_table(25) := '1565CCDB72F17E69E5A29862D08E500668CB111BD222B1093A3A75BF3FC1B621AC3FEE7E81F6FCAE854E9EEB6462A895B6C5F8D44AD2919A97D6C5ECF7A39A83F461C74DFAA1E4E195DF59E500709D5F5E55413BF7FD8DFDFFDA9E17756F000D0E8C2556';
wwv_flow_api.g_varchar2_table(26) := 'B95CC08E4C8038EA81F9B8274FE8217BDFBF7E207BA85F06BEC53CE1EE9F6D923FEBE90B514FFF83A1A678894DD43894985D5840AFFC64B3AA7813E5F88E7F351DD9F7E3182F6F92E31AB91F8ED89092C42636250489E100F4567D212CD19A414B566213';
wwv_flow_api.g_varchar2_table(27) := 'DC745A9DD038894DF017BFAF5BD3AC227CA88BEA24B3129B601556321282E03C5A30923C454BBC4693A718B1434BBC06ED6821F7C2B16B777C14021E4B7CB120CD5B60682D012A7D70A04F4E08A2B78ACB89A4230ED8112477BEA9C8D03B945D2B604099';
wwv_flow_api.g_varchar2_table(28) := '100442C1D4AF9A0050E1913BC30925367122798A4D766022C26D2F3A7474F224A5AF9AE5EB6979CF1EC2C28B0631CB8589028CB54218FC31202B8BC0C57816B023E94892EDF05E35EB1601AB09402BDE74C3CBBEF96B67B5A0F37A593D017311A7E3CBBE';
wwv_flow_api.g_varchar2_table(29) := 'C5B041F565DF0F8580951E53395C956C38917424013BD404CC8198D89F46DE3814EDB00575749279EF4AD683130F3B3A9174C4263B828ACE5D650AC41C8A7A5C473B6B5AF8BF00030015B9F633044DE3E40000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(33721652755929715952)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_file_name=>'t1controls.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '47494638396120002000F60000FFFFFFFF5500FEFBFAFEE3D6FEE6DAFEFCFCFED0BAFEAA80FEB08AFED4C0FEF8F6FEEFE8FEAF88FEA87EFEBFA0FEEEE6FE9F70FE8B52FEAB82FEECE4FEF6F2FEA77CFEC0A2FEC8AEFE7836FE7B3AFE7F40FE9B6AFEE7DC';
wwv_flow_api.g_varchar2_table(2) := 'FEF7F4FEA67AFEC3A6FEFAF8FEDAC8FE7C3CFE9C6CFEF0EAFEBE9EFEA478FED3BEFEE0D2FE7734FE7A38FEC7ACFED8C6FEDCCCFEF3EEFEE2D4FE7430FECCB4FED2BCFEC4A8FEF4F0FE9E6EFEB692FEE4D8FEEBE2FEAE86FE6012FE5F10FE6C24FE5E0EFE';
wwv_flow_api.g_varchar2_table(3) := '732EFEBB9AFEEAE0FEE8DEFEF2ECFECAB0FEBC9CFEB896FE9662FEB38EFEB794FE8346FE874CFE8A50FE8244FE864AFEB490FEDECEFE8448FE8042FEDFD0FED6C2FE884EFEBA98FE661AFE6F28FE7632FE6316FE6214FECFB8FE905AFE8C54FEC2A4FEA0';
wwv_flow_api.g_varchar2_table(4) := '72FE8F58FE935EFE9764FE925CFE8E56FE6B22FE6A20FE681EFE702AFEDBCAFED7C4FE9A68FECEB6FE9866FE722CFEC6AAFE6418FE9460FE671CFEA274FEA376FECBB2FE6E26FEAC84FE7E3EFEB28CFE5C0C00000000000000000000000000000021FF0B';
wwv_flow_api.g_varchar2_table(5) := '4E45545343415045322E30030100000021FE1A43726561746564207769746820616A61786C6F61642E696E666F0021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840B39363493820F17218305353A3B';
wwv_flow_api.g_varchar2_table(6) := '12990A101822168214223B3D359E900B111918190E00141AAD3F820B3740028E02121A1929183200363C3E28004228D12E8F131B1A2A30A300041C8213D12814901C231A223386422F283892242B31C1861D988F0A141D058DFA8B02060C1224941097A8';
wwv_flow_api.g_varchar2_table(7) := '0090010408221A70A041050F2658282201AE5B220208186844D04211B46816111548E0C0C28713201415C0412088C2440A14A4CCD4CF450744145E3A2AC001C58B698548AC0312E95BB4098240CCC4014EE72202D15E60123AE0E64714401D3DF0494210';
wwv_flow_api.g_varchar2_table(8) := '54144401F80A22EF110505836E440B028BA620A62810BABA2D246082DCB978F3EADDCB7752200021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E870F138F8E172A585B938B0A1156595C0599830B312D831D4C9D';
wwv_flow_api.g_varchar2_table(9) := '510AA100200D494A338214A85A512082A08F24464A4C50B20A54565A5DA00B3740BA8C05474B4D514C530055573C5E004228DB2E8F0B264B501A088252A50013DB281493401E4B4A1786422F2838A1423132CB841D3493203AAC6AC42F510B224590AC18';
wwv_flow_api.g_varchar2_table(10) := '88A800900104D825A2E020A10D2752149150C74111882116425AB8A148DBB68E8A80243020E3890045057010082271918082AC1ABAE8808842CD470582A078D1AD10897A40323D5027A9152E0038D4FD64C461DB8B7F4707F03489A2A8A3A32F480822B0';
wwv_flow_api.g_varchar2_table(11) := '2D290064415E4E1238E8C6B620831570864A874248CE860BBCDEDDCBB7AFDFBF800705020021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E86244E3F148F8D123C650C958B1D4B3C664A209B8342322883344D3C';
wwv_flow_api.g_varchar2_table(12) := '674C0AA3002008606343821D54AB50A2001D952E5F61646017B064AB5C050A123340058E054462635D5D2C003F3E681F0036622D282E8F240C625C1148000221218255532828948F1308D23186402F2838A32E2753CE0C75A0B109C42E4601179190B162';
wwv_flow_api.g_varchar2_table(13) := 'C59483870A001940405E2216432EAC98C141110978283A2A7A72A2E4097E898480149988C200142F9A292A808340108B335F3D73D1EB10059CCF82C00C5788843E209B16809C20C8A0201C20812E120A93A0D101BD54C223EAC8C58017240411808714C0';
wwv_flow_api.g_varchar2_table(14) := '821B4104143C7883ECA0843A13014C8027246EC4055CEDEADDCBB7AFDFBD81000021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8624550E148F8D08583E47958B0A63586E5D209B8305374183146458684A0AA3';
wwv_flow_api.g_varchar2_table(15) := '822B5F105B821D5CAB11A2000F1D8F05365F1B1B6C002046AB46050A0D6E11388F171E5F6B6D2D000E19186F00485A3D70538F2E3F1E10620E00052D69826D3D654734950B44E52786475844CF9B142169050C090022AF5201018E023202F182C5141408';
wwv_flow_api.g_varchar2_table(16) := '131500328000254538D68550B34011091420392C9A0012A40B45424A8A542400C78D1B131615C04120C84599AF12BAE87588C24D5F4150BC385988C40B1440367D0419B358441C257F322229549ED11BBD529AAC4461C000128208804C0A6081A9888F04';
wwv_flow_api.g_varchar2_table(17) := 'A0BD3196544E42541085BC3D546001D1B978F3EADDCB576F200021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E864216431D8F8D48512245958B0A6B511971209B84200A831D621A1960A6A3000F444E6A829D1A';
wwv_flow_api.g_varchar2_table(18) := '2A63A2000B2E950908070D090020101A1823000A12294A1C8F4F360C0D1E280033505143005572593A3F8F1D174E391E2B0005524F8223DE3A17952EE3392C8636703B61149B1D282F87200CBC11E2AA510183136EDCC0B1A800900104F6297281A2220A';
wwv_flow_api.g_varchar2_table(19) := '1A8A48587436D1E24545423636C4A170C248024124362C68D005A54314543E2A10C41FAF42245EA000B249634593C30408C2615126A309155F60CC798352C88A371D292030808420021579EABA014468A5020705DDC83A282C4B004851103C5BA80089A8';
wwv_flow_api.g_varchar2_table(20) := '6C08E3CA9D4BB7EEA8400021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E862E2B6C0A8F8D25115433958B2026114D23029B891D739F622082202F0F954F6C28820A7411506BA20B5F6E51528E135E3F48690002';
wwv_flow_api.g_varchar2_table(21) := '0D114974000A5F6567724EBE2B16454E04007560116C003F76CE56758E20536F0E365B00052FB1024666727046148F146A6F25BD8547F046249B2041821CA2F0C68290518D405028D08804010213161568D18240874514506844414311898D1C306EE4A8';
wwv_flow_api.g_varchar2_table(22) := '480848460F6EDC88A8A8000E02402E326288B0510117320D5198B7A94010142F5C1822B10EC8A68F1A5982100500C7469E8E1E687CD191E88D8B26350A7D0482C0007F000868340A60C10D204C2BD1047063ECA0B53514014CD07830AEA10224B6DADDCB';
wwv_flow_api.g_varchar2_table(23) := 'B7AFDFBF7D03010021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E860503038F8E6C236D32948B200C6D6307059A890A779E5F2082203243148F24280FA99D5C740200241E296E478E0A6A31179302476D5C1200';
wwv_flow_api.g_varchar2_table(24) := '0A1530687663B68C1D21AB333800322346990E29CC3C3F8F1C2C062B210005379305236E76651BAD8E20042C5B1C864557656B249A05240B87285CF8E04254231038F831224180C0844513C0D8C960609182172832D25084E4CC151F6D508DC2A8511101';
wwv_flow_api.g_varchar2_table(25) := '360958DC60B4E0C68D878A0AE020004481C19B880AB8E88088023C4A0582A07851B010098C4034BDCA0813C4331C1951FC6CF420E38B8D476FF01412B5683C02371412C89814404B20CF800EBA417650289C821126641402171209AF75F3EADDCBB7AFA8';
wwv_flow_api.g_varchar2_table(26) := '400021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8720028F8E41453F40938C1F155F1F998A023F15100C920002096C1D8F054234820244A3079242775119488F414F213800050E153547052039782A2962A68B';
wwv_flow_api.g_varchar2_table(27) := '022F282D5324002177742D0033B829580E8F402852213782139805741929305FAB8E201CE20B8644293E104299ADAF861D752B5C7C6A0462823E4642081098B0684218371A642C02010D058A7E88F2E8D8984481228A162F2A3AD2A36413108B16DCB8C1';
wwv_flow_api.g_varchar2_table(28) := '50D1030F54A8841808AA59A3022EDE19A240E1538120285E082C44021AA6492442B68C240847C89E8F1E587CF1AAE88D5542420E8547E0063500042C1E5509A480CF4137C40E324B73D0048B070FDB162A4062ABDCBB78F3EADD8B37100021F904090500';
wwv_flow_api.g_varchar2_table(29) := '00002C00000000200020000007FF800082838485868788898A8B8C8D8E8F90870A69210A918B53480C32978905439A3F0582022C321D901D9600021748393602002E47114D258F132F03420005754877B8204E54504C10B28C053728282F14002F3F082F';
wwv_flow_api.g_varchar2_table(30) := '00435D4D4C1A338F40CE280F8224E20512DA7815A88E201CCF2E865E4C781EF090052ED1861D5B75349D8C404CE8C54808010213163D688381099B45020680FB97C8861C2B569480501471A2221B59426A5C64F04642450FC48858F210E0A102149439C2';
wwv_flow_api.g_varchar2_table(31) := 'B7CE10057DF782BC3344E2050A209148803B0942190E70381B3D70F6E25FCF1BA88480B3C78EC00D12820838030A60C10D1CA3228505D0ECE7A0B12E273823E8B2500112540ADBCA9D4BB7AEDDB981000021F90409050000002C00000000200020000007';
wwv_flow_api.g_varchar2_table(32) := 'FF800082838485868788898A8B8C8D8E8F9088240B918C1C433337958A2C170E4383022F6A0A90202082059D251F050034446D631F8F242F03428269174417000225465C5D0DAE8D1C28282F14004075161C0006B25D4BBE8E38C9280F823424824E635D';
wwv_flow_api.g_varchar2_table(33) := '5439A58E20C82F34861764E4EB90052ECC860A275BF09B8A020F4142C689841020306111901A1A5424F992CF908001DA1A1ABA63A7228F2B32121580984C62210466429AB16340910B02370A2A7AB0210A13264E04E83354A083CD47F23A2062314467BC';
wwv_flow_api.g_varchar2_table(34) := '20CA5C182291E04B1BA1B5B4A90421134036290E50407A904C1D005B37740AD196EB110894DF0010480644D0821B3800E21C7483EC20B5FA132624EB3AB350011248EBEADDCBB7AF5FBE81000021F90409050000002C00000000200020000007FF800082';
wwv_flow_api.g_varchar2_table(35) := '838485868788898A8B8C8D8E8F90882002918C424F2C24958A0469322C83051C409120058337690632821D6F1E262D8F422F3742829D5B5300052B26106B0E8F1C28282F1400422D0613006A15C0625B8F38C5280F820A34820E5F6B46480A8F20C42FDB';
wwv_flow_api.g_varchar2_table(36) := '855B1B7136E78F052EC886202C27F19B8A020B4040F6884204049A29E230874A12266250241230C05ABB433952A4C04211C22944041C2ABAE3A66347088A5C10B82130110E084A94509943E09EA1021D625E64F4AEC321104386D8845420883117861C68';
wwv_flow_api.g_varchar2_table(37) := 'D13206E82312D6044E1294068A1E1D31203D28660E00895A368518C0A387082410233501C88882148005322A947487AA98595E2E14074D28762B6EA102248CDADDCBB7AFDFBF9B02010021F90409050000002C00000000200020000007FF800082838485';
wwv_flow_api.g_varchar2_table(38) := '868788898A8B8C8D8E8F908805918D1437040A948A1C28281C8420939005A200049D2F820A094417998E3437374282A75203000532473907288F41A814004203282E0052360C0D0D9F8E389D280B8220AF75CC265EA58C209C2FC3856A07740E1D91052E';
wwv_flow_api.g_varchar2_table(39) := 'E185204F21E79A8B02243838EB882E0404138B40076364BA40C095E854271A8A8E3089C2508307450651204C942783458B0F13512070839FA2091EC8800153E1593C42053A7478D5281DBC420262C478E9A840B017C80A31B022C7484E4724A479042140';
wwv_flow_api.g_varchar2_table(40) := '50981D5AACB081F4001542122F6E9C43A203A90348203892A8D5090800050DDC88F1386AD08DAE831E143D096042275A6C0E0B1520F133AEDDBB78F3EAA514080021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E';
wwv_flow_api.g_varchar2_table(41) := '8F909192840A40400293894028280F9983050583049C1C8205035304901D37374282A42841824F330E0E348F389C2F1D004203031400412B0E45552E8F139C280B820220822C1645477590201C282FC485525579170A91052EDF85023703E59F8905420F';
wwv_flow_api.g_varchar2_table(42) := '0FBF8A140404138B1379356D620D562592854257A21F64BA74891021872282061115694291E21D7B046EE853F4E08E988F3968BDA3A4C05DA373F5D46DD992D2518120DD9615CAC3E3CA86888D4838DB080213002356CED83100E9412F5D245EDCF855C4';
wwv_flow_api.g_varchar2_table(43) := '4A502FDA329288C50908000512B07031656ED08DAA83164C7BD70C05AC91840A909089B6ADDBB77004E3360A040021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840A40380293893828280F99830505';
wwv_flow_api.g_varchar2_table(44) := '83049C1C83241C14901D37374282A4284182402C062190139C2F1D00420303AA242132756C988E0F9C280B820220821CC533B88F021C282FAA8538751F09D090052EDB863841E19F8805342424C889140404138B0B44071E2648408AB12834147DD8B0A6';
wwv_flow_api.g_varchar2_table(45) := '8D4124FE96054CE460CC98300E6D289277A39E221247BE7C99630387BA420A14A46334AE97210A6F2E987C5420483617868EB8C132E7D52312CB2C820828800B0F343EE82878A42C5B40122FBEB0018084078F2B584E3C0241E0060958283C9029A0E04B';
wwv_flow_api.g_varchar2_table(46) := '99A75E22891274030591AD006878C0A264C0275D17148880E270F55301120B467EDCCBB7AFDFBF9002010021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928402130B0593893828280B99839883049C1C';
wwv_flow_api.g_varchar2_table(47) := '83142E911D04374282A3284182132F283890139C2F1D0042030314BC9C2D2F900B9C9D820220B2282D6A4090051C282FC085422D5328A18F052ED68642979F8BA71DDC88140404138B422B454E361FAD89AF28348A31070D15151E5B14DDCB97E8C29783';
wwv_flow_api.g_varchar2_table(48) := '0763285277A39D22214424DCB9E30015394220327673B1CB908B156C3A760B42CD22211B19343430D988C431874F4A29E08245059E0322193DC8950F880A3401ABF8C082018F974720569110F442C58E31054078188A61848068835AF8D841069310083E';
wwv_flow_api.g_varchar2_table(49) := '52FCF8F4E28A8E22A6D884FC44E148959C1708E3CA9D4BB72EA4400021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F90919284052424938A3828280B9888049B1C831D1D910A1C044282A0284182132F2F978F';
wwv_flow_api.g_varchar2_table(50) := '0F9B2FA54203031400429BAD900BBF9D000220AFBFAA8F051C282FBC85BE283892052ED08614349E8C0A14C78B140404138B1D532B1F2B528BAC28DB892C554548483FF09FBFF887530CFE0C365C281277A3DCC037486C1061C7AD9000050296B9286588';
wwv_flow_api.g_varchar2_table(51) := '460C190A221508E24C60A11F4D2220D8C788C4AF72025AB802214603142A792836AAE56C5B0E39580C0070204243122A2B1E812070E31205153AE01829004242CF24260A40920A80048CA461A4BAF020228A054F6D92FE1844C100464F138EFC90D9B0AD';
wwv_flow_api.g_varchar2_table(52) := 'DBB77004E3460A040021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F90919284052424938A1328280B9888049B1C832020910A1C044282A02841820F2F0334900F9B2F1D0042033714B99B2838900BBF9D0002';
wwv_flow_api.g_varchar2_table(53) := '02829A9BAA8F051C282FBD85429BC191052ED28614B39E8B0220058C14040413DF2F6A092CCC89AC28DD883775431717278BEFF1875216FE16061651E070E39CA20E0666BC8971C95B2101E29AB9C06588860C35A520150802CD85212F63DA54D1D688C4';
wwv_flow_api.g_varchar2_table(54) := 'AF73029E000100E24B042E71AA2878540BDA2C043C44E0FB4025029838311E812070E312053C56CA6C2800228F129F39223A8A280443D236E268DCA1D2E58DA71156789418D421CD94999826D87080D6A1DBB77005E3CA9514080021F90409050000002C';
wwv_flow_api.g_varchar2_table(55) := '00000000200020000007FF800082838485868788898A8B8C8D8E8F90919284052442938A0F28280B9888049B1C832005910A1C049700A02841820F2F371D909A282FB34203371400429B280F900BBF9D0002028213BFAA8E051CB6BC85422F283892052E';
wwv_flow_api.g_varchar2_table(56) := 'D1861D349E8C05A58C140404138B0540030340C88AAC28DD890F4F2D6969D6EEBFF1884132FE32AE1451E070C39C22102D4E9C9002C29B217090B0CDDAC6E249C3884150480961E802040F1F263A72B1E9C81C632150183BD0A6069D0F171B697A83C50B';
wwv_flow_api.g_varchar2_table(57) := '00273EF0180030244E9B1173123C02F1420C03011492D88161C25895303F7F4012500C07163B3EDA20A3E0C4489B189816A8C0AA5590828D3123515062C7CD1D8785102EE0A192066EA10724ECEADDCB9750200021F90409050000002C00000000200020';
wwv_flow_api.g_varchar2_table(58) := '000007FF800082838485868788898A8B8C8D8E8F9091928405242E938A0F2828249888049B1C830205910A1C044282A02841820F030420909A282F1D0042033714B99B280B900BBFC100A48213BFAA8F051CB6BD85422F283892052ED0861D349E8CA58D';
wwv_flow_api.g_varchar2_table(59) := '140404138B0540BBD58BAC28DC89C3BFD99FBFED88EF9BF187141C37E48A05412F06A4EB46F05A10018640A0B8811052B322587E1892C1C0C6160590842030B30382B1342F8C39A970E7089B868D6658E901670680221994240060600EC93C2D1EA5C9E0';
wwv_flow_api.g_varchar2_table(60) := '268F800E4B52E0B963CCCB1C0F12D84022F14010092629447C29D5C182893B52303D8D5AE39B801BAE30B9689222830982853C447D8396D082126F0830B69D4BB7AEA0400021F90409050000002C00000000200020000007FF800082838485868788898A';
wwv_flow_api.g_varchar2_table(61) := '8B8C8D8E8F9091928405422E938A0F2828249888049B1C8305920A1C044282A02841820F031C02909A282F1D0042033714B89B28A98F0BBE0B8202A40013BEBC8F051CB5CB84422F283892052ED0851D349E8CC78C140404138B0540BAC48BAB28DC89C2';
wwv_flow_api.g_varchar2_table(62) := '9BB6EABEED8842BEF18A141C37E48A0538043800EB4610480919B20A090882E39BA309497AC829612884831569123AAAB243079C3900043CB92168868D121F5A4032A1234B991500883419C302801A0436887C78F0A88586144E047418136589130005EA';
wwv_flow_api.g_varchar2_table(63) := 'E0240204929074429644A1728014882D3F0C80C014358A920ADF6E79A241C6EB1D8285EE78AD839610890F7508B6B69D4BB7AEA0400021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F';
wwv_flow_api.g_varchar2_table(64) := '2828249888049B1C8305920A1C044282A02841820B374102909A282F1D0042033714B89B28A98F0BBE0B8202A40013BEBC8F051CB5CB84422F283892052ED0851D349E8CC78C140404138B0540BA9D8BAB28DC89C29B03B28AEBED8842BEF18B141C37E4';
wwv_flow_api.g_varchar2_table(65) := '8A05380870A8D7AD1B0E0727E415227129D20425597858307443068B20DF1A1D8123A74C0500055EB4027062C59629231D799063C6CD10005EB8D47802408A85156CD48078F4040A9E220214ACE962A404C8295E569CD8F9480831002EC2748973849480';
wwv_flow_api.g_varchar2_table(66) := '1709AA617211A74B983C19BBD110E3D546C14247BC1A381BED8201A66C06E3CA9D0B20100021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C8305920A1C044282A0';
wwv_flow_api.g_varchar2_table(67) := '2841820B3740A48F9A282F1D0042033714B89B28BC8F0BBE0B8202B213BEC08E051CB5CA83422F283892052ECF841D349E8CB28C140404138B0540BAA98BAB28DB8924BE37DE88036A09319D8942EFF1872D614D26B71215C0412008BB451D84ECE34608';
wwv_flow_api.g_varchar2_table(68) := '079121200EB9B814294817336E1C18A215EB11893065AEF89000A000016A0050849082E2C1230721DDA85801E0420D0903000439B192C0230976DCA4C823408189352668A6E429CA919408518ADCA251630D1D8D2581005100C9C538413420AC99438421';
wwv_flow_api.g_varchar2_table(69) := '210A73D67CB160969003B56A0DDA0EA220838500B978F3E60D040021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C8305920A1C044282A02841820B3740A48F9A28';
wwv_flow_api.g_varchar2_table(70) := '2F1D0042033714B89B28BC8F0BBE0B8202B213BEC08E051CB5CA83422F283892052ECF841D349E8CB28CB937138B0540BA978A42604A3512378A24BE048B24293D3D3B1FE8F18C174C2935D80A15C0412048C0431D5C78E36668828518200EB9380709C8';
wwv_flow_api.g_varchar2_table(71) := '181F2AF215828722D623216D7CA410910700396200800C7BE404C6482875006C9150A5154714A21A81E0922243140705403068E0E484A009D21E3C629041839388142434C8135310058A8D28C838A1C0EA9D060886302404220FD82D63091938E024675A';
wwv_flow_api.g_varchar2_table(72) := '931C07A8BD9D4B976E200021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C9E000A41044282A028418224044005909A282F1D0042033714B79B28BB8F0BBD0B8202';
wwv_flow_api.g_varchar2_table(73) := 'B10013BDBF8E051CB4CA83422F283892052ECF841D349142A88DC68C2B18306B9D890540B9DB8A42183BEF6F8A24BD048B241959597033ECBDA28B439A889883AD50011C0482143CA4C005B851861ECC3000E21085858B70B41101E5822112D2603D1202';
wwv_flow_api.g_varchar2_table(74) := '010F132A555A5D020044D8A32A269570310040CD8F21C384F402E208441B264DBACC28208048911952043D78F1C25B23274D2210A948C346910F2C06755000A9C314355C01742852C48B1A8884047C286201055A42380D2E2458F756D0C3BA78F3D60D04';
wwv_flow_api.g_varchar2_table(75) := '0021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C9E000A41044282A028418224044005909A282F1D0042033714B79B28BB8F0BBD0B8202B10013BDBF8E051CB4CA';
wwv_flow_api.g_varchar2_table(76) := '83422F283892052ECF841D34912EA88DC68C432218239D8905400304D8864278567070178A24BDA28A42516666656FF8F68C627449E2811D251C04821834A48006B85186165C4820E01085858A26CC51C2858D2112D280407251810A99385E04D1502008';
wwv_flow_api.g_varchar2_table(77) := '482F6F8D1C2C211366841A005262A4D925A4D7044720E6D05C13A380802143D45003F0E0C5008C86888469F3A662871943A6DC2305025287102D8C81B83024C1568882580C39310CED2005370A7EBA9D4BB7AE5D4381000021F90409050000002C000000';
wwv_flow_api.g_varchar2_table(78) := '00200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C9E000A41044282A02841822404400590322D282F1D0042033714B89B28BC8F3910B40B8202B10013BEC08E40505F4FCC83422F283892380EC587';
wwv_flow_api.g_varchar2_table(79) := '1D348F052E2442028DC88A245F1A19221BA88905400304B7895E76763C3C650EE7BEA28933DC0814E84591105FAC1291A0D304CA920697DEE178A56051251211472122C12604394314A4395A70204E8D048648540302890682381BE8D411A400842020BE';
wwv_flow_api.g_varchar2_table(80) := 'DC357A6364C31C094F00047932E0D6C14DDB180990B0E14B8513000AB0A0C512C00379151DCD70CA869C0035B4FE01380649819417C80AA4A1AAB11090272F0D44B6A590B5ADDDBB78F32A0A040021F90409050000002C00000000200020000007FF8000';
wwv_flow_api.g_varchar2_table(81) := '82838485868788898A8B8C8D8E8F9091928405422E938A0F28282498831D0583049B1C9E00694D3F4282A3284182240440A18F733D29061D0042033714BB9B28BF8F123B3D460F8202B413C1C38E38493B654F86422F283892383F6CB4851D348F053496';
wwv_flow_api.g_varchar2_table(82) := '028DDF892C1B4D4C495F9D8905400304BA88204658FB3030488A2482BDC2B7218341830E1409090644518B0D64C88C61100F51011CB2402C022144883853895C2478926E1085678F48389973A7852112D81A3EA25085CE813C090481D0080047B08F8DD8';
wwv_flow_api.g_varchar2_table(83) := '983880E0C70D003007E85AB869C123220718207109A095CC05F578365293A7889A50056E6C1A08A0404946139289DAA40D24215E040D14B82D6476AEDDBB78F31E0A040021F90409050000002C00000000200020000007FF800082838485868788898A8B';
wwv_flow_api.g_varchar2_table(84) := '8C8D8E8F9091928405422E938A0F2828249883144283049B1C9E002D4D294582A328418224044005901E593A56060042033714BB9B28BF8F0C705A3B128202B40013C1C38E385470671786422F28389213255BCC851D348F05344234E08AE9886973644B';
wwv_flow_api.g_varchar2_table(85) := '111EA189054003041D89203551511A1A7888282211EC152201749A2854384391906040144931D1A6CD081BF31015C0210BC422102E5C40337588469A1BEB045118E9C885853C3F6E1822912DE223106F8E54F9804210088F0070041BE70885932A5E623C';
wwv_flow_api.g_varchar2_table(86) := '00407340BE879B3A15AD62E1C200569B6C2EB807B49182136C640228706393C1B129190920C461D30292850E2870E0D015AEDDBB78F3EA5D14080021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405';
wwv_flow_api.g_varchar2_table(87) := '422E938A0F2828249883344283049B1C9E002D50195582A3284182240440059007665665320042033714BB9B28BF8F473C6756398202B40013C1C38E13643C767586422F283892135E32CC851D348F05142E34E08AE988520762617139E389054003040A';
wwv_flow_api.g_varchar2_table(88) := '8902155D5D114B4B2E2822110C88BE3B6312261CA24848414503189830D1C0C13C440570C802B14800051A1D4C29EAF0C2E0210AD01E5188E185CD034324B2997C74E2439D29DB0080E00800C7B3472456D439F1645CCC01211D6EBAE4C8051B19695E02';
wwv_flow_api.g_varchar2_table(89) := '686572C18D200220D9EB04A0C08D4DAF04AD9B1464D30291851404993016ADDBB77005E3CA4514080021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840F172E93840B13845F4D522498005349782582';
wwv_flow_api.g_varchar2_table(90) := '142A4A521CA1156E576E4400141964284182240440058F4E306E766806004E6D3714004228CCC98E0F6130683C158213BD0013CC28CE8E37D13E1686422F2838920F1F1702871D3490EE14D88BF3892F477310104EEF890540030828482420CF9A366DC4';
wwv_flow_api.g_varchar2_table(91) := '1861A388C43620FE907C99389158A265CC2026E2500501022717BA1D2A8063178845023A5018184A91021C42105110E9084488044F2E1522514EE3A317539EA0D80400C4490038B6D1741942E88B773C077450B64D67A3020350BC0005804046410B6EE0';
wwv_flow_api.g_varchar2_table(92) := 'A8C748C102AB3798E11244761210660B0F5A1A1230E19ADCBB78F3EADD8B29100021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840B45330A938242172184743B3A479902071822168214783B3D2699';
wwv_flow_api.g_varchar2_table(93) := '345C19292A0E00141AAC4482240440058F0C1A1958183200363C5828004228CE148F131B1A2A301282040F8213CE28D08F1C231A223386422F283892242B3102871D34900A141DBF8CF78A421639121225DF101500328000A644431A54F0E0C144024524';
wwv_flow_api.g_varchar2_table(94) := 'BA0151148381458B2CF44954E4828D03071F4E74505400472F108C1428409969910017230F5108F8A80007142F5C1822816E22246ECE260802C11247379A8C08387B218FE78091CD9E410282930436673E17DC5007A9808B83006E380B32285F4BA328AC';
wwv_flow_api.g_varchar2_table(95) := 'B63424E081DAB57007E3CA9D4B576E20003B000000000000000000';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(33721653453126717272)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_file_name=>'t1loading.gif'
,p_mime_type=>'image/gif'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB86D000000644944415458C3EDD9B10DC0300CC4C01F41237B438FA21198C6459A944114809CE00075AF240950C0029AEFEB63A9DC709B796DA072B4535B1972D6C77387E1';
wwv_flow_api.g_varchar2_table(2) := '09142850A0408102050A142850A0408102050A1428F055600FF6F52F26E0D923FAF437C405F1FDCBC98CD47AF60000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(33721654143852721532)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_file_name=>'t1loading_background.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D494844520000001E0000001E0403000000C91EB39100000030504C5445FFFFFF0707070808081414141717170000000000000000000000000000000000000000000000000000000000000000006E6A76E400000041494441';
wwv_flow_api.g_varchar2_table(2) := '54789CECCEA10D002010C5D0AE503620B7C1850DD87F2724F91A8BA979A6B48E75C3D4DA372437C993644996644996E44172F1FF9EFE0E000000FFFF03002A7338C822DD04790000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(33721654841480722557)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_file_name=>'t1overlay.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D494844520000007D000000320803000000465024AE0000004B504C5445BFBFBF9F9F9FEFEFEFFFFFFF8787870F0F0F3F3F3F7F7F7FDFDFDF808080000000CFCFCF979797B7B7B76F6F6FAFAFAFE7E7E7F7F7F72F2F2FA7A7';
wwv_flow_api.g_varchar2_table(2) := 'A78F8F8FC7C7C75F5F5FD7D7D74F4F4F00B3460C000001AA49444154785EEDD5D96AEC300C00502DDE9D7D96F6FFBFF47AC284D2B1CC44507A1F6A3D2460111D142205F87F46D7BB7E9381DBAA03C2225384087C4324495F8728037110F875300F643175';
wwv_flow_api.g_varchar2_table(3) := '126216F5102332C618047D31B1A5C702D54439DD1F0221352AF55CF0888897EFC88C88255175B3BB263F2E8BA0C7CBAAD1211EF1D2F711A3C4C71A3F6A0D745E1F634B7FC72F2CEBD1D0691D7E5E1FCEEB9CDFE959F9E671E5B3FA516C0480974A00E36E';
wwv_flow_api.g_varchar2_table(4) := '48B881E657372B278E86F6C40DA49CB8CC4A9DD7B9A18BE3B398E7B6117A3781B57A7BD3CA9B8BE8B8550AB11804F0C11F00D4FF715DFFEDE87AD7BBDEF5AB0C5C495932CB5470CEF3D5B920E9B42519489BC0D3661F48B675D227147548C9B14B09043D';
wwv_flow_api.g_varchar2_table(5) := 'DBD4D253816AA29CEE0F79213529752C7872CE7D7E47EEE5A824AA6E76D7E2E392053D7D9246F7E98897BE8F98243ED5F8516B0BE7F529B5F4777C66594F369CD6FDCFEBDB799DF19D8ECA37EF88CFEA47B1C97BFF52C9FB693724DCFAE65777574E5CD8';
wwv_flow_api.g_varchar2_table(6) := 'DA13B705E5C4212B75A67B4317C727DBE7B6117AB7C05ABDBD69513C0DE1B8554A603182F733CFDE87BFF88FEB7AD7BBFE0F185E5A60ACCE5D1E0000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(33721655566484726188)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_file_name=>'t2controls.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '47494638396120002000F60000000000E2E2E20303032323232020200101013C3C3C7070706767673737370707071313136868687171715353531515157E7E7E9999996E6E6E1717170A0A0A737373515151474747B1B1B1AEAEAEA9A9A98383831E1E1E';
wwv_flow_api.g_varchar2_table(2) := '0808087575754E4E4E050505303030ACACAC818181111111555555777777383838272727B3B3B3B0B0B04848483131312C2C2C0E0E0E252525B7B7B74141413A3A3A4C4C4C0C0C0C8080806060602121211818186A6A6AD1D1D1D3D3D3C1C1C1D5D5D5B9';
wwv_flow_api.g_varchar2_table(3) := 'B9B95858581A1A1A1C1C1C1010104545455757575C5C5C8A8A8A6363635E5E5EA3A3A39E9E9E9A9A9AA5A5A5A0A0A06161612A2A2AA1A1A1A7A7A72828283535359C9C9C5A5A5ACACACABEBEBEB5B5B5CECECED0D0D03E3E3E9191919797975050507C7C';
wwv_flow_api.g_varchar2_table(4) := '7C9393938E8E8E898989909090959595C3C3C3C5C5C5C7C7C7BCBCBC2E2E2E333333858585404040878787BABABA4A4A4ACCCCCC8C8C8CC9C9C97A7A7A797979434343C0C0C06C6C6CAAAAAA656565D7D7D700000000000000000000000000000021FE1A';
wwv_flow_api.g_varchar2_table(5) := '43726561746564207769746820616A61786C6F61642E696E666F0021F904000500000021FF0B4E45545343415045322E3003010000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840B39363493820F17218305353A3B';
wwv_flow_api.g_varchar2_table(6) := '12990A101822168214223B3D359E900B111918190E00141AAD3F820B3740028E02121A1929183200363C3E28004228D12E8F131B1A2A30A300041C8213D12814901C231A223386422F283892242B31C1861D988F0A141D058DFA8B02060C1224941097A8';
wwv_flow_api.g_varchar2_table(7) := '0090010408221A70A041050F2658282201AE5B220208186844D04211B46816111548E0C0C28713201415C0412088C2440A14A4CCD4CF450744145E3A2AC001C58B698548AC0312E95BB4098240CCC4014EE72202D15E60123AE0E64714401D3DF0494210';
wwv_flow_api.g_varchar2_table(8) := '54144401F80A22EF110505836E440B028BA620A62810BABA2D246082DCB978F3EADDCB7752200021F90400050001002C00000000200020000007FF800082838485868788898A8B8C8D8E870F138F8E172A585B938B0A1156595C0599830B312D831D4C9D';
wwv_flow_api.g_varchar2_table(9) := '510AA100200D494A338214A85A512082A08F24464A4C50B20A54565A5DA00B3740BA8C05474B4D514C530055573C5E004228DB2E8F0B264B501A088252A50013DB281493401E4B4A1786422F2838A1423132CB841D3493203AAC6AC42F510B224590AC18';
wwv_flow_api.g_varchar2_table(10) := '88A800900104D825A2E020A10D2752149150C74111882116425AB8A148DBB68E8A80243020E3890045057010082271918082AC1ABAE8808842CD470582A078D1AD10897A40323D5027A9152E0038D4FD64C461DB8B7F4707F03489A2A8A3A32F480822B0';
wwv_flow_api.g_varchar2_table(11) := '2D290064415E4E1238E8C6B620831570864A874248CE860BBCDEDDCBB7AFDFBF800705020021F90400050002002C00000000200020000007FF800082838485868788898A8B8C8D8E86244E3F148F8D123C650C958B1D4B3C664A209B8342322883344D3C';
wwv_flow_api.g_varchar2_table(12) := '674C0AA3002008606343821D54AB50A2001D952E5F61646017B064AB5C050A123340058E054462635D5D2C003F3E681F0036622D282E8F240C625C1148000221218255532828948F1308D23186402F2838A32E2753CE0C75A0B109C42E4601179190B162';
wwv_flow_api.g_varchar2_table(13) := 'C59483870A001940405E2216432EAC98C141110978283A2A7A72A2E4097E898480149988C200142F9A292A808340108B335F3D73D1EB10059CCF82C00C5788843E209B16809C20C8A0201C20812E120A93A0D101BD54C223EAC8C58017240411808714C0';
wwv_flow_api.g_varchar2_table(14) := '821B4104143C7883ECA0843A13014C8027246EC4055CEDEADDCBB7AFDFBD81000021F90400050003002C00000000200020000007FF800082838485868788898A8B8C8D8E8624550E148F8D08583E47958B0A63586E5D209B8305374183146458684A0AA3';
wwv_flow_api.g_varchar2_table(15) := '822B5F105B821D5CAB11A2000F1D8F05365F1B1B6C002046AB46050A0D6E11388F171E5F6B6D2D000E19186F00485A3D70538F2E3F1E10620E00052D69826D3D654734950B44E52786475844CF9B142169050C090022AF5201018E023202F182C5141408';
wwv_flow_api.g_varchar2_table(16) := '131500328000254538D68550B34011091420392C9A0012A40B45424A8A542400C78D1B131615C04120C84599AF12BAE87588C24D5F4150BC385988C40B1440367D0419B358441C257F322229549ED11BBD529AAC4461C000128208804C0A6081A9888F04';
wwv_flow_api.g_varchar2_table(17) := 'A0BD3196544E42541085BC3D546001D1B978F3EADDCB576F200021F90400050004002C00000000200020000007FF800082838485868788898A8B8C8D8E864216431D8F8D48512245958B0A6B511971209B84200A831D621A1960A6A3000F444E6A829D1A';
wwv_flow_api.g_varchar2_table(18) := '2A63A2000B2E950908070D090020101A1823000A12294A1C8F4F360C0D1E280033505143005572593A3F8F1D174E391E2B0005524F8223DE3A17952EE3392C8636703B61149B1D282F87200CBC11E2AA510183136EDCC0B1A800900104F6297281A2220A';
wwv_flow_api.g_varchar2_table(19) := '1A8A48587436D1E24545423636C4A170C248024124362C68D005A54314543E2A10C41FAF42245EA000B249634593C30408C2615126A309155F60CC798352C88A371D292030808420021579EABA014468A5020705DDC83A282C4B004851103C5BA80089A8';
wwv_flow_api.g_varchar2_table(20) := '6C08E3CA9D4BB7EEA8400021F90400050005002C00000000200020000007FF800082838485868788898A8B8C8D8E862E2B6C0A8F8D25115433958B2026114D23029B891D739F622082202F0F954F6C28820A7411506BA20B5F6E51528E135E3F48690002';
wwv_flow_api.g_varchar2_table(21) := '0D114974000A5F6567724EBE2B16454E04007560116C003F76CE56758E20536F0E365B00052FB1024666727046148F146A6F25BD8547F046249B2041821CA2F0C68290518D405028D08804010213161568D18240874514506844414311898D1C306EE4A8';
wwv_flow_api.g_varchar2_table(22) := '480848460F6EDC88A8A8000E02402E326288B0510117320D5198B7A94010142F5C1822B10EC8A68F1A5982100500C7469E8E1E687CD191E88D8B26350A7D0482C0007F000868340A60C10D204C2BD1047063ECA0B53514014CD07830AEA10224B6DADDCB';
wwv_flow_api.g_varchar2_table(23) := 'B7AFDFBF7D03010021F90400050006002C00000000200020000007FF800082838485868788898A8B8C8D8E860503038F8E6C236D32948B200C6D6307059A890A779E5F2082203243148F24280FA99D5C740200241E296E478E0A6A31179302476D5C1200';
wwv_flow_api.g_varchar2_table(24) := '0A1530687663B68C1D21AB333800322346990E29CC3C3F8F1C2C062B210005379305236E76651BAD8E20042C5B1C864557656B249A05240B87285CF8E04254231038F831224180C0844513C0D8C960609182172832D25084E4CC151F6D508DC2A8511101';
wwv_flow_api.g_varchar2_table(25) := '360958DC60B4E0C68D878A0AE020004481C19B880AB8E88088023C4A0582A07851B010098C4034BDCA0813C4331C1951FC6CF420E38B8D476FF01412B5683C02371412C89814404B20CF800EBA417650289C821126641402171209AF75F3EADDCBB7AFA8';
wwv_flow_api.g_varchar2_table(26) := '400021F90400050007002C00000000200020000007FF800082838485868788898A8B8C8D8E8720028F8E41453F40938C1F155F1F998A023F15100C920002096C1D8F054234820244A3079242775119488F414F213800050E153547052039782A2962A68B';
wwv_flow_api.g_varchar2_table(27) := '022F282D5324002177742D0033B829580E8F402852213782139805741929305FAB8E201CE20B8644293E104299ADAF861D752B5C7C6A0462823E4642081098B0684218371A642C02010D058A7E88F2E8D8984481228A162F2A3AD2A36413108B16DCB8C1';
wwv_flow_api.g_varchar2_table(28) := '50D1030F54A8841808AA59A3022EDE19A240E1538120285E082C44021AA6492442B68C240847C89E8F1E587CF1AAE88D5542420E8547E0063500042C1E5509A480CF4137C40E324B73D0048B070FDB162A4062ABDCBB78F3EADD8B37100021F904000500';
wwv_flow_api.g_varchar2_table(29) := '08002C00000000200020000007FF800082838485868788898A8B8C8D8E8F90870A69210A918B53480C32978905439A3F0582022C321D901D9600021748393602002E47114D258F132F03420005754877B8204E54504C10B28C053728282F14002F3F082F';
wwv_flow_api.g_varchar2_table(30) := '00435D4D4C1A338F40CE280F8224E20512DA7815A88E201CCF2E865E4C781EF090052ED1861D5B75349D8C404CE8C54808010213163D688381099B45020680FB97C8861C2B569480501471A2221B59426A5C64F04642450FC48858F210E0A102149439C2';
wwv_flow_api.g_varchar2_table(31) := 'B7CE10057DF782BC3344E2050A209148803B0942190E70381B3D70F6E25FCF1BA88480B3C78EC00D12820838030A60C10D1CA3228505D0ECE7A0B12E273823E8B2500112540ADBCA9D4BB7AEDDB981000021F90400050009002C00000000200020000007';
wwv_flow_api.g_varchar2_table(32) := 'FF800082838485868788898A8B8C8D8E8F9088240B918C1C433337958A2C170E4383022F6A0A90202082059D251F050034446D631F8F242F03428269174417000225465C5D0DAE8D1C28282F14004075161C0006B25D4BBE8E38C9280F823424824E635D';
wwv_flow_api.g_varchar2_table(33) := '5439A58E20C82F34861764E4EB90052ECC860A275BF09B8A020F4142C689841020306111901A1A5424F992CF908001DA1A1ABA63A7228F2B32121580984C62210466429AB16340910B02370A2A7AB0210A13264E04E83354A083CD47F23A2062314467BC';
wwv_flow_api.g_varchar2_table(34) := '20CA5C182291E04B1BA1B5B4A90421134036290E50407A904C1D005B37740AD196EB110894DF0010480644D0821B3800E21C7483EC20B5FA132624EB3AB350011248EBEADDCBB7AF5FBE81000021F9040005000A002C00000000200020000007FF800082';
wwv_flow_api.g_varchar2_table(35) := '838485868788898A8B8C8D8E8F90882002918C424F2C24958A0469322C83051C409120058337690632821D6F1E262D8F422F3742829D5B5300052B26106B0E8F1C28282F1400422D0613006A15C0625B8F38C5280F820A34820E5F6B46480A8F20C42FDB';
wwv_flow_api.g_varchar2_table(36) := '855B1B7136E78F052EC886202C27F19B8A020B4040F6884204049A29E230874A12266250241230C05ABB433952A4C04211C22944041C2ABAE3A66347088A5C10B82130110E084A94509943E09EA1021D625E64F4AEC321104386D8845420883117861C68';
wwv_flow_api.g_varchar2_table(37) := 'D13206E82312D6044E1294068A1E1D31203D28660E00895A368518C0A387082410233501C88882148005322A947487AA98595E2E14074D28762B6EA102248CDADDCBB7AFDFBF9B02010021F9040005000B002C00000000200020000007FF800082838485';
wwv_flow_api.g_varchar2_table(38) := '868788898A8B8C8D8E8F908805918D1437040A948A1C28281C8420939005A200049D2F820A094417998E3437374282A75203000532473907288F41A814004203282E0052360C0D0D9F8E389D280B8220AF75CC265EA58C209C2FC3856A07740E1D91052E';
wwv_flow_api.g_varchar2_table(39) := 'E185204F21E79A8B02243838EB882E0404138B40076364BA40C095E854271A8A8E3089C2508307450651204C942783458B0F13512070839FA2091EC8800153E1593C42053A7478D5281DBC420262C478E9A840B017C80A31B022C7484E4724A479042140';
wwv_flow_api.g_varchar2_table(40) := '50981D5AACB081F4001542122F6E9C43A203A90348203892A8D5090800050DDC88F1386AD08DAE831E143D096042275A6C0E0B1520F133AEDDBB78F3EAA514080021F9040005000C002C00000000200020000007FF800082838485868788898A8B8C8D8E';
wwv_flow_api.g_varchar2_table(41) := '8F909192840A40400293894028280F9983050583049C1C8205035304901D37374282A42841824F330E0E348F389C2F1D004203031400412B0E45552E8F139C280B820220822C1645477590201C282FC485525579170A91052EDF85023703E59F8905420F';
wwv_flow_api.g_varchar2_table(42) := '0FBF8A140404138B1379356D620D562592854257A21F64BA74891021872282061115694291E21D7B046EE853F4E08E988F3968BDA3A4C05DA373F5D46DD992D2518120DD9615CAC3E3CA86888D4838DB080213002356CED83100E9412F5D245EDCF855C4';
wwv_flow_api.g_varchar2_table(43) := '4A502FDA329288C50908000512B07031656ED08DAA83164C7BD70C05AC91840A909089B6ADDBB77004E3360A040021F9040005000D002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840A40380293893828280F99830505';
wwv_flow_api.g_varchar2_table(44) := '83049C1C83241C14901D37374282A4284182402C062190139C2F1D00420303AA242132756C988E0F9C280B820220821CC533B88F021C282FAA8538751F09D090052EDB863841E19F8805342424C889140404138B0B44071E2648408AB12834147DD8B0A6';
wwv_flow_api.g_varchar2_table(45) := '8D4124FE96054CE460CC98300E6D289277A39E221247BE7C99630387BA420A14A46334AE97210A6F2E987C5420483617868EB8C132E7D52312CB2C820828800B0F343EE82878A42C5B40122FBEB0018084078F2B584E3C0241E0060958283C9029A0E04B';
wwv_flow_api.g_varchar2_table(46) := '99A75E22891274030591AD006878C0A264C0275D17148880E270F55301120B467EDCCBB7AFDFBF9002010021F9040005000E002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928402130B0593893828280B99839883049C1C';
wwv_flow_api.g_varchar2_table(47) := '83142E911D04374282A3284182132F283890139C2F1D0042030314BC9C2D2F900B9C9D820220B2282D6A4090051C282FC085422D5328A18F052ED68642979F8BA71DDC88140404138B422B454E361FAD89AF28348A31070D15151E5B14DDCB97E8C29783';
wwv_flow_api.g_varchar2_table(48) := '0763285277A39D22214424DCB9E30015394220327673B1CB908B156C3A760B42CD22211B19343430D988C431874F4A29E08245059E0322193DC8950F880A3401ABF8C082018F974720569110F442C58E31054078188A61848068835AF8D841069310083E';
wwv_flow_api.g_varchar2_table(49) := '52FCF8F4E28A8E22A6D884FC44E148959C1708E3CA9D4BB72EA4400021F9040005000F002C00000000200020000007FF800082838485868788898A8B8C8D8E8F90919284052424938A3828280B9888049B1C831D1D910A1C044282A0284182132F2F978F';
wwv_flow_api.g_varchar2_table(50) := '0F9B2FA54203031400429BAD900BBF9D000220AFBFAA8F051C282FBC85BE283892052ED08614349E8C0A14C78B140404138B1D532B1F2B528BAC28DB892C554548483FF09FBFF887530CFE0C365C281277A3DCC037486C1061C7AD9000050296B9286588';
wwv_flow_api.g_varchar2_table(51) := '460C190A221508E24C60A11F4D2220D8C788C4AF72025AB802214603142A792836AAE56C5B0E39580C0070204243122A2B1E812070E31205153AE01829004242CF24260A40920A80048CA461A4BAF020228A054F6D92FE1844C100464F138EFC90D9B0AD';
wwv_flow_api.g_varchar2_table(52) := 'DBB77004E3460A040021F90400050010002C00000000200020000007FF800082838485868788898A8B8C8D8E8F90919284052424938A1328280B9888049B1C832020910A1C044282A02841820F2F0334900F9B2F1D0042033714B99B2838900BBF9D0002';
wwv_flow_api.g_varchar2_table(53) := '02829A9BAA8F051C282FBD85429BC191052ED28614B39E8B0220058C14040413DF2F6A092CCC89AC28DD883775431717278BEFF1875216FE16061651E070E39CA20E0666BC8971C95B2101E29AB9C06588860C35A520150802CD85212F63DA54D1D688C4';
wwv_flow_api.g_varchar2_table(54) := 'AF73029E000100E24B042E71AA2878540BDA2C043C44E0FB4025029838311E812070E312053C56CA6C2800228F129F39223A8A280443D236E268DCA1D2E58DA71156789418D421CD94999826D87080D6A1DBB77005E3CA9514080021F90400050011002C';
wwv_flow_api.g_varchar2_table(55) := '00000000200020000007FF800082838485868788898A8B8C8D8E8F90919284052442938A0F28280B9888049B1C832005910A1C049700A02841820F2F371D909A282FB34203371400429B280F900BBF9D0002028213BFAA8E051CB6BC85422F283892052E';
wwv_flow_api.g_varchar2_table(56) := 'D1861D349E8C05A58C140404138B0540030340C88AAC28DD890F4F2D6969D6EEBFF1884132FE32AE1451E070C39C22102D4E9C9002C29B217090B0CDDAC6E249C3884150480961E802040F1F263A72B1E9C81C632150183BD0A6069D0F171B697A83C50B';
wwv_flow_api.g_varchar2_table(57) := '00273EF0180030244E9B1173123C02F1420C03011492D88161C25895303F7F4012500C07163B3EDA20A3E0C4489B189816A8C0AA5590828D3123515062C7CD1D8785102EE0A192066EA10724ECEADDCB9750200021F90400050012002C00000000200020';
wwv_flow_api.g_varchar2_table(58) := '000007FF800082838485868788898A8B8C8D8E8F9091928405242E938A0F2828249888049B1C830205910A1C044282A02841820F030420909A282F1D0042033714B99B280B900BBFC100A48213BFAA8F051CB6BD85422F283892052ED0861D349E8CA58D';
wwv_flow_api.g_varchar2_table(59) := '140404138B0540BBD58BAC28DC89C3BFD99FBFED88EF9BF187141C37E48A05412F06A4EB46F05A10018640A0B8811052B322587E1892C1C0C6160590842030B30382B1342F8C39A970E7089B868D6658E901670680221994240060600EC93C2D1EA5C9E0';
wwv_flow_api.g_varchar2_table(60) := '268F800E4B52E0B963CCCB1C0F12D84022F14010092629447C29D5C182893B52303D8D5AE39B801BAE30B9689222830982853C447D8396D082126F0830B69D4BB7AEA0400021F90400050013002C00000000200020000007FF800082838485868788898A';
wwv_flow_api.g_varchar2_table(61) := '8B8C8D8E8F9091928405422E938A0F2828249888049B1C8305920A1C044282A02841820F031C02909A282F1D0042033714B89B28A98F0BBE0B8202A40013BEBC8F051CB5CB84422F283892052ED0851D349E8CC78C140404138B0540BAC48BAB28DC89C2';
wwv_flow_api.g_varchar2_table(62) := '9BB6EABEED8842BEF18A141C37E48A0538043800EB4610480919B20A090882E39BA309497AC829612884831569123AAAB243079C3900043CB92168868D121F5A4032A1234B991500883419C302801A0436887C78F0A88586144E047418136589130005EA';
wwv_flow_api.g_varchar2_table(63) := 'E0240204929074429644A1728014882D3F0C80C014358A920ADF6E79A241C6EB1D8285EE78AD839610890F7508B6B69D4BB7AEA0400021F90400050014002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F';
wwv_flow_api.g_varchar2_table(64) := '2828249888049B1C8305920A1C044282A02841820B374102909A282F1D0042033714B89B28A98F0BBE0B8202A40013BEBC8F051CB5CB84422F283892052ED0851D349E8CC78C140404138B0540BA9D8BAB28DC89C29B03B28AEBED8842BEF18B141C37E4';
wwv_flow_api.g_varchar2_table(65) := '8A05380870A8D7AD1B0E0727E415227129D20425597858307443068B20DF1A1D8123A74C0500055EB4027062C59629231D799063C6CD10005EB8D47802408A85156CD48078F4040A9E220214ACE962A404C8295E569CD8F9480831002EC2748973849480';
wwv_flow_api.g_varchar2_table(66) := '1709AA617211A74B983C19BBD110E3D546C14247BC1A381BED8201A66C06E3CA9D0B20100021F90400050015002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C8305920A1C044282A0';
wwv_flow_api.g_varchar2_table(67) := '2841820B3740A48F9A282F1D0042033714B89B28BC8F0BBE0B8202B213BEC08E051CB5CA83422F283892052ECF841D349E8CB28C140404138B0540BAA98BAB28DB8924BE37DE88036A09319D8942EFF1872D614D26B71215C0412008BB451D84ECE34608';
wwv_flow_api.g_varchar2_table(68) := '079121200EB9B814294817336E1C18A215EB11893065AEF89000A000016A0050849082E2C1230721DDA85801E0420D0903000439B192C0230976DCA4C823408189352668A6E429CA919408518ADCA251630D1D8D2581005100C9C538413420AC99438421';
wwv_flow_api.g_varchar2_table(69) := '210A73D67CB160969003B56A0DDA0EA220838500B978F3E60D040021F90400050016002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C8305920A1C044282A02841820B3740A48F9A28';
wwv_flow_api.g_varchar2_table(70) := '2F1D0042033714B89B28BC8F0BBE0B8202B213BEC08E051CB5CA83422F283892052ECF841D349E8CB28CB937138B0540BA978A42604A3512378A24BE048B24293D3D3B1FE8F18C174C2935D80A15C0412048C0431D5C78E36668828518200EB9380709C8';
wwv_flow_api.g_varchar2_table(71) := '181F2AF215828722D623216D7CA410910700396200800C7BE404C6482875006C9150A5154714A21A81E0922243140705403068E0E484A009D21E3C629041839388142434C8135310058A8D28C838A1C0EA9D060886302404220FD82D63091938E024675A';
wwv_flow_api.g_varchar2_table(72) := '931C07A8BD9D4B976E200021F90400050017002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C9E000A41044282A028418224044005909A282F1D0042033714B79B28BB8F0BBD0B8202';
wwv_flow_api.g_varchar2_table(73) := 'B10013BDBF8E051CB4CA83422F283892052ECF841D349142A88DC68C2B18306B9D890540B9DB8A42183BEF6F8A24BD048B241959597033ECBDA28B439A889883AD50011C0482143CA4C005B851861ECC3000E21085858B70B41101E5822112D2603D1202';
wwv_flow_api.g_varchar2_table(74) := '010F132A555A5D020044D8A32A269570310040CD8F21C384F402E208441B264DBACC28208048911952043D78F1C25B23274D2210A948C346910F2C06755000A9C314355C01742852C48B1A8884047C286201055A42380D2E2458F756D0C3BA78F3D60D04';
wwv_flow_api.g_varchar2_table(75) := '0021F90400050018002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C9E000A41044282A028418224044005909A282F1D0042033714B79B28BB8F0BBD0B8202B10013BDBF8E051CB4CA';
wwv_flow_api.g_varchar2_table(76) := '83422F283892052ECF841D34912EA88DC68C432218239D8905400304D8864278567070178A24BDA28A42516666656FF8F68C627449E2811D251C04821834A48006B85186165C4820E01085858A26CC51C2858D2112D280407251810A99385E04D1502008';
wwv_flow_api.g_varchar2_table(77) := '482F6F8D1C2C211366841A005262A4D925A4D7044720E6D05C13A380802143D45003F0E0C5008C86888469F3A662871943A6DC2305025287102D8C81B83024C1568882580C39310CED2005370A7EBA9D4BB7AE5D4381000021F90400050019002C000000';
wwv_flow_api.g_varchar2_table(78) := '00200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C9E000A41044282A02841822404400590322D282F1D0042033714B89B28BC8F3910B40B8202B10013BEC08E40505F4FCC83422F283892380EC587';
wwv_flow_api.g_varchar2_table(79) := '1D348F052E2442028DC88A245F1A19221BA88905400304B7895E76763C3C650EE7BEA28933DC0814E84591105FAC1291A0D304CA920697DEE178A56051251211472122C12604394314A4395A70204E8D048648540302890682381BE8D411A400842020BE';
wwv_flow_api.g_varchar2_table(80) := 'DC357A6364C31C094F00047932E0D6C14DDB180990B0E14B8513000AB0A0C512C00379151DCD70CA869C0035B4FE01380649819417C80AA4A1AAB11090272F0D44B6A590B5ADDDBB78F32A0A040021F9040005001A002C00000000200020000007FF8000';
wwv_flow_api.g_varchar2_table(81) := '82838485868788898A8B8C8D8E8F9091928405422E938A0F28282498831D0583049B1C9E00694D3F4282A3284182240440A18F733D29061D0042033714BB9B28BF8F123B3D460F8202B413C1C38E38493B654F86422F283892383F6CB4851D348F053496';
wwv_flow_api.g_varchar2_table(82) := '028DDF892C1B4D4C495F9D8905400304BA88204658FB3030488A2482BDC2B7218341830E1409090644518B0D64C88C61100F51011CB2402C022144883853895C2478926E1085678F48389973A7852112D81A3EA25085CE813C090481D0080047B08F8DD8';
wwv_flow_api.g_varchar2_table(83) := '983880E0C70D003007E85AB869C123220718207109A095CC05F578365293A7889A50056E6C1A08A0404946139289DAA40D24215E040D14B82D6476AEDDBB78F31E0A040021F9040005001B002C00000000200020000007FF800082838485868788898A8B';
wwv_flow_api.g_varchar2_table(84) := '8C8D8E8F9091928405422E938A0F2828249883144283049B1C9E002D4D294582A328418224044005901E593A56060042033714BB9B28BF8F0C705A3B128202B40013C1C38E385470671786422F28389213255BCC851D348F05344234E08AE9886973644B';
wwv_flow_api.g_varchar2_table(85) := '111EA189054003041D89203551511A1A7888282211EC152201749A2854384391906040144931D1A6CD081BF31015C0210BC422102E5C40337588469A1BEB045118E9C885853C3F6E1822912DE223106F8E54F9804210088F0070041BE70885932A5E623C';
wwv_flow_api.g_varchar2_table(86) := '00407340BE879B3A15AD62E1C200569B6C2EB807B49182136C640228706393C1B129190920C461D30292850E2870E0D015AEDDBB78F3EA5D14080021F9040005001C002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405';
wwv_flow_api.g_varchar2_table(87) := '422E938A0F2828249883344283049B1C9E002D50195582A3284182240440059007665665320042033714BB9B28BF8F473C6756398202B40013C1C38E13643C767586422F283892135E32CC851D348F05142E34E08AE988520762617139E389054003040A';
wwv_flow_api.g_varchar2_table(88) := '8902155D5D114B4B2E2822110C88BE3B6312261CA24848414503189830D1C0C13C440570C802B14800051A1D4C29EAF0C2E0210AD01E5188E185CD034324B2997C74E2439D29DB0080E00800C7B3472456D439F1645CCC01211D6EBAE4C8051B19695E02';
wwv_flow_api.g_varchar2_table(89) := '686572C18D200220D9EB04A0C08D4DAF04AD9B1464D30291851404993016ADDBB77005E3CA4514080021F9040005001D002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840F172E93840B13845F4D522498005349782582';
wwv_flow_api.g_varchar2_table(90) := '142A4A521CA1156E576E4400141964284182240440058F4E306E766806004E6D3714004228CCC98E0F6130683C158213BD0013CC28CE8E37D13E1686422F2838920F1F1702871D3490EE14D88BF3892F477310104EEF890540030828482420CF9A366DC4';
wwv_flow_api.g_varchar2_table(91) := '1861A388C43620FE907C99389158A265CC2026E2500501022717BA1D2A8063178845023A5018184A91021C42105110E9084488044F2E1522514EE3A317539EA0D80400C4490038B6D1741942E88B773C077450B64D67A3020350BC0005804046410B6EE0';
wwv_flow_api.g_varchar2_table(92) := 'A8C748C102AB3798E11244761210660B0F5A1A1230E19ADCBB78F3EADD8B29100021F9040005001E002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840B45330A938242172184743B3A479902071822168214783B3D2699';
wwv_flow_api.g_varchar2_table(93) := '345C19292A0E00141AAC4482240440058F0C1A1958183200363C5828004228CE148F131B1A2A301282040F8213CE28D08F1C231A223386422F283892242B3102871D34900A141DBF8CF78A421639121225DF101500328000A644431A54F0E0C144024524';
wwv_flow_api.g_varchar2_table(94) := 'BA0151148381458B2CF44954E4828D03071F4E74505400472F108C1428409969910017230F5108F8A80007142F5C1822816E22246ECE260802C11247379A8C08387B218FE78091CD9E410282930436673E17DC5007A9808B83006E380B32285F4BA328AC';
wwv_flow_api.g_varchar2_table(95) := 'B63424E081DAB57007E3CA9D4B576E20003B000000000000000000';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(33721656263681727473)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_file_name=>'t2loading.gif'
,p_mime_type=>'image/gif'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000620000008208030000008A3FEDBE000000D2504C5445FFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000006666664E4F504A4A4A2929';
wwv_flow_api.g_varchar2_table(2) := '2919191A101010080808EFEFEF5A5A5A6B6B6B87898B7F80817B7B7B7677787373736E6F71EAEAEBEAEBEBE6E6E7525252DEDEDF4546474242423A3A3A2D2D2E212121BDBDBDCFD0D2333333C5C5C6D2D3D4ADAFB1A7A8A9A5A5A69999998F90928B8B8B';
wwv_flow_api.g_varchar2_table(3) := 'E2E3E4838384CCCCCCC1C3C4DADBDCB7B9BBD6D6D7B4B5B5F7F7F7FFFFFFE0E1E2D8D9DAC7C8CAA9ABAD939394ADADADA0A2A4A1BA27710000000F74524E5300112233445566778899AABBCCDDEE462AF5990000052F49444154785EEDDA5797B2380080';
wwv_flow_api.g_varchar2_table(4) := 'E1D00795848EBDF73ABDCFD776F7FFFFA50DC62102A36008672F76DE9BB970F43111029E0854703A4956AE20CAA8A6C9B2044EA7822A389FA09D05A00232AA0224838CD4734310B20419016464FE171D8747003F1A83982508060279DE491591AC8E1B0A';
wwv_flow_api.g_varchar2_table(5) := 'A3A68B485AA650432181A09A412844703BED3636EAF7F71D22C02C4185881018A968F1A4B88148F376ABED8E9ACD9E47884A1C90B478150C44443A4339260C6AB41E1F1BFE57F3A418281D214EA5273F0C62B4DB2616D2848E507E821A6962D2E974BA6E';
wwv_flow_api.g_varchar2_table(6) := '8220020B81941431E9F5CC6EB7E1A60805B111469298361A75DFC18C97240C46024971C233CD918F90D3685884880E7609B1126AE2FC5E5858C00686F689748D6124E84488E8ABE80AAA1527C0D55784CC9500B513D3C89110F4040055C089A0C9956340';
wwv_flow_api.g_varchar2_table(7) := '1701478226C987E8EBF32668EC84B3E0412C16A789756FC683589BF334112D419C0873FA25E14F4D7E0436D2846FE1071A6B1EC4DCC4597E92F0ED7A4898B3309795F09C39AE6E868DFC38E159754C60A3D1EB76BB33566256DF6712C3A30411A8C14E4C';
wwv_flow_api.g_varchar2_table(8) := '47D4C0799470ED1125B0C13E8A51CA20846B59A398518048180E215CDBC604C109B22E4E502324D698881BEC84450C8A4CF6843F4B1A05888461F921418C882F4A500337F5A383766E1FF145083B342264460F5A6A90E6ACC4DAA60611288116C786CB4A';
wwv_flow_api.g_varchar2_table(9) := 'B83631F6C822B90CBA7B7FCE65A5DD238BF462EE4EB0E1F0201C3C10DB43690279139B136147424450830BB1B0A7444813C89FF121663E4A12D4F07910FE7F771F553EF14D7C136A5E426526C4BC84C84A5441EEAA8C84949F90D808155C90CA404022E4';
wwv_flow_api.g_varchar2_table(10) := '37606E827EE9BD305187E7888A26C7920053921C4BAB4444550425255609A18312D343A20A4AAD8A09B15C4244400725A703A56C42015AD984068CB20903A09287A12180A054A620414C20A8942728F0B046554A42E4CAF14A5B8DA7319C90A2568D9775';
wwv_flow_api.g_varchar2_table(11) := 'BDD085CB0041BFFCAA57BBC8106A28836036A8C0425C72C668888D80F909C8482039AF207FDF991720BE896FC2BB337910E6DD49C25B0E3A3C88EEE0D98B1354E8F3213A83801849C2791BF6033E4410049B799A70B6C3E12068F2201E83E0E363384F12';
wwv_flow_api.g_varchar2_table(12) := '93D5C3B03F0882F7D7E57269B11293EB3F7FEF7641487CF4A77162F4327E180EFB980F6BB312D7E18B0C08F1E347FD98A8FF7A19FF24C3E0476083128F6F94087811D8F8B8FF245ADBB7B797F1F88118B80E3B11BD4FD22D21BA4FABED6118D8181422C2';
wwv_flow_api.g_varchar2_table(13) := 'A98819CD63E2606064D06527C84C45464008D45A916160638FF48B10641887B0400854C7C4C1089121337143662232EAF4A0B5881122A1528820C680089440D3CDC1D8D763256EA3C9C6C838B145E2EC8D5F4F37B85B8795706E6FAEAFAFDF8621F2324F';
wwv_flow_api.g_varchar2_table(14) := '2D83CF5B8C34782C83AD70204B27BD987BD7ABED960BD1C393F51ADF22A1C68A0F31FEF97A6A8BA4B532F910F7A7EF40BA160F62D4FEBFDDAAE972CEF402A390D41ACA485784A213A5C073404DE2F15948F08C20F0F9B8E508700930FF140C81D7115541';
wwv_flow_api.g_varchar2_table(15) := 'A4F6B3130A7FF5477483A32021C77FDBB8D83C6DB071377C7827022CFEA55848FCD8D5FE8D8DE678FC9EFCB1ABC04AE8E0B31A35F0F571E7A54E4D9D8D80427C938518BF9FF0185284005908288134D1593E6F36769A0012BC9CA8518112BDF7D7DBDD72';
wwv_flow_api.g_varchar2_table(16) := '39A104356A971186AE508012E69FDD9DBFF8F3FE3EA5044DD18DD384A18A7936BC16FFDC347DFCE766779F6BB749548D4F42CBBB58CF5AFE9E6AFB79F7FD3442A8203301B2EEFBA921A1315F73A47CCF048600F2A4B3EEFB09105C817C5D2500A8E47D22';
wwv_flow_api.g_varchar2_table(17) := '9041CE641D52C0D084DCCFFB17EA19E02C7345FE160000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(33721656960230729096)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_file_name=>'t3controls.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '47494638396120002000F60000000000E2E2E20303032323232020200101013C3C3C7070706767673737370707071313136868687171715353531515157E7E7E9999996E6E6E1717170A0A0A737373515151474747B1B1B1AEAEAEA9A9A98383831E1E1E';
wwv_flow_api.g_varchar2_table(2) := '0808087575754E4E4E050505303030ACACAC818181111111555555777777383838272727B3B3B3B0B0B04848483131312C2C2C0E0E0E252525B7B7B74141413A3A3A4C4C4C0C0C0C8080806060602121211818186A6A6AD1D1D1D3D3D3C1C1C1D5D5D5B9';
wwv_flow_api.g_varchar2_table(3) := 'B9B95858581A1A1A1C1C1C1010104545455757575C5C5C8A8A8A6363635E5E5EA3A3A39E9E9E9A9A9AA5A5A5A0A0A06161612A2A2AA1A1A1A7A7A72828283535359C9C9C5A5A5ACACACABEBEBEB5B5B5CECECED0D0D03E3E3E9191919797975050507C7C';
wwv_flow_api.g_varchar2_table(4) := '7C9393938E8E8E898989909090959595C3C3C3C5C5C5C7C7C7BCBCBC2E2E2E333333858585404040878787BABABA4A4A4ACCCCCC8C8C8CC9C9C97A7A7A797979434343C0C0C06C6C6CAAAAAA656565D7D7D700000000000000000000000000000021FE1A';
wwv_flow_api.g_varchar2_table(5) := '43726561746564207769746820616A61786C6F61642E696E666F0021F904000500000021FF0B4E45545343415045322E3003010000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840B39363493820F17218305353A3B';
wwv_flow_api.g_varchar2_table(6) := '12990A101822168214223B3D359E900B111918190E00141AAD3F820B3740028E02121A1929183200363C3E28004228D12E8F131B1A2A30A300041C8213D12814901C231A223386422F283892242B31C1861D988F0A141D058DFA8B02060C1224941097A8';
wwv_flow_api.g_varchar2_table(7) := '0090010408221A70A041050F2658282201AE5B220208186844D04211B46816111548E0C0C28713201415C0412088C2440A14A4CCD4CF450744145E3A2AC001C58B698548AC0312E95BB4098240CCC4014EE72202D15E60123AE0E64714401D3DF0494210';
wwv_flow_api.g_varchar2_table(8) := '54144401F80A22EF110505836E440B028BA620A62810BABA2D246082DCB978F3EADDCB7752200021F90400050001002C00000000200020000007FF800082838485868788898A8B8C8D8E870F138F8E172A585B938B0A1156595C0599830B312D831D4C9D';
wwv_flow_api.g_varchar2_table(9) := '510AA100200D494A338214A85A512082A08F24464A4C50B20A54565A5DA00B3740BA8C05474B4D514C530055573C5E004228DB2E8F0B264B501A088252A50013DB281493401E4B4A1786422F2838A1423132CB841D3493203AAC6AC42F510B224590AC18';
wwv_flow_api.g_varchar2_table(10) := '88A800900104D825A2E020A10D2752149150C74111882116425AB8A148DBB68E8A80243020E3890045057010082271918082AC1ABAE8808842CD470582A078D1AD10897A40323D5027A9152E0038D4FD64C461DB8B7F4707F03489A2A8A3A32F480822B0';
wwv_flow_api.g_varchar2_table(11) := '2D290064415E4E1238E8C6B620831570864A874248CE860BBCDEDDCBB7AFDFBF800705020021F90400050002002C00000000200020000007FF800082838485868788898A8B8C8D8E86244E3F148F8D123C650C958B1D4B3C664A209B8342322883344D3C';
wwv_flow_api.g_varchar2_table(12) := '674C0AA3002008606343821D54AB50A2001D952E5F61646017B064AB5C050A123340058E054462635D5D2C003F3E681F0036622D282E8F240C625C1148000221218255532828948F1308D23186402F2838A32E2753CE0C75A0B109C42E4601179190B162';
wwv_flow_api.g_varchar2_table(13) := 'C59483870A001940405E2216432EAC98C141110978283A2A7A72A2E4097E898480149988C200142F9A292A808340108B335F3D73D1EB10059CCF82C00C5788843E209B16809C20C8A0201C20812E120A93A0D101BD54C223EAC8C58017240411808714C0';
wwv_flow_api.g_varchar2_table(14) := '821B4104143C7883ECA0843A13014C8027246EC4055CEDEADDCBB7AFDFBD81000021F90400050003002C00000000200020000007FF800082838485868788898A8B8C8D8E8624550E148F8D08583E47958B0A63586E5D209B8305374183146458684A0AA3';
wwv_flow_api.g_varchar2_table(15) := '822B5F105B821D5CAB11A2000F1D8F05365F1B1B6C002046AB46050A0D6E11388F171E5F6B6D2D000E19186F00485A3D70538F2E3F1E10620E00052D69826D3D654734950B44E52786475844CF9B142169050C090022AF5201018E023202F182C5141408';
wwv_flow_api.g_varchar2_table(16) := '131500328000254538D68550B34011091420392C9A0012A40B45424A8A542400C78D1B131615C04120C84599AF12BAE87588C24D5F4150BC385988C40B1440367D0419B358441C257F322229549ED11BBD529AAC4461C000128208804C0A6081A9888F04';
wwv_flow_api.g_varchar2_table(17) := 'A0BD3196544E42541085BC3D546001D1B978F3EADDCB576F200021F90400050004002C00000000200020000007FF800082838485868788898A8B8C8D8E864216431D8F8D48512245958B0A6B511971209B84200A831D621A1960A6A3000F444E6A829D1A';
wwv_flow_api.g_varchar2_table(18) := '2A63A2000B2E950908070D090020101A1823000A12294A1C8F4F360C0D1E280033505143005572593A3F8F1D174E391E2B0005524F8223DE3A17952EE3392C8636703B61149B1D282F87200CBC11E2AA510183136EDCC0B1A800900104F6297281A2220A';
wwv_flow_api.g_varchar2_table(19) := '1A8A48587436D1E24545423636C4A170C248024124362C68D005A54314543E2A10C41FAF42245EA000B249634593C30408C2615126A309155F60CC798352C88A371D292030808420021579EABA014468A5020705DDC83A282C4B004851103C5BA80089A8';
wwv_flow_api.g_varchar2_table(20) := '6C08E3CA9D4BB7EEA8400021F90400050005002C00000000200020000007FF800082838485868788898A8B8C8D8E862E2B6C0A8F8D25115433958B2026114D23029B891D739F622082202F0F954F6C28820A7411506BA20B5F6E51528E135E3F48690002';
wwv_flow_api.g_varchar2_table(21) := '0D114974000A5F6567724EBE2B16454E04007560116C003F76CE56758E20536F0E365B00052FB1024666727046148F146A6F25BD8547F046249B2041821CA2F0C68290518D405028D08804010213161568D18240874514506844414311898D1C306EE4A8';
wwv_flow_api.g_varchar2_table(22) := '480848460F6EDC88A8A8000E02402E326288B0510117320D5198B7A94010142F5C1822B10EC8A68F1A5982100500C7469E8E1E687CD191E88D8B26350A7D0482C0007F000868340A60C10D204C2BD1047063ECA0B53514014CD07830AEA10224B6DADDCB';
wwv_flow_api.g_varchar2_table(23) := 'B7AFDFBF7D03010021F90400050006002C00000000200020000007FF800082838485868788898A8B8C8D8E860503038F8E6C236D32948B200C6D6307059A890A779E5F2082203243148F24280FA99D5C740200241E296E478E0A6A31179302476D5C1200';
wwv_flow_api.g_varchar2_table(24) := '0A1530687663B68C1D21AB333800322346990E29CC3C3F8F1C2C062B210005379305236E76651BAD8E20042C5B1C864557656B249A05240B87285CF8E04254231038F831224180C0844513C0D8C960609182172832D25084E4CC151F6D508DC2A8511101';
wwv_flow_api.g_varchar2_table(25) := '360958DC60B4E0C68D878A0AE020004481C19B880AB8E88088023C4A0582A07851B010098C4034BDCA0813C4331C1951FC6CF420E38B8D476FF01412B5683C02371412C89814404B20CF800EBA417650289C821126641402171209AF75F3EADDCBB7AFA8';
wwv_flow_api.g_varchar2_table(26) := '400021F90400050007002C00000000200020000007FF800082838485868788898A8B8C8D8E8720028F8E41453F40938C1F155F1F998A023F15100C920002096C1D8F054234820244A3079242775119488F414F213800050E153547052039782A2962A68B';
wwv_flow_api.g_varchar2_table(27) := '022F282D5324002177742D0033B829580E8F402852213782139805741929305FAB8E201CE20B8644293E104299ADAF861D752B5C7C6A0462823E4642081098B0684218371A642C02010D058A7E88F2E8D8984481228A162F2A3AD2A36413108B16DCB8C1';
wwv_flow_api.g_varchar2_table(28) := '50D1030F54A8841808AA59A3022EDE19A240E1538120285E082C44021AA6492442B68C240847C89E8F1E587CF1AAE88D5542420E8547E0063500042C1E5509A480CF4137C40E324B73D0048B070FDB162A4062ABDCBB78F3EADD8B37100021F904000500';
wwv_flow_api.g_varchar2_table(29) := '08002C00000000200020000007FF800082838485868788898A8B8C8D8E8F90870A69210A918B53480C32978905439A3F0582022C321D901D9600021748393602002E47114D258F132F03420005754877B8204E54504C10B28C053728282F14002F3F082F';
wwv_flow_api.g_varchar2_table(30) := '00435D4D4C1A338F40CE280F8224E20512DA7815A88E201CCF2E865E4C781EF090052ED1861D5B75349D8C404CE8C54808010213163D688381099B45020680FB97C8861C2B569480501471A2221B59426A5C64F04642450FC48858F210E0A102149439C2';
wwv_flow_api.g_varchar2_table(31) := 'B7CE10057DF782BC3344E2050A209148803B0942190E70381B3D70F6E25FCF1BA88480B3C78EC00D12820838030A60C10D1CA3228505D0ECE7A0B12E273823E8B2500112540ADBCA9D4BB7AEDDB981000021F90400050009002C00000000200020000007';
wwv_flow_api.g_varchar2_table(32) := 'FF800082838485868788898A8B8C8D8E8F9088240B918C1C433337958A2C170E4383022F6A0A90202082059D251F050034446D631F8F242F03428269174417000225465C5D0DAE8D1C28282F14004075161C0006B25D4BBE8E38C9280F823424824E635D';
wwv_flow_api.g_varchar2_table(33) := '5439A58E20C82F34861764E4EB90052ECC860A275BF09B8A020F4142C689841020306111901A1A5424F992CF908001DA1A1ABA63A7228F2B32121580984C62210466429AB16340910B02370A2A7AB0210A13264E04E83354A083CD47F23A2062314467BC';
wwv_flow_api.g_varchar2_table(34) := '20CA5C182291E04B1BA1B5B4A90421134036290E50407A904C1D005B37740AD196EB110894DF0010480644D0821B3800E21C7483EC20B5FA132624EB3AB350011248EBEADDCBB7AF5FBE81000021F9040005000A002C00000000200020000007FF800082';
wwv_flow_api.g_varchar2_table(35) := '838485868788898A8B8C8D8E8F90882002918C424F2C24958A0469322C83051C409120058337690632821D6F1E262D8F422F3742829D5B5300052B26106B0E8F1C28282F1400422D0613006A15C0625B8F38C5280F820A34820E5F6B46480A8F20C42FDB';
wwv_flow_api.g_varchar2_table(36) := '855B1B7136E78F052EC886202C27F19B8A020B4040F6884204049A29E230874A12266250241230C05ABB433952A4C04211C22944041C2ABAE3A66347088A5C10B82130110E084A94509943E09EA1021D625E64F4AEC321104386D8845420883117861C68';
wwv_flow_api.g_varchar2_table(37) := 'D13206E82312D6044E1294068A1E1D31203D28660E00895A368518C0A387082410233501C88882148005322A947487AA98595E2E14074D28762B6EA102248CDADDCBB7AFDFBF9B02010021F9040005000B002C00000000200020000007FF800082838485';
wwv_flow_api.g_varchar2_table(38) := '868788898A8B8C8D8E8F908805918D1437040A948A1C28281C8420939005A200049D2F820A094417998E3437374282A75203000532473907288F41A814004203282E0052360C0D0D9F8E389D280B8220AF75CC265EA58C209C2FC3856A07740E1D91052E';
wwv_flow_api.g_varchar2_table(39) := 'E185204F21E79A8B02243838EB882E0404138B40076364BA40C095E854271A8A8E3089C2508307450651204C942783458B0F13512070839FA2091EC8800153E1593C42053A7478D5281DBC420262C478E9A840B017C80A31B022C7484E4724A479042140';
wwv_flow_api.g_varchar2_table(40) := '50981D5AACB081F4001542122F6E9C43A203A90348203892A8D5090800050DDC88F1386AD08DAE831E143D096042275A6C0E0B1520F133AEDDBB78F3EAA514080021F9040005000C002C00000000200020000007FF800082838485868788898A8B8C8D8E';
wwv_flow_api.g_varchar2_table(41) := '8F909192840A40400293894028280F9983050583049C1C8205035304901D37374282A42841824F330E0E348F389C2F1D004203031400412B0E45552E8F139C280B820220822C1645477590201C282FC485525579170A91052EDF85023703E59F8905420F';
wwv_flow_api.g_varchar2_table(42) := '0FBF8A140404138B1379356D620D562592854257A21F64BA74891021872282061115694291E21D7B046EE853F4E08E988F3968BDA3A4C05DA373F5D46DD992D2518120DD9615CAC3E3CA86888D4838DB080213002356CED83100E9412F5D245EDCF855C4';
wwv_flow_api.g_varchar2_table(43) := '4A502FDA329288C50908000512B07031656ED08DAA83164C7BD70C05AC91840A909089B6ADDBB77004E3360A040021F9040005000D002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840A40380293893828280F99830505';
wwv_flow_api.g_varchar2_table(44) := '83049C1C83241C14901D37374282A4284182402C062190139C2F1D00420303AA242132756C988E0F9C280B820220821CC533B88F021C282FAA8538751F09D090052EDB863841E19F8805342424C889140404138B0B44071E2648408AB12834147DD8B0A6';
wwv_flow_api.g_varchar2_table(45) := '8D4124FE96054CE460CC98300E6D289277A39E221247BE7C99630387BA420A14A46334AE97210A6F2E987C5420483617868EB8C132E7D52312CB2C820828800B0F343EE82878A42C5B40122FBEB0018084078F2B584E3C0241E0060958283C9029A0E04B';
wwv_flow_api.g_varchar2_table(46) := '99A75E22891274030591AD006878C0A264C0275D17148880E270F55301120B467EDCCBB7AFDFBF9002010021F9040005000E002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928402130B0593893828280B99839883049C1C';
wwv_flow_api.g_varchar2_table(47) := '83142E911D04374282A3284182132F283890139C2F1D0042030314BC9C2D2F900B9C9D820220B2282D6A4090051C282FC085422D5328A18F052ED68642979F8BA71DDC88140404138B422B454E361FAD89AF28348A31070D15151E5B14DDCB97E8C29783';
wwv_flow_api.g_varchar2_table(48) := '0763285277A39D22214424DCB9E30015394220327673B1CB908B156C3A760B42CD22211B19343430D988C431874F4A29E08245059E0322193DC8950F880A3401ABF8C082018F974720569110F442C58E31054078188A61848068835AF8D841069310083E';
wwv_flow_api.g_varchar2_table(49) := '52FCF8F4E28A8E22A6D884FC44E148959C1708E3CA9D4BB72EA4400021F9040005000F002C00000000200020000007FF800082838485868788898A8B8C8D8E8F90919284052424938A3828280B9888049B1C831D1D910A1C044282A0284182132F2F978F';
wwv_flow_api.g_varchar2_table(50) := '0F9B2FA54203031400429BAD900BBF9D000220AFBFAA8F051C282FBC85BE283892052ED08614349E8C0A14C78B140404138B1D532B1F2B528BAC28DB892C554548483FF09FBFF887530CFE0C365C281277A3DCC037486C1061C7AD9000050296B9286588';
wwv_flow_api.g_varchar2_table(51) := '460C190A221508E24C60A11F4D2220D8C788C4AF72025AB802214603142A792836AAE56C5B0E39580C0070204243122A2B1E812070E31205153AE01829004242CF24260A40920A80048CA461A4BAF020228A054F6D92FE1844C100464F138EFC90D9B0AD';
wwv_flow_api.g_varchar2_table(52) := 'DBB77004E3460A040021F90400050010002C00000000200020000007FF800082838485868788898A8B8C8D8E8F90919284052424938A1328280B9888049B1C832020910A1C044282A02841820F2F0334900F9B2F1D0042033714B99B2838900BBF9D0002';
wwv_flow_api.g_varchar2_table(53) := '02829A9BAA8F051C282FBD85429BC191052ED28614B39E8B0220058C14040413DF2F6A092CCC89AC28DD883775431717278BEFF1875216FE16061651E070E39CA20E0666BC8971C95B2101E29AB9C06588860C35A520150802CD85212F63DA54D1D688C4';
wwv_flow_api.g_varchar2_table(54) := 'AF73029E000100E24B042E71AA2878540BDA2C043C44E0FB4025029838311E812070E312053C56CA6C2800228F129F39223A8A280443D236E268DCA1D2E58DA71156789418D421CD94999826D87080D6A1DBB77005E3CA9514080021F90400050011002C';
wwv_flow_api.g_varchar2_table(55) := '00000000200020000007FF800082838485868788898A8B8C8D8E8F90919284052442938A0F28280B9888049B1C832005910A1C049700A02841820F2F371D909A282FB34203371400429B280F900BBF9D0002028213BFAA8E051CB6BC85422F283892052E';
wwv_flow_api.g_varchar2_table(56) := 'D1861D349E8C05A58C140404138B0540030340C88AAC28DD890F4F2D6969D6EEBFF1884132FE32AE1451E070C39C22102D4E9C9002C29B217090B0CDDAC6E249C3884150480961E802040F1F263A72B1E9C81C632150183BD0A6069D0F171B697A83C50B';
wwv_flow_api.g_varchar2_table(57) := '00273EF0180030244E9B1173123C02F1420C03011492D88161C25895303F7F4012500C07163B3EDA20A3E0C4489B189816A8C0AA5590828D3123515062C7CD1D8785102EE0A192066EA10724ECEADDCB9750200021F90400050012002C00000000200020';
wwv_flow_api.g_varchar2_table(58) := '000007FF800082838485868788898A8B8C8D8E8F9091928405242E938A0F2828249888049B1C830205910A1C044282A02841820F030420909A282F1D0042033714B99B280B900BBFC100A48213BFAA8F051CB6BD85422F283892052ED0861D349E8CA58D';
wwv_flow_api.g_varchar2_table(59) := '140404138B0540BBD58BAC28DC89C3BFD99FBFED88EF9BF187141C37E48A05412F06A4EB46F05A10018640A0B8811052B322587E1892C1C0C6160590842030B30382B1342F8C39A970E7089B868D6658E901670680221994240060600EC93C2D1EA5C9E0';
wwv_flow_api.g_varchar2_table(60) := '268F800E4B52E0B963CCCB1C0F12D84022F14010092629447C29D5C182893B52303D8D5AE39B801BAE30B9689222830982853C447D8396D082126F0830B69D4BB7AEA0400021F90400050013002C00000000200020000007FF800082838485868788898A';
wwv_flow_api.g_varchar2_table(61) := '8B8C8D8E8F9091928405422E938A0F2828249888049B1C8305920A1C044282A02841820F031C02909A282F1D0042033714B89B28A98F0BBE0B8202A40013BEBC8F051CB5CB84422F283892052ED0851D349E8CC78C140404138B0540BAC48BAB28DC89C2';
wwv_flow_api.g_varchar2_table(62) := '9BB6EABEED8842BEF18A141C37E48A0538043800EB4610480919B20A090882E39BA309497AC829612884831569123AAAB243079C3900043CB92168868D121F5A4032A1234B991500883419C302801A0436887C78F0A88586144E047418136589130005EA';
wwv_flow_api.g_varchar2_table(63) := 'E0240204929074429644A1728014882D3F0C80C014358A920ADF6E79A241C6EB1D8285EE78AD839610890F7508B6B69D4BB7AEA0400021F90400050014002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F';
wwv_flow_api.g_varchar2_table(64) := '2828249888049B1C8305920A1C044282A02841820B374102909A282F1D0042033714B89B28A98F0BBE0B8202A40013BEBC8F051CB5CB84422F283892052ED0851D349E8CC78C140404138B0540BA9D8BAB28DC89C29B03B28AEBED8842BEF18B141C37E4';
wwv_flow_api.g_varchar2_table(65) := '8A05380870A8D7AD1B0E0727E415227129D20425597858307443068B20DF1A1D8123A74C0500055EB4027062C59629231D799063C6CD10005EB8D47802408A85156CD48078F4040A9E220214ACE962A404C8295E569CD8F9480831002EC2748973849480';
wwv_flow_api.g_varchar2_table(66) := '1709AA617211A74B983C19BBD110E3D546C14247BC1A381BED8201A66C06E3CA9D0B20100021F90400050015002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C8305920A1C044282A0';
wwv_flow_api.g_varchar2_table(67) := '2841820B3740A48F9A282F1D0042033714B89B28BC8F0BBE0B8202B213BEC08E051CB5CA83422F283892052ECF841D349E8CB28C140404138B0540BAA98BAB28DB8924BE37DE88036A09319D8942EFF1872D614D26B71215C0412008BB451D84ECE34608';
wwv_flow_api.g_varchar2_table(68) := '079121200EB9B814294817336E1C18A215EB11893065AEF89000A000016A0050849082E2C1230721DDA85801E0420D0903000439B192C0230976DCA4C823408189352668A6E429CA919408518ADCA251630D1D8D2581005100C9C538413420AC99438421';
wwv_flow_api.g_varchar2_table(69) := '210A73D67CB160969003B56A0DDA0EA220838500B978F3E60D040021F90400050016002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C8305920A1C044282A02841820B3740A48F9A28';
wwv_flow_api.g_varchar2_table(70) := '2F1D0042033714B89B28BC8F0BBE0B8202B213BEC08E051CB5CA83422F283892052ECF841D349E8CB28CB937138B0540BA978A42604A3512378A24BE048B24293D3D3B1FE8F18C174C2935D80A15C0412048C0431D5C78E36668828518200EB9380709C8';
wwv_flow_api.g_varchar2_table(71) := '181F2AF215828722D623216D7CA410910700396200800C7BE404C6482875006C9150A5154714A21A81E0922243140705403068E0E484A009D21E3C629041839388142434C8135310058A8D28C838A1C0EA9D060886302404220FD82D63091938E024675A';
wwv_flow_api.g_varchar2_table(72) := '931C07A8BD9D4B976E200021F90400050017002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C9E000A41044282A028418224044005909A282F1D0042033714B79B28BB8F0BBD0B8202';
wwv_flow_api.g_varchar2_table(73) := 'B10013BDBF8E051CB4CA83422F283892052ECF841D349142A88DC68C2B18306B9D890540B9DB8A42183BEF6F8A24BD048B241959597033ECBDA28B439A889883AD50011C0482143CA4C005B851861ECC3000E21085858B70B41101E5822112D2603D1202';
wwv_flow_api.g_varchar2_table(74) := '010F132A555A5D020044D8A32A269570310040CD8F21C384F402E208441B264DBACC28208048911952043D78F1C25B23274D2210A948C346910F2C06755000A9C314355C01742852C48B1A8884047C286201055A42380D2E2458F756D0C3BA78F3D60D04';
wwv_flow_api.g_varchar2_table(75) := '0021F90400050018002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C9E000A41044282A028418224044005909A282F1D0042033714B79B28BB8F0BBD0B8202B10013BDBF8E051CB4CA';
wwv_flow_api.g_varchar2_table(76) := '83422F283892052ECF841D34912EA88DC68C432218239D8905400304D8864278567070178A24BDA28A42516666656FF8F68C627449E2811D251C04821834A48006B85186165C4820E01085858A26CC51C2858D2112D280407251810A99385E04D1502008';
wwv_flow_api.g_varchar2_table(77) := '482F6F8D1C2C211366841A005262A4D925A4D7044720E6D05C13A380802143D45003F0E0C5008C86888469F3A662871943A6DC2305025287102D8C81B83024C1568882580C39310CED2005370A7EBA9D4BB7AE5D4381000021F90400050019002C000000';
wwv_flow_api.g_varchar2_table(78) := '00200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C9E000A41044282A02841822404400590322D282F1D0042033714B89B28BC8F3910B40B8202B10013BEC08E40505F4FCC83422F283892380EC587';
wwv_flow_api.g_varchar2_table(79) := '1D348F052E2442028DC88A245F1A19221BA88905400304B7895E76763C3C650EE7BEA28933DC0814E84591105FAC1291A0D304CA920697DEE178A56051251211472122C12604394314A4395A70204E8D048648540302890682381BE8D411A400842020BE';
wwv_flow_api.g_varchar2_table(80) := 'DC357A6364C31C094F00047932E0D6C14DDB180990B0E14B8513000AB0A0C512C00379151DCD70CA869C0035B4FE01380649819417C80AA4A1AAB11090272F0D44B6A590B5ADDDBB78F32A0A040021F9040005001A002C00000000200020000007FF8000';
wwv_flow_api.g_varchar2_table(81) := '82838485868788898A8B8C8D8E8F9091928405422E938A0F28282498831D0583049B1C9E00694D3F4282A3284182240440A18F733D29061D0042033714BB9B28BF8F123B3D460F8202B413C1C38E38493B654F86422F283892383F6CB4851D348F053496';
wwv_flow_api.g_varchar2_table(82) := '028DDF892C1B4D4C495F9D8905400304BA88204658FB3030488A2482BDC2B7218341830E1409090644518B0D64C88C61100F51011CB2402C022144883853895C2478926E1085678F48389973A7852112D81A3EA25085CE813C090481D0080047B08F8DD8';
wwv_flow_api.g_varchar2_table(83) := '983880E0C70D003007E85AB869C123220718207109A095CC05F578365293A7889A50056E6C1A08A0404946139289DAA40D24215E040D14B82D6476AEDDBB78F31E0A040021F9040005001B002C00000000200020000007FF800082838485868788898A8B';
wwv_flow_api.g_varchar2_table(84) := '8C8D8E8F9091928405422E938A0F2828249883144283049B1C9E002D4D294582A328418224044005901E593A56060042033714BB9B28BF8F0C705A3B128202B40013C1C38E385470671786422F28389213255BCC851D348F05344234E08AE9886973644B';
wwv_flow_api.g_varchar2_table(85) := '111EA189054003041D89203551511A1A7888282211EC152201749A2854384391906040144931D1A6CD081BF31015C0210BC422102E5C40337588469A1BEB045118E9C885853C3F6E1822912DE223106F8E54F9804210088F0070041BE70885932A5E623C';
wwv_flow_api.g_varchar2_table(86) := '00407340BE879B3A15AD62E1C200569B6C2EB807B49182136C640228706393C1B129190920C461D30292850E2870E0D015AEDDBB78F3EA5D14080021F9040005001C002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405';
wwv_flow_api.g_varchar2_table(87) := '422E938A0F2828249883344283049B1C9E002D50195582A3284182240440059007665665320042033714BB9B28BF8F473C6756398202B40013C1C38E13643C767586422F283892135E32CC851D348F05142E34E08AE988520762617139E389054003040A';
wwv_flow_api.g_varchar2_table(88) := '8902155D5D114B4B2E2822110C88BE3B6312261CA24848414503189830D1C0C13C440570C802B14800051A1D4C29EAF0C2E0210AD01E5188E185CD034324B2997C74E2439D29DB0080E00800C7B3472456D439F1645CCC01211D6EBAE4C8051B19695E02';
wwv_flow_api.g_varchar2_table(89) := '686572C18D200220D9EB04A0C08D4DAF04AD9B1464D30291851404993016ADDBB77005E3CA4514080021F9040005001D002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840F172E93840B13845F4D522498005349782582';
wwv_flow_api.g_varchar2_table(90) := '142A4A521CA1156E576E4400141964284182240440058F4E306E766806004E6D3714004228CCC98E0F6130683C158213BD0013CC28CE8E37D13E1686422F2838920F1F1702871D3490EE14D88BF3892F477310104EEF890540030828482420CF9A366DC4';
wwv_flow_api.g_varchar2_table(91) := '1861A388C43620FE907C99389158A265CC2026E2500501022717BA1D2A8063178845023A5018184A91021C42105110E9084488044F2E1522514EE3A317539EA0D80400C4490038B6D1741942E88B773C077450B64D67A3020350BC0005804046410B6EE0';
wwv_flow_api.g_varchar2_table(92) := 'A8C748C102AB3798E11244761210660B0F5A1A1230E19ADCBB78F3EADD8B29100021F9040005001E002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840B45330A938242172184743B3A479902071822168214783B3D2699';
wwv_flow_api.g_varchar2_table(93) := '345C19292A0E00141AAC4482240440058F0C1A1958183200363C5828004228CE148F131B1A2A301282040F8213CE28D08F1C231A223386422F283892242B3102871D34900A141DBF8CF78A421639121225DF101500328000A644431A54F0E0C144024524';
wwv_flow_api.g_varchar2_table(94) := 'BA0151148381458B2CF44954E4828D03071F4E74505400472F108C1428409969910017230F5108F8A80007142F5C1822816E22246ECE260802C11247379A8C08387B218FE78091CD9E410282930436673E17DC5007A9808B83006E380B32285F4BA328AC';
wwv_flow_api.g_varchar2_table(95) := 'B63424E081DAB57007E3CA9D4B576E20003B000000000000000000';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(33721657657858730228)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_file_name=>'t3loading.gif'
,p_mime_type=>'image/gif'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D494844520000003200000062080600000012B180460000001974455874536F6674776172650041646F626520496D616765526561647971C9653C000003C34944415478DAEC9AC16EDB300C404547E9760AB0F617761FB0EF';
wwv_flow_api.g_varchar2_table(2) := 'C87DBDF5BA4FDAB5B7EDDEDFD8BE60BF900CD8696B6C695161171A434A942379992A0284950491F44C52A62883B5560180CA2CB10E6DCEC11C832E3C6160002037A0CE3079C8046ED1EFB614080861A46036020129403A110202DFC14C9069D296810009';
wwv_flow_api.g_varchar2_table(3) := '8C9E0101C2B61402B781684761F44C88984A02DA0654111609C26821843FC1CEFBDCA12B0544816035E83AB521E082229090053A4F81688760420066FCFFD4A6029D85D189EE344D7AC5B4E7804C3A785698C448DD4C27C4863FE915A11C0C078221BAF1';
wwv_flow_api.g_varchar2_table(4) := '3AA0B18D245674E479805D6982D0E88A81A6FF29E279E0BBD3E0417404BC25ACE3670756EA5A80AC314DFE2FDD6EB76FEEEFEF3FCD492DEEEEEE3E3E3C3CFC3836FBC022117DB6004A1AB9C0D608623DAADEED769F379BCD5BADF5660E48DFF73F8FF2FD';
wwv_flow_api.g_varchar2_table(5) := 'E6E6E67684398CDA8F3A8C578356B5E7A5FA89C10301C6A57C4BAC7D7510D7D7D7EF7364B0FBFDFEDB087340DA7B2E8861460EFBECC7B1651707B8CE09E1C4F5E5FA24E2AE933C703B417288037DE562C2B953EE4D8CEBD3F51D5809D9C414BB16E55653';
wwv_flow_api.g_varchar2_table(6) := '5C5C4D7ABC735F725A8370B10FC7E6A3A77EBC9CC40AE55A8A587E29AB9416E97329EA5A1059C54A4B17890DE0402031DF2A2D29193528C1DDE592C6252C9274033BE11675496BA48C09A11839B772B244394914ECFFA5CC01B10BCCCB9E0362231DDB85';
wwv_flow_api.g_varchar2_table(7) := '2052C6B4528B70FBEBD262224509D62236B1DAB1A43570C9889C6717E824B4C75EC22226006353823DB4BF2E2D031A33EA0D5D626C3C81B8EDA9DBD9E59EBDEBD3F5CD65B921182A8D574CB1C1DF1D1649E5510A4FED120D51F722D3F8506C0C9EF66E5B';
wwv_flow_api.g_varchar2_table(8) := 'EA06CE0C718BB6B6432456EA2E3E28A6C67BB25F2F580EC24A59C6E0D58B0389ED0E4B14E806EFCE0F4CE5C470EE459D215A66602A2B3D59CDCE2C990E84050C530252D2DA2F556B35C48210839853C436C4F2AB224F7712245430C6D571FF3820C7B182';
wwv_flow_api.g_varchar2_table(9) := '95B892F45821740E81ADD12190DC073D4A986F054FACB8434AE34D94FA2EC7D19BD8121290989B5955E63054A54248403818FC9D52E71D4F73131641484128370B1D52CE7D6140FADB59208A81508CCBE5D8A7177B85831A2076900F89935BF4A51AC9C0';
wwv_flow_api.g_varchar2_table(10) := 'B1F748B26F979F72AD975AD7BA4859BA9E5B4C74036920E540560DE4C240742D20EB5A40AE6A0179D5402E0CE47515B9D66EB7FB5A0588AD248F7FD1E7EC0DA481349006D2401A480369200DA481349006D2401A4803292F3AE77B89FF52DC21CFBB2A2C';
wwv_flow_api.g_varchar2_table(11) := '72D45FB580FC6E201706F2580BC8A11690BE1690A1815C90AC54256F3E54055285FC11600099D96EB6044F96220000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(33721658352682732596)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_file_name=>'t4border1.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000320000000108060000009CD1FDB20000001974455874536F6674776172650041646F626520496D616765526561647971C9653C0000004C4944415478DAB4C6DB0980400C44D1597C7E279D58928559929D';
wwv_flow_api.g_varchar2_table(2) := '24DFEB8B3842041BF0C2815B22028501F86A524B1DF534A4D1CC161199F043EEBEAAEACCADB4A59D0E3AE94AF17ABA051800996F19FFA6CE6F580000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(33721659049447734062)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_file_name=>'t4border2.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000001000000190806000000F090447F0000001974455874536F6674776172650041646F626520496D616765526561647971C9653C0000003B4944415478DA62FE0F044C0C40401AF1EEDDBB7320863E88FB03';
wwv_flow_api.g_varchar2_table(2) := '44FC8413BF40C46F6620C10C2298400423480C6CD17F10978119682D0340800100F83E11DAD6E5713A0000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(33721659746859735235)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_file_name=>'t4borderBottomCenter.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000019000000190806000000C4E985630000001974455874536F6674776172650041646F626520496D616765526561647971C9653C0000017B4944415478DAB4964F4AC43014C6F362FD8F4845A4A2880B5D7A';
wwv_flow_api.g_varchar2_table(2) := '0C773D8F9BAECB78062FE101BC457B0517DD155C77F27C91A63CC3CB246D35F0233030DFD7EF6B5E6614222A5A40E8918C38208E8933E28228883BE291786ADBF60D672C2B3A77E148F2D2DE9763C2B8E0A1944E7C6A8ED15A2F4A820103D10800706D12';
wwv_flow_api.g_varchar2_table(3) := 'DC6160D62489556518DBBEEF3FFFC2044329AC495DD71FC3307CA59F479C924BB372449C12E7C425713DCECB43D3349BD439F14D9CD11EB14F1C1227E350E6C4157143DCDBC1ECBAEE7DEE3062A032C3F62D31388AA278A1E97F8D550736091D493F8D7B';
wwv_flow_api.g_varchar2_table(4) := '5F3C9923F329CB32AFAAEA39CFF35B638CD504BB3B4DC9849BF1F7A43D23BE73F8C3FD68654245E0D56778F2409DAE4ACD4CA656B21D4718BCDD083741CC2068221928211537E115C19224A1FBCC899B80F8546D16B956C013865114BCB446104F328955';
wwv_flow_api.g_varchar2_table(5) := '8782280807246A1232F23F5321835413A93AA9465C6BA202062A50E36213490422BFFBB0D44425FCF9F8756B00BBEAFF6D7D0B3000E71323D3EAA8BF120000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(33721660444271736474)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_file_name=>'t4borderBottomLeft.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000019000000190806000000C4E985630000001974455874536F6674776172650041646F626520496D616765526561647971C9653C000001784944415478DAB495CB4AC43014869358C71B83282215415CE872';
wwv_flow_api.g_varchar2_table(2) := '5ECF3728FA0CCE43B8999D6FD1F6115C745770A5D226FE296909E1E4E625F0D19469F24DCEC94998CA684DD33C33C636E01EDC80129C833538022B500061E0183675729A3264B55C892B53916FF22542083D503A92E8EAB2249C73151028DF6A7EBA1219';
wwv_flow_api.g_varchar2_table(3) := '10A95FADA4EFFB373C464B245342962C1986E1BDAAAA574792969BD41AA9EBFA119FDF99FAB80217E0149C8043AA46CCFC6992AEEB5E4C01DE826B7009CE4C111E8303B00FF62CC12211B110A1CA9FCAB27CD0AF16A3152EE909D5F25EB46DBB5DB61A76';
wwv_flow_api.g_varchar2_table(4) := '8FDEA6FAA993AC73B0DBED7A4240E5C5B78DA7256DAC1FED7F373A0CCE33B6CBD41C2E9DA80FE2A8B0078F04D22360D48AB4E493905022AAEF86890C97967C05246E8547C343896C09F31417B58BA4E734F6267E4DC45225120D954E3C37371A0B88627D';
wwv_flow_api.g_varchar2_table(5) := '163AB766C92A70E184268B0A6C4911BAD542959C7215CF129178DDB29CC97D129529CA92F0BF982C2899CEFB7F6EDF020C0055B087FA515FFC4F0000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(33721661141468737769)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_file_name=>'t4borderBottomRight.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000190000000408060000007BA194260000001974455874536F6674776172650041646F626520496D616765526561647971C9653C000000364944415478DA62FCFFFF3F032310303030206366286601625620';
wwv_flow_api.g_varchar2_table(2) := '6603627628E678FBF6ED3C2121212306220113031DC0F0B10420C000308407049528EC860000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(33721661838880738968)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_file_name=>'t4borderMiddleLeft.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000190000000408060000007BA194260000001974455874536F6674776172650041646F626520496D616765526561647971C9653C0000002D4944415478DA62FC0F040C44024646460D20F50F88FF22E13F48';
wwv_flow_api.g_varchar2_table(2) := 'F41F34B97F40E3FF3131D0010C1F4B00020C008D50140553B6B0B30000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(33721662569060740099)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_file_name=>'t4borderMiddleRight.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D494844520000000400000019080600000016B98F3B0000001974455874536F6674776172650041646F626520496D616765526561647971C9653C0000003B4944415478DA62FCFFFF3F03326084623860214F8099A0000BBA';
wwv_flow_api.g_varchar2_table(2) := '002BBA001BBA003B41010E14BFBC7DFBF62C8AC07F34EF3231A081412B0010600015860B0107A9792A0000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(33721663266472741382)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_file_name=>'t4borderTopCenter.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000019000000190806000000C4E985630000001974455874536F6674776172650041646F626520496D616765526561647971C9653C000001094944415478DAB496510EC2200C86F9A1FA48E2CEE0093CC70EE8';
wwv_flow_api.g_varchar2_table(2) := 'EBDEF4703BC31423092B941544920E16B6FFA32D65C3B66DE6DF8DC205C0685D64905162D23C0D10862A5C1DE268985343501143E51935A424A219AB2112E0C876205202D2976D726F595F828990DACA6D62288C33103586280A3A61AC8648A054D0154C';
wwv_flow_api.g_varchar2_table(3) := '026510BE457978228058CF61F1BD8F0E29F391AE9EB8CDF37C5996E5DE5AF110BC4941A7D0AFEBFAF0DE5F89C86B20A5A3826FD39D2701304DD3EDA89AAD72EBF264AB01254829F93CE92EE42084487DB2862FE3F7A325D5430CCF39DADB8BA7D60BC913';
wwv_flow_api.g_varchar2_table(4) := '5329C2086E6AB6226E2A474A17048DE7D7CF9E482103ABE42E08943033DA939E3F94ACBD041800AC481BD8CAD99F980000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(33721663963668742636)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_file_name=>'t4borderTopLeft.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000019000000190806000000C4E985630000001974455874536F6674776172650041646F626520496D616765526561647971C9653C000001734944415478DAB4964D4EC33010853BE6B7FC2A80A0880A81044B';
wwv_flow_api.g_varchar2_table(2) := '96DC2227621F71072EC1263B0E907D720516D945AC4363C6D1B872078F139732D2AB2D379DAFEFC971025AEBC97F1790DCDA28D598300035B2B9DE042406A06321DB034D75C477226437009146694D844C038031F320C8428E0380210D822CE48C41B83A';
wwv_flow_api.g_varchar2_table(3) := '36DAF92400FC05990900B7399F77239CAD406E0310AB8530F7395B0159C8A307C2015C128C6F8C25E4C9597463E18DBFD9B808C4B774D343AAAA7AB30B4A290D00DA8C4DD37C6659F691E779438DB9B833DF86E821E643ACB66DBFCAB27CA548EF5173D4';
wwv_flow_api.g_varchar2_table(4) := '15EA1C758A3A42EDD30D6D4E8E2D3AA6C08D2B08B155D7F53B81EE5037A84B5442F7D8016A0FB5C320100531458E1E68375EA32EC8CD2173A35C375110135D9AA6CF4E6CAE9BA9145914C45451142F8E9B199D162781C87A888A7900254932779A28963F';
wwv_flow_api.g_varchar2_table(5) := '48BF8B82745D074273083CCEE320681D3CCD5D80EF1D626D2712E8EF7179DE7260E09AB52083FFDA573F020C00D48DB1DF250578C70000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(33721664660865743897)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_file_name=>'t4borderTopRight.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '47494638396120002000F60000FFFFFF4D4D4DFBFBFBE2E2E2E4E4E4FCFCFCCECECEA6A6A6ADADADD2D2D2F8F8F8EEEEEEABABABA4A4A4BCBCBCEDEDED9B9B9B868686A7A7A7EBEBEBF5F5F5A3A3A3BDBDBDC6C6C6727272757575797979969696E6E6E6';
wwv_flow_api.g_varchar2_table(2) := 'F7F7F7A2A2A2C0C0C0F9F9F9D8D8D8767676989898F0F0F0BBBBBBA0A0A0D1D1D1DFDFDF717171747474C4C4C4D6D6D6DBDBDBF2F2F2E0E0E06E6E6ECACACAD0D0D0C2C2C2F4F4F4999999B2B2B2E3E3E3EAEAEAAAAAAA5959595858586666665656566D';
wwv_flow_api.g_varchar2_table(3) := '6D6DB8B8B8E9E9E9E7E7E7F1F1F1C7C7C7B9B9B9B5B5B5919191AFAFAFB4B4B47D7D7D8181818484847C7C7C808080B1B1B1DCDCDC7F7F7F7A7A7ADDDDDDD4D4D4838383B6B6B65F5F5F6868686F6F6F5C5C5C5A5A5ACDCDCD8B8B8B878787BFBFBF9C9C';
wwv_flow_api.g_varchar2_table(4) := '9C8A8A8A8E8E8E9292928D8D8D8888886464646363636161616A6A6AD9D9D9D5D5D5959595CBCBCB9494946B6B6BC3C3C35D5D5D8F8F8F6060609D9D9D9F9F9FC9C9C9676767A8A8A8787878AEAEAE55555500000000000000000000000000000021FE1A';
wwv_flow_api.g_varchar2_table(5) := '43726561746564207769746820616A61786C6F61642E696E666F0021F904000500000021FF0B4E45545343415045322E3003010000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840B39363493820F17218305353A3B';
wwv_flow_api.g_varchar2_table(6) := '12990A101822168214223B3D359E900B111918190E00141AAD3F820B3740028E02121A1929183200363C3E28004228D12E8F131B1A2A30A300041C8213D12814901C231A223386422F283892242B31C1861D988F0A141D058DFA8B02060C1224941097A8';
wwv_flow_api.g_varchar2_table(7) := '0090010408221A70A041050F2658282201AE5B220208186844D04211B46816111548E0C0C28713201415C0412088C2440A14A4CCD4CF450744145E3A2AC001C58B698548AC0312E95BB4098240CCC4014EE72202D15E60123AE0E64714401D3DF0494210';
wwv_flow_api.g_varchar2_table(8) := '54144401F80A22EF110505836E440B028BA620A62810BABA2D246082DCB978F3EADDCB7752200021F90400050001002C00000000200020000007FF800082838485868788898A8B8C8D8E870F138F8E172A585B938B0A1156595C0599830B312D831D4C9D';
wwv_flow_api.g_varchar2_table(9) := '510AA100200D494A338214A85A512082A08F24464A4C50B20A54565A5DA00B3740BA8C05474B4D514C530055573C5E004228DB2E8F0B264B501A088252A50013DB281493401E4B4A1786422F2838A1423132CB841D3493203AAC6AC42F510B224590AC18';
wwv_flow_api.g_varchar2_table(10) := '88A800900104D825A2E020A10D2752149150C74111882116425AB8A148DBB68E8A80243020E3890045057010082271918082AC1ABAE8808842CD470582A078D1AD10897A40323D5027A9152E0038D4FD64C461DB8B7F4707F03489A2A8A3A32F480822B0';
wwv_flow_api.g_varchar2_table(11) := '2D290064415E4E1238E8C6B620831570864A874248CE860BBCDEDDCBB7AFDFBF800705020021F90400050002002C00000000200020000007FF800082838485868788898A8B8C8D8E86244E3F148F8D123C650C958B1D4B3C664A209B8342322883344D3C';
wwv_flow_api.g_varchar2_table(12) := '674C0AA3002008606343821D54AB50A2001D952E5F61646017B064AB5C050A123340058E054462635D5D2C003F3E681F0036622D282E8F240C625C1148000221218255532828948F1308D23186402F2838A32E2753CE0C75A0B109C42E4601179190B162';
wwv_flow_api.g_varchar2_table(13) := 'C59483870A001940405E2216432EAC98C141110978283A2A7A72A2E4097E898480149988C200142F9A292A808340108B335F3D73D1EB10059CCF82C00C5788843E209B16809C20C8A0201C20812E120A93A0D101BD54C223EAC8C58017240411808714C0';
wwv_flow_api.g_varchar2_table(14) := '821B4104143C7883ECA0843A13014C8027246EC4055CEDEADDCBB7AFDFBD81000021F90400050003002C00000000200020000007FF800082838485868788898A8B8C8D8E8624550E148F8D08583E47958B0A63586E5D209B8305374183146458684A0AA3';
wwv_flow_api.g_varchar2_table(15) := '822B5F105B821D5CAB11A2000F1D8F05365F1B1B6C002046AB46050A0D6E11388F171E5F6B6D2D000E19186F00485A3D70538F2E3F1E10620E00052D69826D3D654734950B44E52786475844CF9B142169050C090022AF5201018E023202F182C5141408';
wwv_flow_api.g_varchar2_table(16) := '131500328000254538D68550B34011091420392C9A0012A40B45424A8A542400C78D1B131615C04120C84599AF12BAE87588C24D5F4150BC385988C40B1440367D0419B358441C257F322229549ED11BBD529AAC4461C000128208804C0A6081A9888F04';
wwv_flow_api.g_varchar2_table(17) := 'A0BD3196544E42541085BC3D546001D1B978F3EADDCB576F200021F90400050004002C00000000200020000007FF800082838485868788898A8B8C8D8E864216431D8F8D48512245958B0A6B511971209B84200A831D621A1960A6A3000F444E6A829D1A';
wwv_flow_api.g_varchar2_table(18) := '2A63A2000B2E950908070D090020101A1823000A12294A1C8F4F360C0D1E280033505143005572593A3F8F1D174E391E2B0005524F8223DE3A17952EE3392C8636703B61149B1D282F87200CBC11E2AA510183136EDCC0B1A800900104F6297281A2220A';
wwv_flow_api.g_varchar2_table(19) := '1A8A48587436D1E24545423636C4A170C248024124362C68D005A54314543E2A10C41FAF42245EA000B249634593C30408C2615126A309155F60CC798352C88A371D292030808420021579EABA014468A5020705DDC83A282C4B004851103C5BA80089A8';
wwv_flow_api.g_varchar2_table(20) := '6C08E3CA9D4BB7EEA8400021F90400050005002C00000000200020000007FF800082838485868788898A8B8C8D8E862E2B6C0A8F8D25115433958B2026114D23029B891D739F622082202F0F954F6C28820A7411506BA20B5F6E51528E135E3F48690002';
wwv_flow_api.g_varchar2_table(21) := '0D114974000A5F6567724EBE2B16454E04007560116C003F76CE56758E20536F0E365B00052FB1024666727046148F146A6F25BD8547F046249B2041821CA2F0C68290518D405028D08804010213161568D18240874514506844414311898D1C306EE4A8';
wwv_flow_api.g_varchar2_table(22) := '480848460F6EDC88A8A8000E02402E326288B0510117320D5198B7A94010142F5C1822B10EC8A68F1A5982100500C7469E8E1E687CD191E88D8B26350A7D0482C0007F000868340A60C10D204C2BD1047063ECA0B53514014CD07830AEA10224B6DADDCB';
wwv_flow_api.g_varchar2_table(23) := 'B7AFDFBF7D03010021F90400050006002C00000000200020000007FF800082838485868788898A8B8C8D8E860503038F8E6C236D32948B200C6D6307059A890A779E5F2082203243148F24280FA99D5C740200241E296E478E0A6A31179302476D5C1200';
wwv_flow_api.g_varchar2_table(24) := '0A1530687663B68C1D21AB333800322346990E29CC3C3F8F1C2C062B210005379305236E76651BAD8E20042C5B1C864557656B249A05240B87285CF8E04254231038F831224180C0844513C0D8C960609182172832D25084E4CC151F6D508DC2A8511101';
wwv_flow_api.g_varchar2_table(25) := '360958DC60B4E0C68D878A0AE020004481C19B880AB8E88088023C4A0582A07851B010098C4034BDCA0813C4331C1951FC6CF420E38B8D476FF01412B5683C02371412C89814404B20CF800EBA417650289C821126641402171209AF75F3EADDCBB7AFA8';
wwv_flow_api.g_varchar2_table(26) := '400021F90400050007002C00000000200020000007FF800082838485868788898A8B8C8D8E8720028F8E41453F40938C1F155F1F998A023F15100C920002096C1D8F054234820244A3079242775119488F414F213800050E153547052039782A2962A68B';
wwv_flow_api.g_varchar2_table(27) := '022F282D5324002177742D0033B829580E8F402852213782139805741929305FAB8E201CE20B8644293E104299ADAF861D752B5C7C6A0462823E4642081098B0684218371A642C02010D058A7E88F2E8D8984481228A162F2A3AD2A36413108B16DCB8C1';
wwv_flow_api.g_varchar2_table(28) := '50D1030F54A8841808AA59A3022EDE19A240E1538120285E082C44021AA6492442B68C240847C89E8F1E587CF1AAE88D5542420E8547E0063500042C1E5509A480CF4137C40E324B73D0048B070FDB162A4062ABDCBB78F3EADD8B37100021F904000500';
wwv_flow_api.g_varchar2_table(29) := '08002C00000000200020000007FF800082838485868788898A8B8C8D8E8F90870A69210A918B53480C32978905439A3F0582022C321D901D9600021748393602002E47114D258F132F03420005754877B8204E54504C10B28C053728282F14002F3F082F';
wwv_flow_api.g_varchar2_table(30) := '00435D4D4C1A338F40CE280F8224E20512DA7815A88E201CCF2E865E4C781EF090052ED1861D5B75349D8C404CE8C54808010213163D688381099B45020680FB97C8861C2B569480501471A2221B59426A5C64F04642450FC48858F210E0A102149439C2';
wwv_flow_api.g_varchar2_table(31) := 'B7CE10057DF782BC3344E2050A209148803B0942190E70381B3D70F6E25FCF1BA88480B3C78EC00D12820838030A60C10D1CA3228505D0ECE7A0B12E273823E8B2500112540ADBCA9D4BB7AEDDB981000021F90400050009002C00000000200020000007';
wwv_flow_api.g_varchar2_table(32) := 'FF800082838485868788898A8B8C8D8E8F9088240B918C1C433337958A2C170E4383022F6A0A90202082059D251F050034446D631F8F242F03428269174417000225465C5D0DAE8D1C28282F14004075161C0006B25D4BBE8E38C9280F823424824E635D';
wwv_flow_api.g_varchar2_table(33) := '5439A58E20C82F34861764E4EB90052ECC860A275BF09B8A020F4142C689841020306111901A1A5424F992CF908001DA1A1ABA63A7228F2B32121580984C62210466429AB16340910B02370A2A7AB0210A13264E04E83354A083CD47F23A2062314467BC';
wwv_flow_api.g_varchar2_table(34) := '20CA5C182291E04B1BA1B5B4A90421134036290E50407A904C1D005B37740AD196EB110894DF0010480644D0821B3800E21C7483EC20B5FA132624EB3AB350011248EBEADDCBB7AF5FBE81000021F9040005000A002C00000000200020000007FF800082';
wwv_flow_api.g_varchar2_table(35) := '838485868788898A8B8C8D8E8F90882002918C424F2C24958A0469322C83051C409120058337690632821D6F1E262D8F422F3742829D5B5300052B26106B0E8F1C28282F1400422D0613006A15C0625B8F38C5280F820A34820E5F6B46480A8F20C42FDB';
wwv_flow_api.g_varchar2_table(36) := '855B1B7136E78F052EC886202C27F19B8A020B4040F6884204049A29E230874A12266250241230C05ABB433952A4C04211C22944041C2ABAE3A66347088A5C10B82130110E084A94509943E09EA1021D625E64F4AEC321104386D8845420883117861C68';
wwv_flow_api.g_varchar2_table(37) := 'D13206E82312D6044E1294068A1E1D31203D28660E00895A368518C0A387082410233501C88882148005322A947487AA98595E2E14074D28762B6EA102248CDADDCBB7AFDFBF9B02010021F9040005000B002C00000000200020000007FF800082838485';
wwv_flow_api.g_varchar2_table(38) := '868788898A8B8C8D8E8F908805918D1437040A948A1C28281C8420939005A200049D2F820A094417998E3437374282A75203000532473907288F41A814004203282E0052360C0D0D9F8E389D280B8220AF75CC265EA58C209C2FC3856A07740E1D91052E';
wwv_flow_api.g_varchar2_table(39) := 'E185204F21E79A8B02243838EB882E0404138B40076364BA40C095E854271A8A8E3089C2508307450651204C942783458B0F13512070839FA2091EC8800153E1593C42053A7478D5281DBC420262C478E9A840B017C80A31B022C7484E4724A479042140';
wwv_flow_api.g_varchar2_table(40) := '50981D5AACB081F4001542122F6E9C43A203A90348203892A8D5090800050DDC88F1386AD08DAE831E143D096042275A6C0E0B1520F133AEDDBB78F3EAA514080021F9040005000C002C00000000200020000007FF800082838485868788898A8B8C8D8E';
wwv_flow_api.g_varchar2_table(41) := '8F909192840A40400293894028280F9983050583049C1C8205035304901D37374282A42841824F330E0E348F389C2F1D004203031400412B0E45552E8F139C280B820220822C1645477590201C282FC485525579170A91052EDF85023703E59F8905420F';
wwv_flow_api.g_varchar2_table(42) := '0FBF8A140404138B1379356D620D562592854257A21F64BA74891021872282061115694291E21D7B046EE853F4E08E988F3968BDA3A4C05DA373F5D46DD992D2518120DD9615CAC3E3CA86888D4838DB080213002356CED83100E9412F5D245EDCF855C4';
wwv_flow_api.g_varchar2_table(43) := '4A502FDA329288C50908000512B07031656ED08DAA83164C7BD70C05AC91840A909089B6ADDBB77004E3360A040021F9040005000D002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840A40380293893828280F99830505';
wwv_flow_api.g_varchar2_table(44) := '83049C1C83241C14901D37374282A4284182402C062190139C2F1D00420303AA242132756C988E0F9C280B820220821CC533B88F021C282FAA8538751F09D090052EDB863841E19F8805342424C889140404138B0B44071E2648408AB12834147DD8B0A6';
wwv_flow_api.g_varchar2_table(45) := '8D4124FE96054CE460CC98300E6D289277A39E221247BE7C99630387BA420A14A46334AE97210A6F2E987C5420483617868EB8C132E7D52312CB2C820828800B0F343EE82878A42C5B40122FBEB0018084078F2B584E3C0241E0060958283C9029A0E04B';
wwv_flow_api.g_varchar2_table(46) := '99A75E22891274030591AD006878C0A264C0275D17148880E270F55301120B467EDCCBB7AFDFBF9002010021F9040005000E002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928402130B0593893828280B99839883049C1C';
wwv_flow_api.g_varchar2_table(47) := '83142E911D04374282A3284182132F283890139C2F1D0042030314BC9C2D2F900B9C9D820220B2282D6A4090051C282FC085422D5328A18F052ED68642979F8BA71DDC88140404138B422B454E361FAD89AF28348A31070D15151E5B14DDCB97E8C29783';
wwv_flow_api.g_varchar2_table(48) := '0763285277A39D22214424DCB9E30015394220327673B1CB908B156C3A760B42CD22211B19343430D988C431874F4A29E08245059E0322193DC8950F880A3401ABF8C082018F974720569110F442C58E31054078188A61848068835AF8D841069310083E';
wwv_flow_api.g_varchar2_table(49) := '52FCF8F4E28A8E22A6D884FC44E148959C1708E3CA9D4BB72EA4400021F9040005000F002C00000000200020000007FF800082838485868788898A8B8C8D8E8F90919284052424938A3828280B9888049B1C831D1D910A1C044282A0284182132F2F978F';
wwv_flow_api.g_varchar2_table(50) := '0F9B2FA54203031400429BAD900BBF9D000220AFBFAA8F051C282FBC85BE283892052ED08614349E8C0A14C78B140404138B1D532B1F2B528BAC28DB892C554548483FF09FBFF887530CFE0C365C281277A3DCC037486C1061C7AD9000050296B9286588';
wwv_flow_api.g_varchar2_table(51) := '460C190A221508E24C60A11F4D2220D8C788C4AF72025AB802214603142A792836AAE56C5B0E39580C0070204243122A2B1E812070E31205153AE01829004242CF24260A40920A80048CA461A4BAF020228A054F6D92FE1844C100464F138EFC90D9B0AD';
wwv_flow_api.g_varchar2_table(52) := 'DBB77004E3460A040021F90400050010002C00000000200020000007FF800082838485868788898A8B8C8D8E8F90919284052424938A1328280B9888049B1C832020910A1C044282A02841820F2F0334900F9B2F1D0042033714B99B2838900BBF9D0002';
wwv_flow_api.g_varchar2_table(53) := '02829A9BAA8F051C282FBD85429BC191052ED28614B39E8B0220058C14040413DF2F6A092CCC89AC28DD883775431717278BEFF1875216FE16061651E070E39CA20E0666BC8971C95B2101E29AB9C06588860C35A520150802CD85212F63DA54D1D688C4';
wwv_flow_api.g_varchar2_table(54) := 'AF73029E000100E24B042E71AA2878540BDA2C043C44E0FB4025029838311E812070E312053C56CA6C2800228F129F39223A8A280443D236E268DCA1D2E58DA71156789418D421CD94999826D87080D6A1DBB77005E3CA9514080021F90400050011002C';
wwv_flow_api.g_varchar2_table(55) := '00000000200020000007FF800082838485868788898A8B8C8D8E8F90919284052442938A0F28280B9888049B1C832005910A1C049700A02841820F2F371D909A282FB34203371400429B280F900BBF9D0002028213BFAA8E051CB6BC85422F283892052E';
wwv_flow_api.g_varchar2_table(56) := 'D1861D349E8C05A58C140404138B0540030340C88AAC28DD890F4F2D6969D6EEBFF1884132FE32AE1451E070C39C22102D4E9C9002C29B217090B0CDDAC6E249C3884150480961E802040F1F263A72B1E9C81C632150183BD0A6069D0F171B697A83C50B';
wwv_flow_api.g_varchar2_table(57) := '00273EF0180030244E9B1173123C02F1420C03011492D88161C25895303F7F4012500C07163B3EDA20A3E0C4489B189816A8C0AA5590828D3123515062C7CD1D8785102EE0A192066EA10724ECEADDCB9750200021F90400050012002C00000000200020';
wwv_flow_api.g_varchar2_table(58) := '000007FF800082838485868788898A8B8C8D8E8F9091928405242E938A0F2828249888049B1C830205910A1C044282A02841820F030420909A282F1D0042033714B99B280B900BBFC100A48213BFAA8F051CB6BD85422F283892052ED0861D349E8CA58D';
wwv_flow_api.g_varchar2_table(59) := '140404138B0540BBD58BAC28DC89C3BFD99FBFED88EF9BF187141C37E48A05412F06A4EB46F05A10018640A0B8811052B322587E1892C1C0C6160590842030B30382B1342F8C39A970E7089B868D6658E901670680221994240060600EC93C2D1EA5C9E0';
wwv_flow_api.g_varchar2_table(60) := '268F800E4B52E0B963CCCB1C0F12D84022F14010092629447C29D5C182893B52303D8D5AE39B801BAE30B9689222830982853C447D8396D082126F0830B69D4BB7AEA0400021F90400050013002C00000000200020000007FF800082838485868788898A';
wwv_flow_api.g_varchar2_table(61) := '8B8C8D8E8F9091928405422E938A0F2828249888049B1C8305920A1C044282A02841820F031C02909A282F1D0042033714B89B28A98F0BBE0B8202A40013BEBC8F051CB5CB84422F283892052ED0851D349E8CC78C140404138B0540BAC48BAB28DC89C2';
wwv_flow_api.g_varchar2_table(62) := '9BB6EABEED8842BEF18A141C37E48A0538043800EB4610480919B20A090882E39BA309497AC829612884831569123AAAB243079C3900043CB92168868D121F5A4032A1234B991500883419C302801A0436887C78F0A88586144E047418136589130005EA';
wwv_flow_api.g_varchar2_table(63) := 'E0240204929074429644A1728014882D3F0C80C014358A920ADF6E79A241C6EB1D8285EE78AD839610890F7508B6B69D4BB7AEA0400021F90400050014002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F';
wwv_flow_api.g_varchar2_table(64) := '2828249888049B1C8305920A1C044282A02841820B374102909A282F1D0042033714B89B28A98F0BBE0B8202A40013BEBC8F051CB5CB84422F283892052ED0851D349E8CC78C140404138B0540BA9D8BAB28DC89C29B03B28AEBED8842BEF18B141C37E4';
wwv_flow_api.g_varchar2_table(65) := '8A05380870A8D7AD1B0E0727E415227129D20425597858307443068B20DF1A1D8123A74C0500055EB4027062C59629231D799063C6CD10005EB8D47802408A85156CD48078F4040A9E220214ACE962A404C8295E569CD8F9480831002EC2748973849480';
wwv_flow_api.g_varchar2_table(66) := '1709AA617211A74B983C19BBD110E3D546C14247BC1A381BED8201A66C06E3CA9D0B20100021F90400050015002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C8305920A1C044282A0';
wwv_flow_api.g_varchar2_table(67) := '2841820B3740A48F9A282F1D0042033714B89B28BC8F0BBE0B8202B213BEC08E051CB5CA83422F283892052ECF841D349E8CB28C140404138B0540BAA98BAB28DB8924BE37DE88036A09319D8942EFF1872D614D26B71215C0412008BB451D84ECE34608';
wwv_flow_api.g_varchar2_table(68) := '079121200EB9B814294817336E1C18A215EB11893065AEF89000A000016A0050849082E2C1230721DDA85801E0420D0903000439B192C0230976DCA4C823408189352668A6E429CA919408518ADCA251630D1D8D2581005100C9C538413420AC99438421';
wwv_flow_api.g_varchar2_table(69) := '210A73D67CB160969003B56A0DDA0EA220838500B978F3E60D040021F90400050016002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C8305920A1C044282A02841820B3740A48F9A28';
wwv_flow_api.g_varchar2_table(70) := '2F1D0042033714B89B28BC8F0BBE0B8202B213BEC08E051CB5CA83422F283892052ECF841D349E8CB28CB937138B0540BA978A42604A3512378A24BE048B24293D3D3B1FE8F18C174C2935D80A15C0412048C0431D5C78E36668828518200EB9380709C8';
wwv_flow_api.g_varchar2_table(71) := '181F2AF215828722D623216D7CA410910700396200800C7BE404C6482875006C9150A5154714A21A81E0922243140705403068E0E484A009D21E3C629041839388142434C8135310058A8D28C838A1C0EA9D060886302404220FD82D63091938E024675A';
wwv_flow_api.g_varchar2_table(72) := '931C07A8BD9D4B976E200021F90400050017002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C9E000A41044282A028418224044005909A282F1D0042033714B79B28BB8F0BBD0B8202';
wwv_flow_api.g_varchar2_table(73) := 'B10013BDBF8E051CB4CA83422F283892052ECF841D349142A88DC68C2B18306B9D890540B9DB8A42183BEF6F8A24BD048B241959597033ECBDA28B439A889883AD50011C0482143CA4C005B851861ECC3000E21085858B70B41101E5822112D2603D1202';
wwv_flow_api.g_varchar2_table(74) := '010F132A555A5D020044D8A32A269570310040CD8F21C384F402E208441B264DBACC28208048911952043D78F1C25B23274D2210A948C346910F2C06755000A9C314355C01742852C48B1A8884047C286201055A42380D2E2458F756D0C3BA78F3D60D04';
wwv_flow_api.g_varchar2_table(75) := '0021F90400050018002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C9E000A41044282A028418224044005909A282F1D0042033714B79B28BB8F0BBD0B8202B10013BDBF8E051CB4CA';
wwv_flow_api.g_varchar2_table(76) := '83422F283892052ECF841D34912EA88DC68C432218239D8905400304D8864278567070178A24BDA28A42516666656FF8F68C627449E2811D251C04821834A48006B85186165C4820E01085858A26CC51C2858D2112D280407251810A99385E04D1502008';
wwv_flow_api.g_varchar2_table(77) := '482F6F8D1C2C211366841A005262A4D925A4D7044720E6D05C13A380802143D45003F0E0C5008C86888469F3A662871943A6DC2305025287102D8C81B83024C1568882580C39310CED2005370A7EBA9D4BB7AE5D4381000021F90400050019002C000000';
wwv_flow_api.g_varchar2_table(78) := '00200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C9E000A41044282A02841822404400590322D282F1D0042033714B89B28BC8F3910B40B8202B10013BEC08E40505F4FCC83422F283892380EC587';
wwv_flow_api.g_varchar2_table(79) := '1D348F052E2442028DC88A245F1A19221BA88905400304B7895E76763C3C650EE7BEA28933DC0814E84591105FAC1291A0D304CA920697DEE178A56051251211472122C12604394314A4395A70204E8D048648540302890682381BE8D411A400842020BE';
wwv_flow_api.g_varchar2_table(80) := 'DC357A6364C31C094F00047932E0D6C14DDB180990B0E14B8513000AB0A0C512C00379151DCD70CA869C0035B4FE01380649819417C80AA4A1AAB11090272F0D44B6A590B5ADDDBB78F32A0A040021F9040005001A002C00000000200020000007FF8000';
wwv_flow_api.g_varchar2_table(81) := '82838485868788898A8B8C8D8E8F9091928405422E938A0F28282498831D0583049B1C9E00694D3F4282A3284182240440A18F733D29061D0042033714BB9B28BF8F123B3D460F8202B413C1C38E38493B654F86422F283892383F6CB4851D348F053496';
wwv_flow_api.g_varchar2_table(82) := '028DDF892C1B4D4C495F9D8905400304BA88204658FB3030488A2482BDC2B7218341830E1409090644518B0D64C88C61100F51011CB2402C022144883853895C2478926E1085678F48389973A7852112D81A3EA25085CE813C090481D0080047B08F8DD8';
wwv_flow_api.g_varchar2_table(83) := '983880E0C70D003007E85AB869C123220718207109A095CC05F578365293A7889A50056E6C1A08A0404946139289DAA40D24215E040D14B82D6476AEDDBB78F31E0A040021F9040005001B002C00000000200020000007FF800082838485868788898A8B';
wwv_flow_api.g_varchar2_table(84) := '8C8D8E8F9091928405422E938A0F2828249883144283049B1C9E002D4D294582A328418224044005901E593A56060042033714BB9B28BF8F0C705A3B128202B40013C1C38E385470671786422F28389213255BCC851D348F05344234E08AE9886973644B';
wwv_flow_api.g_varchar2_table(85) := '111EA189054003041D89203551511A1A7888282211EC152201749A2854384391906040144931D1A6CD081BF31015C0210BC422102E5C40337588469A1BEB045118E9C885853C3F6E1822912DE223106F8E54F9804210088F0070041BE70885932A5E623C';
wwv_flow_api.g_varchar2_table(86) := '00407340BE879B3A15AD62E1C200569B6C2EB807B49182136C640228706393C1B129190920C461D30292850E2870E0D015AEDDBB78F3EA5D14080021F9040005001C002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405';
wwv_flow_api.g_varchar2_table(87) := '422E938A0F2828249883344283049B1C9E002D50195582A3284182240440059007665665320042033714BB9B28BF8F473C6756398202B40013C1C38E13643C767586422F283892135E32CC851D348F05142E34E08AE988520762617139E389054003040A';
wwv_flow_api.g_varchar2_table(88) := '8902155D5D114B4B2E2822110C88BE3B6312261CA24848414503189830D1C0C13C440570C802B14800051A1D4C29EAF0C2E0210AD01E5188E185CD034324B2997C74E2439D29DB0080E00800C7B3472456D439F1645CCC01211D6EBAE4C8051B19695E02';
wwv_flow_api.g_varchar2_table(89) := '686572C18D200220D9EB04A0C08D4DAF04AD9B1464D30291851404993016ADDBB77005E3CA4514080021F9040005001D002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840F172E93840B13845F4D522498005349782582';
wwv_flow_api.g_varchar2_table(90) := '142A4A521CA1156E576E4400141964284182240440058F4E306E766806004E6D3714004228CCC98E0F6130683C158213BD0013CC28CE8E37D13E1686422F2838920F1F1702871D3490EE14D88BF3892F477310104EEF890540030828482420CF9A366DC4';
wwv_flow_api.g_varchar2_table(91) := '1861A388C43620FE907C99389158A265CC2026E2500501022717BA1D2A8063178845023A5018184A91021C42105110E9084488044F2E1522514EE3A317539EA0D80400C4490038B6D1741942E88B773C077450B64D67A3020350BC0005804046410B6EE0';
wwv_flow_api.g_varchar2_table(92) := 'A8C748C102AB3798E11244761210660B0F5A1A1230E19ADCBB78F3EADD8B29100021F9040005001E002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840B45330A938242172184743B3A479902071822168214783B3D2699';
wwv_flow_api.g_varchar2_table(93) := '345C19292A0E00141AAC4482240440058F0C1A1958183200363C5828004228CE148F131B1A2A301282040F8213CE28D08F1C231A223386422F283892242B3102871D34900A141DBF8CF78A421639121225DF101500328000A644431A54F0E0C144024524';
wwv_flow_api.g_varchar2_table(94) := 'BA0151148381458B2CF44954E4828D03071F4E74505400472F108C1428409969910017230F5108F8A80007142F5C1822816E22246ECE260802C11247379A8C08387B218FE78091CD9E410282930436673E17DC5007A9808B83006E380B32285F4BA328AC';
wwv_flow_api.g_varchar2_table(95) := 'B63424E081DAB57007E3CA9D4B576E20003B000000000000000000';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(33721665358492745066)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_file_name=>'t4loading.gif'
,p_mime_type=>'image/gif'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000010000004B080300000086081DB100000033504C54455252524747474F4F4F4141414B4B4B5050503A3A3A6060608A8A8A333333D2D2D25A5A5A515151F2F2F2898989FFFFFFE6E5E57774AF770000002B';
wwv_flow_api.g_varchar2_table(2) := '49444154785EA5C1850D80401000B09E3C6EFB4FCB0C84D462C661482D94FB93D3E6F969B79A94D0D270BD188803D257F447F70000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(33721666055689746328)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_file_name=>'t5border.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000E10000004B0803000000B1EA10C00000018F504C54454F4F4FDEDEDEDBDBDBD2D2D2BBBABAB9B8B8EAEAEA9999999292925A5A5AD4D4D4E3E3E3C5C5C5AFAFAFA0A0A05B5B5BB7B7B73D3D3DBBBBBBC2C2';
wwv_flow_api.g_varchar2_table(2) := 'C2ACACAC626161AAAAAAB9B9B95B5A5A5E5D5D979797C4C4C49B9A9ABAB9B98D8D8D7C7C7CF2F2F22B2B2B2D2D2D2C2C2C4D4D4D2E2E2E303030CDCDCD393939ECEBEBE5E5E52F2F2FEAE9E92A2A2A4C4C4C434343383838323232363636D9D9D93A3A3A';
wwv_flow_api.g_varchar2_table(3) := 'D8D8D8CCCCCC4B4B4BC0C0C0424242E8E7E74747473131314A4A4A414141EFEEEE373737484848454545515151F1F1F13B3B3B3C3C3C333333494949E9E9E9464646505050EBEAEA5E5E5EEDEDED606060A8A8A8EFEFEF3535358A8A8AE7E6E644444482';
wwv_flow_api.g_varchar2_table(4) := '82825D5D5DE9E8E84E4E4E7575754040403E3E3EA7A7A7EEEDEDBEBEBE5C5C5C525252898989CECECEECECEC535353F6F6F6F0F0F07676765F5F5FE6E5E57878789F9F9F6A6A6AA6A6A6D0D0D08E8E8ECACACAB3B3B3F8F8F8838383ADADADF3F3F33F3F';
wwv_flow_api.g_varchar2_table(5) := '3F343434ABABABBFBFBFCFCFCF747474696969818181F9F9F9F4F3F3686868CFCECEFFFFFFA2A2A211BB09BD0000061D49444154785EC4D7658FE33C1000E0FC144318CACCCCCB8CC7CCCCF7E20FBFB19B6DE26E3655BB9BBBF9504BEE58F2237B1C5BDA';
wwv_flow_api.g_varchar2_table(6) := '593AFE7DFA076367E34E7B2CE5CB35EDBFD078D3CFD4CA7969DCBE2BEDBCD8582E44E1AE31BC04181A4100DBF0C6D862FA6E20661DB1A8CFDA55853064B91084871D13CD534A28DB2905CCD7747B4B9D345AF720BBF0C76100D0FEEB168B877FBB6DFD66';
wwv_flow_api.g_varchar2_table(7) := '84EDE0B84A68A097DB687E7A8768BB80EC79A029A5724064C05CEA1888BEF4B7687259687CC494527CEB9DDBA2EB0A396E7C55CC9C82F01CED3B4E80D0715E338208C4B80144066C600788FEF49FE83C404809211484BCBDB690E9A4B0E04C4158DA320F';
wwv_flow_api.g_varchar2_table(8) := '28C501428CE90F73CB575D1300524A74AD6377349DC0A8EFC8F6A71F985BA54B42A2280A01216FAF29E4BE23598EB1C88B11E321CB8004A22784B9268842688090427F3BE7AB2E239BC2D0A96434A46514188453D98990DECA7586910A992F561D34CBC1';
wwv_flow_api.g_varchar2_table(9) := 'D16C0EAA31991167C2FB68932896652988C7BABB6D7910D69F3843DEE9095B9342B6DADBE8A93086C286F5969CA7D333743F322107C6AACDD15EBC580B8C627C6FD4CC037126AC9B8F01A8AAAAF5606DEDE0F6B169F3CDF8CFED83B5B507BC5F21FB5E75';
wwv_flow_api.g_varchar2_table(10) := '41F52588A55658A8164940457A4237FD31AACF0B2D5768DD8050AE963F848DF8526CB94410B203BFCD80D309B35DF7D560932A3814DC2E4421ACBA3CA26E55921020D419D0135EA4B7CD47A568847C099BFF870F795E6B0D62AEF010151A9449D8843911';
wwv_flow_api.g_varchar2_table(11) := '17A642CCBBDD7EBE19776744AD5B49F6FBFD64A5AB01D027F4D20B20F7848A2B546E42285747AFC285F74EE3E5AA3C151A690713058030DFA4282453F8B49F60C7AB451B3D7185CF902D1C4CBEF4AC1191109630FE2D5CA8654E5A55599AAD21504012BC';
wwv_flow_api.g_varchar2_table(12) := '864916016BA8F23FD4F935F4D2610D23DAA547F972F1DE0261E2746F1003E1DD8B3A9CD51BABC38258871C2ED6A196999D34BA26D6A19BDE4E475687D2517E545B20CCA57A7156882074CF5220FACED2897096565400BE17CE521DE8D3B0145D3C4B797A';
wwv_flow_api.g_varchar2_table(13) := '8467293B68AAAD9345C2ED5EB119634342BE8775C483F7EB9BC2F7304114E8EE3E811F58F484FF7BC8D3C96604DF4341F8693921BFD3E84AC89D46F35D528C740313085D439A4E2070233D77A761E9110BB505C2CF5D41187A2FA581F7520A2B67C36A52';
wwv_flow_api.g_varchar2_table(14) := '18758C6C7F7AF0BD14E420E4ED6F15AEF6B618FBDF1678EE6DB1BFD2DB227AA1F83E0C7DF00151E2C0A79C18C1FB301221C470A5377E76A5377EE4C25FECD8CF4B02411407F0B49A5D7656098A2E1DBE730B413A459151D22F22925AC9835D824208BA45';
wwv_flow_api.g_varchar2_table(15) := '03758CFCC76B67B7DE8E8D0312F216F37B11610E7E90376FDE2321D39E8641C890FF289C0BE7C2F94DD33F158E6E219DDD42FC740B69770BE1EE16C34A9AE17BFED966EAF8B176747CBDF9BBE38B5057F38E5FD50911E9F8481A43A4A9BCE49F4CAFB61A';
wwv_flow_api.g_varchar2_table(16) := 'E010022B866001819468808021D2F19ABA2BA3B0D51501C6085117D6CB3B051A62D3005362B3783C10DD56E984E6B78E1522AC16A727A99111550684961DEBF80D1D9F9A704379B33A221CA818268E8D7066888B13F0372C404E2D4CC03089D560CAC2B5';
wwv_flow_api.g_varchar2_table(17) := '456FD66D615B24C812065F4984D9088B7AFA254416AAAEACFA28A622478448547BBAC2A5276F9649682EFC105622B3898A40A1EA22A203484284F2B15512615F451A5E21517A1691800E217444725E6143025E21A5B8110E00D03DEA1002B231F3FF616F';
wwv_flow_api.g_varchar2_table(18) := 'B6EB5030D7A1FF2EEDCCC85DFAF77EA8E90A72F44356E1E46F9AFEA46F1A6621C3BB9441C8305BB009FDF361A49A13CF87FC42F6199F4158E63DCD673B77EC12310CC571BCC3093A950A7277A24E0776BA402994525A722789C50E42254849879E9B6E4E';
wwv_flow_api.g_varchar2_table(19) := 'E97CFEE3F60959AA2483C3F1E0FDFE830FE9F8BEFDA7F0244321242109494842129290842424210949A87DC2562215DAFB529F70994806C2034A613309AB4BB7F096F7AA462CDCEED8B95B78171B7BE78D51186CEABDBE7101AFB9CCE1561FADB0CB0AD6';
wwv_flow_api.g_varchar2_table(20) := 'A757EFAF43B8BA982D0C8775CFA586DE02A9F0E7332D0B66649C8C8FBF37B63C965A4D4F8858180051552612229D4F081999CA02510A7D6957CED41EC2AEAE79C02B74E779BBBACC20CE832744299C2796DB3FFACACE06963885D6D8381B590022168211';
wwv_flow_api.g_varchar2_table(21) := 'E6EC9C910AEDDE7C43FA4F856FD2C2B9C2643C24B90000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(33721666752454747801)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_file_name=>'t5controls.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '47494638396120002000F60000FFFFFFFF5500FEFBFAFEE3D6FEE6DAFEFCFCFED0BAFEAA80FEB08AFED4C0FEF8F6FEEFE8FEAF88FEA87EFEBFA0FEEEE6FE9F70FE8B52FEAB82FEECE4FEF6F2FEA77CFEC0A2FEC8AEFE7836FE7B3AFE7F40FE9B6AFEE7DC';
wwv_flow_api.g_varchar2_table(2) := 'FEF7F4FEA67AFEC3A6FEFAF8FEDAC8FE7C3CFE9C6CFEF0EAFEBE9EFEA478FED3BEFEE0D2FE7734FE7A38FEC7ACFED8C6FEDCCCFEF3EEFEE2D4FE7430FECCB4FED2BCFEC4A8FEF4F0FE9E6EFEB692FEE4D8FEEBE2FEAE86FE6012FE5F10FE6C24FE5E0EFE';
wwv_flow_api.g_varchar2_table(3) := '732EFEBB9AFEEAE0FEE8DEFEF2ECFECAB0FEBC9CFEB896FE9662FEB38EFEB794FE8346FE874CFE8A50FE8244FE864AFEB490FEDECEFE8448FE8042FEDFD0FED6C2FE884EFEBA98FE661AFE6F28FE7632FE6316FE6214FECFB8FE905AFE8C54FEC2A4FEA0';
wwv_flow_api.g_varchar2_table(4) := '72FE8F58FE935EFE9764FE925CFE8E56FE6B22FE6A20FE681EFE702AFEDBCAFED7C4FE9A68FECEB6FE9866FE722CFEC6AAFE6418FE9460FE671CFEA274FEA376FECBB2FE6E26FEAC84FE7E3EFEB28CFE5C0C00000000000000000000000000000021FF0B';
wwv_flow_api.g_varchar2_table(5) := '4E45545343415045322E30030100000021FE1A43726561746564207769746820616A61786C6F61642E696E666F0021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840B39363493820F17218305353A3B';
wwv_flow_api.g_varchar2_table(6) := '12990A101822168214223B3D359E900B111918190E00141AAD3F820B3740028E02121A1929183200363C3E28004228D12E8F131B1A2A30A300041C8213D12814901C231A223386422F283892242B31C1861D988F0A141D058DFA8B02060C1224941097A8';
wwv_flow_api.g_varchar2_table(7) := '0090010408221A70A041050F2658282201AE5B220208186844D04211B46816111548E0C0C28713201415C0412088C2440A14A4CCD4CF450744145E3A2AC001C58B698548AC0312E95BB4098240CCC4014EE72202D15E60123AE0E64714401D3DF0494210';
wwv_flow_api.g_varchar2_table(8) := '54144401F80A22EF110505836E440B028BA620A62810BABA2D246082DCB978F3EADDCB7752200021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E870F138F8E172A585B938B0A1156595C0599830B312D831D4C9D';
wwv_flow_api.g_varchar2_table(9) := '510AA100200D494A338214A85A512082A08F24464A4C50B20A54565A5DA00B3740BA8C05474B4D514C530055573C5E004228DB2E8F0B264B501A088252A50013DB281493401E4B4A1786422F2838A1423132CB841D3493203AAC6AC42F510B224590AC18';
wwv_flow_api.g_varchar2_table(10) := '88A800900104D825A2E020A10D2752149150C74111882116425AB8A148DBB68E8A80243020E3890045057010082271918082AC1ABAE8808842CD470582A078D1AD10897A40323D5027A9152E0038D4FD64C461DB8B7F4707F03489A2A8A3A32F480822B0';
wwv_flow_api.g_varchar2_table(11) := '2D290064415E4E1238E8C6B620831570864A874248CE860BBCDEDDCBB7AFDFBF800705020021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E86244E3F148F8D123C650C958B1D4B3C664A209B8342322883344D3C';
wwv_flow_api.g_varchar2_table(12) := '674C0AA3002008606343821D54AB50A2001D952E5F61646017B064AB5C050A123340058E054462635D5D2C003F3E681F0036622D282E8F240C625C1148000221218255532828948F1308D23186402F2838A32E2753CE0C75A0B109C42E4601179190B162';
wwv_flow_api.g_varchar2_table(13) := 'C59483870A001940405E2216432EAC98C141110978283A2A7A72A2E4097E898480149988C200142F9A292A808340108B335F3D73D1EB10059CCF82C00C5788843E209B16809C20C8A0201C20812E120A93A0D101BD54C223EAC8C58017240411808714C0';
wwv_flow_api.g_varchar2_table(14) := '821B4104143C7883ECA0843A13014C8027246EC4055CEDEADDCBB7AFDFBD81000021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8624550E148F8D08583E47958B0A63586E5D209B8305374183146458684A0AA3';
wwv_flow_api.g_varchar2_table(15) := '822B5F105B821D5CAB11A2000F1D8F05365F1B1B6C002046AB46050A0D6E11388F171E5F6B6D2D000E19186F00485A3D70538F2E3F1E10620E00052D69826D3D654734950B44E52786475844CF9B142169050C090022AF5201018E023202F182C5141408';
wwv_flow_api.g_varchar2_table(16) := '131500328000254538D68550B34011091420392C9A0012A40B45424A8A542400C78D1B131615C04120C84599AF12BAE87588C24D5F4150BC385988C40B1440367D0419B358441C257F322229549ED11BBD529AAC4461C000128208804C0A6081A9888F04';
wwv_flow_api.g_varchar2_table(17) := 'A0BD3196544E42541085BC3D546001D1B978F3EADDCB576F200021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E864216431D8F8D48512245958B0A6B511971209B84200A831D621A1960A6A3000F444E6A829D1A';
wwv_flow_api.g_varchar2_table(18) := '2A63A2000B2E950908070D090020101A1823000A12294A1C8F4F360C0D1E280033505143005572593A3F8F1D174E391E2B0005524F8223DE3A17952EE3392C8636703B61149B1D282F87200CBC11E2AA510183136EDCC0B1A800900104F6297281A2220A';
wwv_flow_api.g_varchar2_table(19) := '1A8A48587436D1E24545423636C4A170C248024124362C68D005A54314543E2A10C41FAF42245EA000B249634593C30408C2615126A309155F60CC798352C88A371D292030808420021579EABA014468A5020705DDC83A282C4B004851103C5BA80089A8';
wwv_flow_api.g_varchar2_table(20) := '6C08E3CA9D4BB7EEA8400021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E862E2B6C0A8F8D25115433958B2026114D23029B891D739F622082202F0F954F6C28820A7411506BA20B5F6E51528E135E3F48690002';
wwv_flow_api.g_varchar2_table(21) := '0D114974000A5F6567724EBE2B16454E04007560116C003F76CE56758E20536F0E365B00052FB1024666727046148F146A6F25BD8547F046249B2041821CA2F0C68290518D405028D08804010213161568D18240874514506844414311898D1C306EE4A8';
wwv_flow_api.g_varchar2_table(22) := '480848460F6EDC88A8A8000E02402E326288B0510117320D5198B7A94010142F5C1822B10EC8A68F1A5982100500C7469E8E1E687CD191E88D8B26350A7D0482C0007F000868340A60C10D204C2BD1047063ECA0B53514014CD07830AEA10224B6DADDCB';
wwv_flow_api.g_varchar2_table(23) := 'B7AFDFBF7D03010021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E860503038F8E6C236D32948B200C6D6307059A890A779E5F2082203243148F24280FA99D5C740200241E296E478E0A6A31179302476D5C1200';
wwv_flow_api.g_varchar2_table(24) := '0A1530687663B68C1D21AB333800322346990E29CC3C3F8F1C2C062B210005379305236E76651BAD8E20042C5B1C864557656B249A05240B87285CF8E04254231038F831224180C0844513C0D8C960609182172832D25084E4CC151F6D508DC2A8511101';
wwv_flow_api.g_varchar2_table(25) := '360958DC60B4E0C68D878A0AE020004481C19B880AB8E88088023C4A0582A07851B010098C4034BDCA0813C4331C1951FC6CF420E38B8D476FF01412B5683C02371412C89814404B20CF800EBA417650289C821126641402171209AF75F3EADDCBB7AFA8';
wwv_flow_api.g_varchar2_table(26) := '400021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8720028F8E41453F40938C1F155F1F998A023F15100C920002096C1D8F054234820244A3079242775119488F414F213800050E153547052039782A2962A68B';
wwv_flow_api.g_varchar2_table(27) := '022F282D5324002177742D0033B829580E8F402852213782139805741929305FAB8E201CE20B8644293E104299ADAF861D752B5C7C6A0462823E4642081098B0684218371A642C02010D058A7E88F2E8D8984481228A162F2A3AD2A36413108B16DCB8C1';
wwv_flow_api.g_varchar2_table(28) := '50D1030F54A8841808AA59A3022EDE19A240E1538120285E082C44021AA6492442B68C240847C89E8F1E587CF1AAE88D5542420E8547E0063500042C1E5509A480CF4137C40E324B73D0048B070FDB162A4062ABDCBB78F3EADD8B37100021F904090500';
wwv_flow_api.g_varchar2_table(29) := '00002C00000000200020000007FF800082838485868788898A8B8C8D8E8F90870A69210A918B53480C32978905439A3F0582022C321D901D9600021748393602002E47114D258F132F03420005754877B8204E54504C10B28C053728282F14002F3F082F';
wwv_flow_api.g_varchar2_table(30) := '00435D4D4C1A338F40CE280F8224E20512DA7815A88E201CCF2E865E4C781EF090052ED1861D5B75349D8C404CE8C54808010213163D688381099B45020680FB97C8861C2B569480501471A2221B59426A5C64F04642450FC48858F210E0A102149439C2';
wwv_flow_api.g_varchar2_table(31) := 'B7CE10057DF782BC3344E2050A209148803B0942190E70381B3D70F6E25FCF1BA88480B3C78EC00D12820838030A60C10D1CA3228505D0ECE7A0B12E273823E8B2500112540ADBCA9D4BB7AEDDB981000021F90409050000002C00000000200020000007';
wwv_flow_api.g_varchar2_table(32) := 'FF800082838485868788898A8B8C8D8E8F9088240B918C1C433337958A2C170E4383022F6A0A90202082059D251F050034446D631F8F242F03428269174417000225465C5D0DAE8D1C28282F14004075161C0006B25D4BBE8E38C9280F823424824E635D';
wwv_flow_api.g_varchar2_table(33) := '5439A58E20C82F34861764E4EB90052ECC860A275BF09B8A020F4142C689841020306111901A1A5424F992CF908001DA1A1ABA63A7228F2B32121580984C62210466429AB16340910B02370A2A7AB0210A13264E04E83354A083CD47F23A2062314467BC';
wwv_flow_api.g_varchar2_table(34) := '20CA5C182291E04B1BA1B5B4A90421134036290E50407A904C1D005B37740AD196EB110894DF0010480644D0821B3800E21C7483EC20B5FA132624EB3AB350011248EBEADDCBB7AF5FBE81000021F90409050000002C00000000200020000007FF800082';
wwv_flow_api.g_varchar2_table(35) := '838485868788898A8B8C8D8E8F90882002918C424F2C24958A0469322C83051C409120058337690632821D6F1E262D8F422F3742829D5B5300052B26106B0E8F1C28282F1400422D0613006A15C0625B8F38C5280F820A34820E5F6B46480A8F20C42FDB';
wwv_flow_api.g_varchar2_table(36) := '855B1B7136E78F052EC886202C27F19B8A020B4040F6884204049A29E230874A12266250241230C05ABB433952A4C04211C22944041C2ABAE3A66347088A5C10B82130110E084A94509943E09EA1021D625E64F4AEC321104386D8845420883117861C68';
wwv_flow_api.g_varchar2_table(37) := 'D13206E82312D6044E1294068A1E1D31203D28660E00895A368518C0A387082410233501C88882148005322A947487AA98595E2E14074D28762B6EA102248CDADDCBB7AFDFBF9B02010021F90409050000002C00000000200020000007FF800082838485';
wwv_flow_api.g_varchar2_table(38) := '868788898A8B8C8D8E8F908805918D1437040A948A1C28281C8420939005A200049D2F820A094417998E3437374282A75203000532473907288F41A814004203282E0052360C0D0D9F8E389D280B8220AF75CC265EA58C209C2FC3856A07740E1D91052E';
wwv_flow_api.g_varchar2_table(39) := 'E185204F21E79A8B02243838EB882E0404138B40076364BA40C095E854271A8A8E3089C2508307450651204C942783458B0F13512070839FA2091EC8800153E1593C42053A7478D5281DBC420262C478E9A840B017C80A31B022C7484E4724A479042140';
wwv_flow_api.g_varchar2_table(40) := '50981D5AACB081F4001542122F6E9C43A203A90348203892A8D5090800050DDC88F1386AD08DAE831E143D096042275A6C0E0B1520F133AEDDBB78F3EAA514080021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E';
wwv_flow_api.g_varchar2_table(41) := '8F909192840A40400293894028280F9983050583049C1C8205035304901D37374282A42841824F330E0E348F389C2F1D004203031400412B0E45552E8F139C280B820220822C1645477590201C282FC485525579170A91052EDF85023703E59F8905420F';
wwv_flow_api.g_varchar2_table(42) := '0FBF8A140404138B1379356D620D562592854257A21F64BA74891021872282061115694291E21D7B046EE853F4E08E988F3968BDA3A4C05DA373F5D46DD992D2518120DD9615CAC3E3CA86888D4838DB080213002356CED83100E9412F5D245EDCF855C4';
wwv_flow_api.g_varchar2_table(43) := '4A502FDA329288C50908000512B07031656ED08DAA83164C7BD70C05AC91840A909089B6ADDBB77004E3360A040021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840A40380293893828280F99830505';
wwv_flow_api.g_varchar2_table(44) := '83049C1C83241C14901D37374282A4284182402C062190139C2F1D00420303AA242132756C988E0F9C280B820220821CC533B88F021C282FAA8538751F09D090052EDB863841E19F8805342424C889140404138B0B44071E2648408AB12834147DD8B0A6';
wwv_flow_api.g_varchar2_table(45) := '8D4124FE96054CE460CC98300E6D289277A39E221247BE7C99630387BA420A14A46334AE97210A6F2E987C5420483617868EB8C132E7D52312CB2C820828800B0F343EE82878A42C5B40122FBEB0018084078F2B584E3C0241E0060958283C9029A0E04B';
wwv_flow_api.g_varchar2_table(46) := '99A75E22891274030591AD006878C0A264C0275D17148880E270F55301120B467EDCCBB7AFDFBF9002010021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928402130B0593893828280B99839883049C1C';
wwv_flow_api.g_varchar2_table(47) := '83142E911D04374282A3284182132F283890139C2F1D0042030314BC9C2D2F900B9C9D820220B2282D6A4090051C282FC085422D5328A18F052ED68642979F8BA71DDC88140404138B422B454E361FAD89AF28348A31070D15151E5B14DDCB97E8C29783';
wwv_flow_api.g_varchar2_table(48) := '0763285277A39D22214424DCB9E30015394220327673B1CB908B156C3A760B42CD22211B19343430D988C431874F4A29E08245059E0322193DC8950F880A3401ABF8C082018F974720569110F442C58E31054078188A61848068835AF8D841069310083E';
wwv_flow_api.g_varchar2_table(49) := '52FCF8F4E28A8E22A6D884FC44E148959C1708E3CA9D4BB72EA4400021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F90919284052424938A3828280B9888049B1C831D1D910A1C044282A0284182132F2F978F';
wwv_flow_api.g_varchar2_table(50) := '0F9B2FA54203031400429BAD900BBF9D000220AFBFAA8F051C282FBC85BE283892052ED08614349E8C0A14C78B140404138B1D532B1F2B528BAC28DB892C554548483FF09FBFF887530CFE0C365C281277A3DCC037486C1061C7AD9000050296B9286588';
wwv_flow_api.g_varchar2_table(51) := '460C190A221508E24C60A11F4D2220D8C788C4AF72025AB802214603142A792836AAE56C5B0E39580C0070204243122A2B1E812070E31205153AE01829004242CF24260A40920A80048CA461A4BAF020228A054F6D92FE1844C100464F138EFC90D9B0AD';
wwv_flow_api.g_varchar2_table(52) := 'DBB77004E3460A040021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F90919284052424938A1328280B9888049B1C832020910A1C044282A02841820F2F0334900F9B2F1D0042033714B99B2838900BBF9D0002';
wwv_flow_api.g_varchar2_table(53) := '02829A9BAA8F051C282FBD85429BC191052ED28614B39E8B0220058C14040413DF2F6A092CCC89AC28DD883775431717278BEFF1875216FE16061651E070E39CA20E0666BC8971C95B2101E29AB9C06588860C35A520150802CD85212F63DA54D1D688C4';
wwv_flow_api.g_varchar2_table(54) := 'AF73029E000100E24B042E71AA2878540BDA2C043C44E0FB4025029838311E812070E312053C56CA6C2800228F129F39223A8A280443D236E268DCA1D2E58DA71156789418D421CD94999826D87080D6A1DBB77005E3CA9514080021F90409050000002C';
wwv_flow_api.g_varchar2_table(55) := '00000000200020000007FF800082838485868788898A8B8C8D8E8F90919284052442938A0F28280B9888049B1C832005910A1C049700A02841820F2F371D909A282FB34203371400429B280F900BBF9D0002028213BFAA8E051CB6BC85422F283892052E';
wwv_flow_api.g_varchar2_table(56) := 'D1861D349E8C05A58C140404138B0540030340C88AAC28DD890F4F2D6969D6EEBFF1884132FE32AE1451E070C39C22102D4E9C9002C29B217090B0CDDAC6E249C3884150480961E802040F1F263A72B1E9C81C632150183BD0A6069D0F171B697A83C50B';
wwv_flow_api.g_varchar2_table(57) := '00273EF0180030244E9B1173123C02F1420C03011492D88161C25895303F7F4012500C07163B3EDA20A3E0C4489B189816A8C0AA5590828D3123515062C7CD1D8785102EE0A192066EA10724ECEADDCB9750200021F90409050000002C00000000200020';
wwv_flow_api.g_varchar2_table(58) := '000007FF800082838485868788898A8B8C8D8E8F9091928405242E938A0F2828249888049B1C830205910A1C044282A02841820F030420909A282F1D0042033714B99B280B900BBFC100A48213BFAA8F051CB6BD85422F283892052ED0861D349E8CA58D';
wwv_flow_api.g_varchar2_table(59) := '140404138B0540BBD58BAC28DC89C3BFD99FBFED88EF9BF187141C37E48A05412F06A4EB46F05A10018640A0B8811052B322587E1892C1C0C6160590842030B30382B1342F8C39A970E7089B868D6658E901670680221994240060600EC93C2D1EA5C9E0';
wwv_flow_api.g_varchar2_table(60) := '268F800E4B52E0B963CCCB1C0F12D84022F14010092629447C29D5C182893B52303D8D5AE39B801BAE30B9689222830982853C447D8396D082126F0830B69D4BB7AEA0400021F90409050000002C00000000200020000007FF800082838485868788898A';
wwv_flow_api.g_varchar2_table(61) := '8B8C8D8E8F9091928405422E938A0F2828249888049B1C8305920A1C044282A02841820F031C02909A282F1D0042033714B89B28A98F0BBE0B8202A40013BEBC8F051CB5CB84422F283892052ED0851D349E8CC78C140404138B0540BAC48BAB28DC89C2';
wwv_flow_api.g_varchar2_table(62) := '9BB6EABEED8842BEF18A141C37E48A0538043800EB4610480919B20A090882E39BA309497AC829612884831569123AAAB243079C3900043CB92168868D121F5A4032A1234B991500883419C302801A0436887C78F0A88586144E047418136589130005EA';
wwv_flow_api.g_varchar2_table(63) := 'E0240204929074429644A1728014882D3F0C80C014358A920ADF6E79A241C6EB1D8285EE78AD839610890F7508B6B69D4BB7AEA0400021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F';
wwv_flow_api.g_varchar2_table(64) := '2828249888049B1C8305920A1C044282A02841820B374102909A282F1D0042033714B89B28A98F0BBE0B8202A40013BEBC8F051CB5CB84422F283892052ED0851D349E8CC78C140404138B0540BA9D8BAB28DC89C29B03B28AEBED8842BEF18B141C37E4';
wwv_flow_api.g_varchar2_table(65) := '8A05380870A8D7AD1B0E0727E415227129D20425597858307443068B20DF1A1D8123A74C0500055EB4027062C59629231D799063C6CD10005EB8D47802408A85156CD48078F4040A9E220214ACE962A404C8295E569CD8F9480831002EC2748973849480';
wwv_flow_api.g_varchar2_table(66) := '1709AA617211A74B983C19BBD110E3D546C14247BC1A381BED8201A66C06E3CA9D0B20100021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C8305920A1C044282A0';
wwv_flow_api.g_varchar2_table(67) := '2841820B3740A48F9A282F1D0042033714B89B28BC8F0BBE0B8202B213BEC08E051CB5CA83422F283892052ECF841D349E8CB28C140404138B0540BAA98BAB28DB8924BE37DE88036A09319D8942EFF1872D614D26B71215C0412008BB451D84ECE34608';
wwv_flow_api.g_varchar2_table(68) := '079121200EB9B814294817336E1C18A215EB11893065AEF89000A000016A0050849082E2C1230721DDA85801E0420D0903000439B192C0230976DCA4C823408189352668A6E429CA919408518ADCA251630D1D8D2581005100C9C538413420AC99438421';
wwv_flow_api.g_varchar2_table(69) := '210A73D67CB160969003B56A0DDA0EA220838500B978F3E60D040021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C8305920A1C044282A02841820B3740A48F9A28';
wwv_flow_api.g_varchar2_table(70) := '2F1D0042033714B89B28BC8F0BBE0B8202B213BEC08E051CB5CA83422F283892052ECF841D349E8CB28CB937138B0540BA978A42604A3512378A24BE048B24293D3D3B1FE8F18C174C2935D80A15C0412048C0431D5C78E36668828518200EB9380709C8';
wwv_flow_api.g_varchar2_table(71) := '181F2AF215828722D623216D7CA410910700396200800C7BE404C6482875006C9150A5154714A21A81E0922243140705403068E0E484A009D21E3C629041839388142434C8135310058A8D28C838A1C0EA9D060886302404220FD82D63091938E024675A';
wwv_flow_api.g_varchar2_table(72) := '931C07A8BD9D4B976E200021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C9E000A41044282A028418224044005909A282F1D0042033714B79B28BB8F0BBD0B8202';
wwv_flow_api.g_varchar2_table(73) := 'B10013BDBF8E051CB4CA83422F283892052ECF841D349142A88DC68C2B18306B9D890540B9DB8A42183BEF6F8A24BD048B241959597033ECBDA28B439A889883AD50011C0482143CA4C005B851861ECC3000E21085858B70B41101E5822112D2603D1202';
wwv_flow_api.g_varchar2_table(74) := '010F132A555A5D020044D8A32A269570310040CD8F21C384F402E208441B264DBACC28208048911952043D78F1C25B23274D2210A948C346910F2C06755000A9C314355C01742852C48B1A8884047C286201055A42380D2E2458F756D0C3BA78F3D60D04';
wwv_flow_api.g_varchar2_table(75) := '0021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C9E000A41044282A028418224044005909A282F1D0042033714B79B28BB8F0BBD0B8202B10013BDBF8E051CB4CA';
wwv_flow_api.g_varchar2_table(76) := '83422F283892052ECF841D34912EA88DC68C432218239D8905400304D8864278567070178A24BDA28A42516666656FF8F68C627449E2811D251C04821834A48006B85186165C4820E01085858A26CC51C2858D2112D280407251810A99385E04D1502008';
wwv_flow_api.g_varchar2_table(77) := '482F6F8D1C2C211366841A005262A4D925A4D7044720E6D05C13A380802143D45003F0E0C5008C86888469F3A662871943A6DC2305025287102D8C81B83024C1568882580C39310CED2005370A7EBA9D4BB7AE5D4381000021F90409050000002C000000';
wwv_flow_api.g_varchar2_table(78) := '00200020000007FF800082838485868788898A8B8C8D8E8F9091928405422E938A0F2828249888049B1C9E000A41044282A02841822404400590322D282F1D0042033714B89B28BC8F3910B40B8202B10013BEC08E40505F4FCC83422F283892380EC587';
wwv_flow_api.g_varchar2_table(79) := '1D348F052E2442028DC88A245F1A19221BA88905400304B7895E76763C3C650EE7BEA28933DC0814E84591105FAC1291A0D304CA920697DEE178A56051251211472122C12604394314A4395A70204E8D048648540302890682381BE8D411A400842020BE';
wwv_flow_api.g_varchar2_table(80) := 'DC357A6364C31C094F00047932E0D6C14DDB180990B0E14B8513000AB0A0C512C00379151DCD70CA869C0035B4FE01380649819417C80AA4A1AAB11090272F0D44B6A590B5ADDDBB78F32A0A040021F90409050000002C00000000200020000007FF8000';
wwv_flow_api.g_varchar2_table(81) := '82838485868788898A8B8C8D8E8F9091928405422E938A0F28282498831D0583049B1C9E00694D3F4282A3284182240440A18F733D29061D0042033714BB9B28BF8F123B3D460F8202B413C1C38E38493B654F86422F283892383F6CB4851D348F053496';
wwv_flow_api.g_varchar2_table(82) := '028DDF892C1B4D4C495F9D8905400304BA88204658FB3030488A2482BDC2B7218341830E1409090644518B0D64C88C61100F51011CB2402C022144883853895C2478926E1085678F48389973A7852112D81A3EA25085CE813C090481D0080047B08F8DD8';
wwv_flow_api.g_varchar2_table(83) := '983880E0C70D003007E85AB869C123220718207109A095CC05F578365293A7889A50056E6C1A08A0404946139289DAA40D24215E040D14B82D6476AEDDBB78F31E0A040021F90409050000002C00000000200020000007FF800082838485868788898A8B';
wwv_flow_api.g_varchar2_table(84) := '8C8D8E8F9091928405422E938A0F2828249883144283049B1C9E002D4D294582A328418224044005901E593A56060042033714BB9B28BF8F0C705A3B128202B40013C1C38E385470671786422F28389213255BCC851D348F05344234E08AE9886973644B';
wwv_flow_api.g_varchar2_table(85) := '111EA189054003041D89203551511A1A7888282211EC152201749A2854384391906040144931D1A6CD081BF31015C0210BC422102E5C40337588469A1BEB045118E9C885853C3F6E1822912DE223106F8E54F9804210088F0070041BE70885932A5E623C';
wwv_flow_api.g_varchar2_table(86) := '00407340BE879B3A15AD62E1C200569B6C2EB807B49182136C640228706393C1B129190920C461D30292850E2870E0D015AEDDBB78F3EA5D14080021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F9091928405';
wwv_flow_api.g_varchar2_table(87) := '422E938A0F2828249883344283049B1C9E002D50195582A3284182240440059007665665320042033714BB9B28BF8F473C6756398202B40013C1C38E13643C767586422F283892135E32CC851D348F05142E34E08AE988520762617139E389054003040A';
wwv_flow_api.g_varchar2_table(88) := '8902155D5D114B4B2E2822110C88BE3B6312261CA24848414503189830D1C0C13C440570C802B14800051A1D4C29EAF0C2E0210AD01E5188E185CD034324B2997C74E2439D29DB0080E00800C7B3472456D439F1645CCC01211D6EBAE4C8051B19695E02';
wwv_flow_api.g_varchar2_table(89) := '686572C18D200220D9EB04A0C08D4DAF04AD9B1464D30291851404993016ADDBB77005E3CA4514080021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840F172E93840B13845F4D522498005349782582';
wwv_flow_api.g_varchar2_table(90) := '142A4A521CA1156E576E4400141964284182240440058F4E306E766806004E6D3714004228CCC98E0F6130683C158213BD0013CC28CE8E37D13E1686422F2838920F1F1702871D3490EE14D88BF3892F477310104EEF890540030828482420CF9A366DC4';
wwv_flow_api.g_varchar2_table(91) := '1861A388C43620FE907C99389158A265CC2026E2500501022717BA1D2A8063178845023A5018184A91021C42105110E9084488044F2E1522514EE3A317539EA0D80400C4490038B6D1741942E88B773C077450B64D67A3020350BC0005804046410B6EE0';
wwv_flow_api.g_varchar2_table(92) := 'A8C748C102AB3798E11244761210660B0F5A1A1230E19ADCBB78F3EADD8B29100021F90409050000002C00000000200020000007FF800082838485868788898A8B8C8D8E8F909192840B45330A938242172184743B3A479902071822168214783B3D2699';
wwv_flow_api.g_varchar2_table(93) := '345C19292A0E00141AAC4482240440058F0C1A1958183200363C5828004228CE148F131B1A2A301282040F8213CE28D08F1C231A223386422F283892242B3102871D34900A141DBF8CF78A421639121225DF101500328000A644431A54F0E0C144024524';
wwv_flow_api.g_varchar2_table(94) := 'BA0151148381458B2CF44954E4828D03071F4E74505400472F108C1428409969910017230F5108F8A80007142F5C1822816E22246ECE260802C11247379A8C08387B218FE78091CD9E410282930436673E17DC5007A9808B83006E380B32285F4BA328AC';
wwv_flow_api.g_varchar2_table(95) := 'B63424E081DAB57007E3CA9D4B576E20003B000000000000000000';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(33721667449003749433)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_file_name=>'t5loading.gif'
,p_mime_type=>'image/gif'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000280000002804030000007ED0A55E00000012504C5445FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF47D7349F0000000574524E53EF801000CF924B9CD50000003E49444154785EEDD3210100201043D121';
wwv_flow_api.g_varchar2_table(2) := 'F0181240828B400210EB5F05CF1600715F3EBD211A9FCAC0A4B4D0150FAAE2064D9F6062A21DAD9DB73D82BDCC05FAB0061ABD2A80320000000049454E44AE426082';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(33721668146415750649)
,p_plugin_id=>wwv_flow_api.id(68134597650101135099)
,p_file_name=>'t5loading_background.png'
,p_mime_type=>'image/png'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(26147641712904596080)
,p_ui_type_name=>'JQM_SMARTPHONE'
,p_display_name=>'Mobile'
,p_display_seq=>20
,p_use_auto_detect=>true
,p_is_default=>false
,p_theme_id=>51
,p_home_url=>'f?p=&APP_ID.:HOME_JQM_SMARTPHONE:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_JQM_SMARTPHONE:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_api.id(26147649796114596091)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(26147631158895595973)
,p_nav_list_template_options=>'#DEFAULT#'
,p_nav_bar_type=>'NAVBAR'
);
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(28936318750518711196)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_navigation_list_id=>wwv_flow_api.id(28936276190132711130)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(28936310920073711178)
,p_nav_list_template_options=>'#DEFAULT#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(28936318682117711196)
,p_nav_bar_list_template_id=>wwv_flow_api.id(28936310879721711177)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_api.create_page(
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(26147641712904596080)
,p_name=>'Global Page - Mobile'
,p_page_mode=>'NORMAL'
,p_step_title=>'Global Page - Mobile'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'D'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'DOYLE_OLSCHEWSKI@HOTMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20180129233617'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26147646358298596086)
,p_plug_name=>'Header'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26147628935128595970)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_row_template=>1
,p_plug_display_condition_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_plug_display_when_condition=>'101'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
,p_plug_comment=>'Header'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26147647658357596087)
,p_plug_name=>'Footer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26147628523528595970)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_08'
,p_plug_query_row_template=>1
,p_plug_display_condition_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_plug_display_when_condition=>'101'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
,p_plug_comment=>'Footer'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26147647144016596087)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(26147646358298596086)
,p_button_name=>'LOGOUT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26147639943366595980)
,p_button_image_alt=>'Log Out'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'javascript:location.href="&LOGOUT_URL.";'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26147647918443596087)
,p_name=>'open panel'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(26147647144016596087)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26147647918443596087)
,p_event_id=>wwv_flow_api.id(26147647918443596087)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$.mobile.activePage.find(''#menupanel'').panel("open");'
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(28936318750518711196)
,p_name=>'Home'
,p_page_mode=>'NORMAL'
,p_step_title=>'&APPNAME.'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'DOYLE_OLSCHEWSKI@HOTMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20180129233857'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(23852970364395371724)
,p_name=>'Movie List'
,p_template=>wwv_flow_api.id(28936292453508711158)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Cards--featured:t-Cards--displayIcons:t-Cards--3cols:t-Cards--colorize'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'     ID',
'    ,IMAGE AS IMAGE',
'    ,TITLE AS CARD_TITLE',
'    ,DESCRIPTION AS CARD_TEXT',
'    ,RATING_ID AS CARD_SUBTEXT',
'FROM MOVIE',
'ORDER BY TITLE'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(28936298778324711164)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(23852970462496371725)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43660462415027836701)
,p_query_column_id=>2
,p_column_alias=>'IMAGE'
,p_column_display_sequence=>5
,p_column_heading=>'Image'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(23852971120412371732)
,p_query_column_id=>3
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>2
,p_column_heading=>'Card title'
,p_column_link=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP:P2_ID:#ID#'
,p_column_linktext=>'#CARD_TITLE#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(23852971260602371733)
,p_query_column_id=>4
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>3
,p_column_heading=>'Card text'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(23852971352727371734)
,p_query_column_id=>5
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>4
,p_column_heading=>'Card subtext'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16741506205625967207)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(23852970364395371724)
,p_button_name=>'ADD_MOVIE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28936313582931711182)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Movie'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16741506309447967208)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(23852970364395371724)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16741546403728967209)
,p_event_id=>wwv_flow_api.id(16741506309447967208)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(23852970364395371724)
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(28936318750518711196)
,p_name=>'Add Movie'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Movie'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'DOYLE_OLSCHEWSKI@HOTMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20171025153101'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26225766392268070518)
,p_plug_name=>'Add Movie'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(28936284323848711148)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26225767035440070519)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(28936284454878711148)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26225767459675070519)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(26225767035440070519)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28936313582931711182)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26225766912345070519)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(26225767035440070519)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28936313582931711182)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P2_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26225766885220070519)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(26225767035440070519)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28936313582931711182)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P2_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26225766753949070519)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(26225767035440070519)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28936313582931711182)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P2_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26225769897668070529)
,p_name=>'P2_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(26225766392268070518)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(28936313087719711180)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26225770237847070546)
,p_name=>'P2_TITLE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(26225766392268070518)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Title'
,p_source=>'TITLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(28936313229622711180)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26225770676428070546)
,p_name=>'P2_DESCRIPTION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(26225766392268070518)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>2000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(28936313087719711180)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26225771069889070547)
,p_name=>'P2_MOVIE_NUM'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(26225766392268070518)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Movie Num'
,p_source=>'MOVIE_NUM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(28936313087719711180)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26225771438621070547)
,p_name=>'P2_MOVIE_LENGTH'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(26225766392268070518)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Movie Length'
,p_source=>'MOVIE_LENGTH'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(28936313087719711180)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26225771838631070548)
,p_name=>'P2_IMAGE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(26225766392268070518)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Image'
,p_source=>'IMAGE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(28936313087719711180)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26225772274192070548)
,p_name=>'P2_ISDISNEY'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(26225766392268070518)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Isdisney'
,p_source=>'ISDISNEY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>1
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(28936313087719711180)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26225772670564070548)
,p_name=>'P2_ISANIMATED'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(26225766392268070518)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Isanimated'
,p_source=>'ISANIMATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>1
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(28936313087719711180)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26225773019015070549)
,p_name=>'P2_ISTV'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(26225766392268070518)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Istv'
,p_source=>'ISTV'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>1
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(28936313087719711180)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26225773438187070550)
,p_name=>'P2_HOLIDAY_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(26225766392268070518)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Holiday Id'
,p_source=>'HOLIDAY_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(28936313087719711180)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26225773894094070550)
,p_name=>'P2_GENRE_ID'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(26225766392268070518)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Genre'
,p_source=>'GENRE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'GENRE_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'   LKUP_DSC',
'  ,LKUP_ID',
'FROM LKUP',
'WHERE LKUP_GRP_ID = 1',
'ORDER BY LKUP_DSC'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(28936313087719711180)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26225774268823070550)
,p_name=>'P2_RATING_ID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(26225766392268070518)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rating Id'
,p_source=>'RATING_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(28936313087719711180)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26225774651539070551)
,p_name=>'P2_FORMAT_ID'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(26225766392268070518)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Format Id'
,p_source=>'FORMAT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(28936313087719711180)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26225767523771070519)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(26225767459675070519)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26225768350210070520)
,p_event_id=>wwv_flow_api.id(26225767523771070519)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26225775400148070552)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from MOVIE'
,p_attribute_02=>'MOVIE'
,p_attribute_03=>'P2_ID'
,p_attribute_04=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26225775825028070553)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of MOVIE'
,p_attribute_02=>'MOVIE'
,p_attribute_03=>'P2_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26225776221168070553)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(26225766912345070519)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26225776690971070553)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(28936318750518711196)
,p_name=>'Modal Plugin Page'
,p_page_mode=>'MODAL'
,p_step_title=>'Modal Plugin Page'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'DOYLE_OLSCHEWSKI@HOTMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20170426183834'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33720475747255486401)
,p_plug_name=>'Region on Modal Page'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(28936292453508711158)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'Hopefully this information will be displayed'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33720475878296486402)
,p_name=>'P3_YES_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(33720475747255486401)
,p_prompt=>'Is it Working'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Yes;Y,No;N'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select --'
,p_field_template=>wwv_flow_api.id(28936313087719711180)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33720476213043486406)
,p_name=>'P3_NEW'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(33720475747255486401)
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(28936313087719711180)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(28936318750518711196)
,p_name=>'interactive grid'
,p_page_mode=>'NORMAL'
,p_step_title=>'interactive grid'
,p_step_sub_title=>'interactive grid'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'DOYLE_OLSCHEWSKI@HOTMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20171016212618'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(29733021986965839517)
,p_plug_name=>'interactive grid'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(28936292453508711158)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       ID2,',
'       PERSON_NAME,',
'       CREATED_BY,',
'       CREATED_DATE,',
'       UPDATED_BY,',
'       UPDATED_DATE',
'  from TESTING'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(29733023751227839519)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(29733042073133841101)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(29733042179275841102)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(29733042355194841104)
,p_name=>'ID2'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID2'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Id2'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(29733042434194841105)
,p_name=>'PERSON_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERSON_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Person name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(29733042561955841106)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Created by'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(29733042685548841107)
,p_name=>'CREATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Created date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(29733042751755841108)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Updated by'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(29733042842300841109)
,p_name=>'UPDATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Updated date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(29733022442473839517)
,p_internal_uid=>29733022442473839517
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(29733022867063839518)
,p_interactive_grid_id=>wwv_flow_api.id(29733022442473839517)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(29733022965815839518)
,p_report_id=>wwv_flow_api.id(29733022867063839518)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(29733024126422839519)
,p_view_id=>wwv_flow_api.id(29733022965815839518)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(29733023751227839519)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(29733051145431847772)
,p_view_id=>wwv_flow_api.id(29733022965815839518)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(29733042073133841101)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(29734037579334980725)
,p_view_id=>wwv_flow_api.id(29733022965815839518)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(29733042355194841104)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(29734038075957980741)
,p_view_id=>wwv_flow_api.id(29733022965815839518)
,p_display_seq=>16
,p_column_id=>wwv_flow_api.id(29733042434194841105)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(29734038532834980756)
,p_view_id=>wwv_flow_api.id(29733022965815839518)
,p_display_seq=>17
,p_column_id=>wwv_flow_api.id(29733042561955841106)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(29734039051508980770)
,p_view_id=>wwv_flow_api.id(29733022965815839518)
,p_display_seq=>18
,p_column_id=>wwv_flow_api.id(29733042685548841107)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(29734039541558980784)
,p_view_id=>wwv_flow_api.id(29733022965815839518)
,p_display_seq=>19
,p_column_id=>wwv_flow_api.id(29733042751755841108)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(29734039933093980799)
,p_view_id=>wwv_flow_api.id(29733022965815839518)
,p_display_seq=>20
,p_column_id=>wwv_flow_api.id(29733042842300841109)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(29733042270727841103)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(29733021986965839517)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'interactive grid - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_api.create_page(
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(28936318750518711196)
,p_name=>'Movie Details'
,p_page_mode=>'NORMAL'
,p_step_title=>'Movie Details'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'DOYLE_OLSCHEWSKI@HOTMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20180129234042'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23852969347823371714)
,p_plug_name=>'Details'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(28936284323848711148)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23997106864921182108)
,p_plug_name=>'Movie'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(28936284323848711148)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23997107565413182108)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(23997106864921182108)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28936313582931711182)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P6_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'Y'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23997107748842182109)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(23997106864921182108)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28936313582931711182)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23997107443739182108)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(23997106864921182108)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28936313582931711182)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P6_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_row=>'Y'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23997107611319182108)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(23997106864921182108)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28936313582931711182)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P6_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'Y'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(23997110229179182112)
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23997120777167182157)
,p_name=>'P6_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(23997106864921182108)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23997124259077182171)
,p_name=>'P6_TITLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(23852969347823371714)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Title'
,p_source=>'TITLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(28936313087719711180)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23997124698643182172)
,p_name=>'P6_DESCRIPTION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(23852969347823371714)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(28936313087719711180)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23997125103328182172)
,p_name=>'P6_MOVIE_NUM'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(23852969347823371714)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Movie Num'
,p_source=>'MOVIE_NUM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(28936313087719711180)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23997125691938182172)
,p_name=>'P6_MOVIE_LENGTH'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(23852969347823371714)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Movie Length'
,p_source=>'MOVIE_LENGTH'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(28936313087719711180)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23997126021127182173)
,p_name=>'P6_RATING_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(23852969347823371714)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rating'
,p_source=>'RATING_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(28936313087719711180)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23997126560482182173)
,p_name=>'P6_IMAGE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(23997106864921182108)
,p_use_cache_before_default=>'NO'
,p_source=>'IMAGE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_field_template=>wwv_flow_api.id(28936312954598711179)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'URL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23997127632139182174)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from MOVIE'
,p_attribute_02=>'MOVIE'
,p_attribute_03=>'P6_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23997128131688182175)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'    if :P6_ID is null then',
'        select "#OWNER#"."MOVIE_SEQ".nextval',
'          into :P6_ID',
'          from sys.dual;',
'    end if;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(23997107443739182108)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23997128592557182175)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of MOVIE'
,p_attribute_02=>'MOVIE'
,p_attribute_03=>'P6_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23997129086228182175)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(23997107611319182108)
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_api.create_page(
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(26147641712904596080)
,p_name=>'Home'
,p_alias=>'HOME_JQM_SMARTPHONE'
,p_page_mode=>'NORMAL'
,p_step_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(26147626137281595966)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'DOYLE_OLSCHEWSKI@HOTMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20170921033853'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26147649430658596091)
,p_plug_name=>'Home'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26147629546887595971)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
end;
/
prompt --application/pages/page_00050
begin
wwv_flow_api.create_page(
 p_id=>50
,p_user_interface_id=>wwv_flow_api.id(28936318750518711196)
,p_name=>'Maintenance'
,p_page_mode=>'NORMAL'
,p_step_title=>'&APPNAME.'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'DOYLE_OLSCHEWSKI@HOTMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20170921022143'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26143713846811051106)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(28936295710979711161)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(28936320006275711205)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(28936314076768711183)
,p_plug_query_row_template=>1
);
end;
/
prompt --application/pages/page_00051
begin
wwv_flow_api.create_page(
 p_id=>51
,p_user_interface_id=>wwv_flow_api.id(28936318750518711196)
,p_name=>'LookUp Groups'
,p_page_mode=>'NORMAL'
,p_step_title=>'LookUp Groups'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'DOYLE_OLSCHEWSKI@HOTMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20180129234108'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(26147684201592614417)
,p_name=>'LookUp Groups'
,p_template=>wwv_flow_api.id(28936292453508711158)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    LKUP_GRP_ID',
'   ,LKUP_GRP_ID AS VIEW_GROUP',
'   ,LKUP_GRP_DSC',
'FROM LKUP_GRP',
'ORDER BY LKUP_GRP_DSC'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(28936301385329711167)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26147684922542614420)
,p_query_column_id=>1
,p_column_alias=>'LKUP_GRP_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Edit Description'
,p_column_link=>'f?p=&APP_ID.:52:&SESSION.::&DEBUG.::P52_LKUP_GRP_ID:#LKUP_GRP_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'DOYLEOLSCHEWSKI'
,p_ref_table_name=>'LKUP_GRP'
,p_ref_column_name=>'LKUP_GRP_ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16741546501848967210)
,p_query_column_id=>2
,p_column_alias=>'VIEW_GROUP'
,p_column_display_sequence=>3
,p_column_heading=>'View group'
,p_column_link=>'f?p=&APP_ID.:53:&SESSION.::&DEBUG.:RP:P53_LKUP_GRP_ID,P53_LKUP_GRP_DSC:#LKUP_GRP_ID#,#LKUP_GRP_DSC#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26147685352515614421)
,p_query_column_id=>3
,p_column_alias=>'LKUP_GRP_DSC'
,p_column_display_sequence=>1
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'DOYLEOLSCHEWSKI'
,p_ref_table_name=>'LKUP_GRP'
,p_ref_column_name=>'LKUP_GRP_DSC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26147687219490614423)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(26147684201592614417)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28936313582931711182)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:52:&SESSION.::&DEBUG.:52'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26147686383348614422)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(26147684201592614417)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26147686832858614422)
,p_event_id=>wwv_flow_api.id(26147686383348614422)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(26147684201592614417)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26147687633311614423)
,p_name=>'Create Button - Dialog Closed'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(26147687219490614423)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26147688168239614423)
,p_event_id=>wwv_flow_api.id(26147687633311614423)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(26147684201592614417)
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00052
begin
wwv_flow_api.create_page(
 p_id=>52
,p_user_interface_id=>wwv_flow_api.id(28936318750518711196)
,p_name=>'LookUp Group Details'
,p_page_mode=>'MODAL'
,p_step_title=>'LookUp Group Details'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'DOYLE_OLSCHEWSKI@HOTMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20170921035335'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26147674258297607728)
,p_plug_name=>'Form on LKUP_GRP'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(28936284323848711148)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26147674945206607729)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(28936284454878711148)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26147675311736607729)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(26147674945206607729)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28936313582931711182)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26147674879896607729)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(26147674945206607729)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28936313582931711182)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P52_LKUP_GRP_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26147674717007607729)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(26147674945206607729)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28936313582931711182)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P52_LKUP_GRP_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26147674624379607729)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(26147674945206607729)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28936313582931711182)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P52_LKUP_GRP_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26147677702463607740)
,p_name=>'P52_LKUP_GRP_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(26147674258297607728)
,p_use_cache_before_default=>'NO'
,p_prompt=>'LookUp Group ID'
,p_source=>'LKUP_GRP_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(28936313229622711180)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26147678025984607782)
,p_name=>'P52_LKUP_GRP_DSC'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(26147674258297607728)
,p_use_cache_before_default=>'NO'
,p_prompt=>'LookUp Group Description'
,p_source=>'LKUP_GRP_DSC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>2000
,p_grid_label_column_span=>4
,p_field_template=>wwv_flow_api.id(28936313229622711180)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26147675423799607729)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(26147675311736607729)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26147676239624607732)
,p_event_id=>wwv_flow_api.id(26147675423799607729)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26147678863865607783)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from LKUP_GRP'
,p_attribute_02=>'LKUP_GRP'
,p_attribute_03=>'P52_LKUP_GRP_ID'
,p_attribute_04=>'LKUP_GRP_ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26147679253746607783)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of LKUP_GRP'
,p_attribute_02=>'LKUP_GRP'
,p_attribute_03=>'P52_LKUP_GRP_ID'
,p_attribute_04=>'LKUP_GRP_ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26147679682518607783)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(26147674879896607729)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26147680040343607784)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
prompt --application/pages/page_00053
begin
wwv_flow_api.create_page(
 p_id=>53
,p_user_interface_id=>wwv_flow_api.id(28936318750518711196)
,p_name=>'&P53_LKUP_GRP_DSC. Detail'
,p_page_mode=>'MODAL'
,p_step_title=>'&P53_LKUP_GRP_DSC. Detail'
,p_step_sub_title=>'&P53_LKUP_GRP_DSC. Detail'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'800'
,p_dialog_width=>'1000'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'DOYLE_OLSCHEWSKI@HOTMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20180117015424'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26225935117729196594)
,p_plug_name=>'&P53_LKUP_GRP_DSC. Detail'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(28936291973462711158)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'     L.LKUP_ID',
'    ,L.LKUP_GRP_ID',
'    ,L.LKUP_DSC',
'    ,L.LKUP_CD',
'    ,L.HELP_DSC',
'    ,L.DISPLAY_SEQ',
'    ,L.START_DT',
'    ,L.END_DT',
'FROM LKUP L',
'WHERE L.LKUP_GRP_ID = :P53_LKUP_GRP_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(26225936311454196598)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(26225936867433196599)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(26225937402838196599)
,p_name=>'LKUP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LKUP_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_enable_filter=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(26225938060764196600)
,p_name=>'LKUP_GRP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LKUP_GRP_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(26225938623929196601)
,p_name=>'LKUP_DSC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LKUP_DSC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_width=>50
,p_is_required=>true
,p_max_length=>200
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(26225939205533196601)
,p_name=>'LKUP_CD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LKUP_CD'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(26225939841268196601)
,p_name=>'HELP_DSC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HELP_DSC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(26225940452952196602)
,p_name=>'DISPLAY_SEQ'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISPLAY_SEQ'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Display Sequence'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'center'
,p_item_width=>15
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(26225941062300196603)
,p_name=>'START_DT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_DT'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Start Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_item_width=>15
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(26226001639799196604)
,p_name=>'END_DT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_DT'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'End Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_item_width=>15
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(26225935640793196596)
,p_internal_uid=>26225935640793196596
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
,p_show_toolbar=>true
,p_toolbar_buttons=>'SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_download=>false
,p_download_formats=>null
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>300
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(26225936013137196597)
,p_interactive_grid_id=>wwv_flow_api.id(26225935640793196596)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(26225936156051196597)
,p_report_id=>wwv_flow_api.id(26225936013137196597)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(26225937238144196599)
,p_view_id=>wwv_flow_api.id(26225936156051196597)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(26225936867433196599)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(26225937847804196600)
,p_view_id=>wwv_flow_api.id(26225936156051196597)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(26225937402838196599)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(26225938413095196600)
,p_view_id=>wwv_flow_api.id(26225936156051196597)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(26225938060764196600)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(26225939046654196601)
,p_view_id=>wwv_flow_api.id(26225936156051196597)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(26225938623929196601)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(26225939609499196601)
,p_view_id=>wwv_flow_api.id(26225936156051196597)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(26225939205533196601)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(26225940262307196602)
,p_view_id=>wwv_flow_api.id(26225936156051196597)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(26225939841268196601)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(26225940824827196602)
,p_view_id=>wwv_flow_api.id(26225936156051196597)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(26225940452952196602)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(26226001491468196603)
,p_view_id=>wwv_flow_api.id(26225936156051196597)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(26225941062300196603)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(26226002014923196604)
,p_view_id=>wwv_flow_api.id(26225936156051196597)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(26226001639799196604)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16741546650585967211)
,p_name=>'P53_LKUP_GRP_DSC'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(26225935117729196594)
,p_source=>'P53_LKUP_GRP_DSC'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16741546777627967212)
,p_name=>'P53_LKUP_GRP_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(26225935117729196594)
,p_source=>'P53_LKUP_GRP_ID'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26226002290635196605)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(26225935117729196594)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>' - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_api.create_page(
 p_id=>101
,p_user_interface_id=>wwv_flow_api.id(28936318750518711196)
,p_name=>'Login Page'
,p_alias=>'LOGIN_DESKTOP'
,p_page_mode=>'NORMAL'
,p_step_title=>'Doyle_Olschewski 1 - Log In'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(28936278197313711137)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_last_upd_yyyymmddhh24miss=>'20160329161704'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(28936319251001711202)
,p_plug_name=>'Log In'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(28936292453508711158)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(28936319564438711204)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(28936319251001711202)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28936313582931711182)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Log In'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28936319338868711203)
,p_name=>'P101_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(28936319251001711202)
,p_prompt=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(28936313087719711180)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28936319456457711204)
,p_name=>'P101_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(28936319251001711202)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(28936313087719711180)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(28936319768722711205)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P101_USERNAME) );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(28936319663486711204)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P101_USERNAME,',
'    p_password => :P101_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(28936319949887711205)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(28936319838786711205)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P101_USERNAME := apex_authentication.get_login_username_cookie;'
);
end;
/
prompt --application/pages/page_01001
begin
wwv_flow_api.create_page(
 p_id=>1001
,p_user_interface_id=>wwv_flow_api.id(26147641712904596080)
,p_name=>'Login Page'
,p_alias=>'LOGIN_JQM_SMARTPHONE'
,p_page_mode=>'NORMAL'
,p_step_title=>'O''Scketchy Movie Library - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(26147626137281595966)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'DOYLE_OLSCHEWSKI@HOTMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20170921033853'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26147642651403596082)
,p_plug_name=>'O''Scketchy Movie Library'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26147629546887595971)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26147643864014596083)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(26147642651403596082)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26147639943366595980)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Log In'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26147643098518596083)
,p_name=>'P1001_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(26147642651403596082)
,p_prompt=>'username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26147643451771596083)
,p_name=>'P1001_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(26147642651403596082)
,p_prompt=>'password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26147644617855596085)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P1001_USERNAME) );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26147644281610596084)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P1001_USERNAME,',
'    p_password => :P1001_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26147645478486596085)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26147645098279596085)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P1001_USERNAME := apex_authentication.get_login_username_cookie;'
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_api.create_install(
 p_id=>wwv_flow_api.id(15570356695379814625)
);
end;
/
prompt --application/deployment/install
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
