class UserInfo
  attr_accessor :nickname, :firstname, :lastname, :pkey, :pswd_salt, :claimed_id, :token, :storage, :photo, :active, :trial, :news_eanbled, :alerts_eanbled, :support_eanbled, :support_email, :annotation_branded, :viewer_branded, :is_real_time_broadcast_enabled, :is_scroll_broadcast_enabled, :is_zoom_broadcast_enabled, :annotation_logo, :pointer_tool_cursor, :annotation_header_options, :is_annotation_navigation_widget_enabled, :is_annotation_zoom_widget_enabled, :is_annotation_download_widget_enabled, :is_annotation_print_widget_enabled, :is_annotation_help_widget_enabled, :is_right_panel_enabled, :is_thumbnails_panel_enabled, :is_standard_header_always_shown, :is_toolbar_enabled, :is_text_annotation_button_enabled, :is_rectangle_annotation_button_enabled, :is_point_annotation_button_enabled, :is_strikeout_annotation_button_enabled, :is_polyline_annotation_button_enabled, :is_typewriter_annotation_button_enabled, :is_watermark_annotation_button_enabled, :is_annotation_document_name_shown, :annotation_navigation_icons, :annotation_tool_icons, :annotation_background_color, :viewer_logo, :viewer_options, :is_viewer_navigation_widget_enabled, :is_viewer_zoom_widget_enabled, :is_viewer_download_widget_enabled, :is_viewer_print_widget_enabled, :is_viewer_help_widget_enabled, :is_viewer_document_name_shown, :isviewer_right_mouse_button_menu_enabled, :signedup_on, :signedin_on, :signin_count, :roles, :signature_watermark_enabled, :signature_desktop_notifications, :webhook_notification_retries, :webhook_notification_failed_recipients, :signature_color, :id, :guid, :primary_email

  # :internal => :external
  def self.attribute_map
  {
      :nickname => :nickname, :firstname => :firstname, :lastname => :lastname, :pkey => :pkey, :pswd_salt => :pswd_salt, :claimed_id => :claimed_id, :token => :token, :storage => :storage, :photo => :photo, :active => :active, :trial => :trial, :news_eanbled => :news_eanbled, :alerts_eanbled => :alerts_eanbled, :support_eanbled => :support_eanbled, :support_email => :support_email, :annotation_branded => :annotation_branded, :viewer_branded => :viewer_branded, :is_real_time_broadcast_enabled => :is_real_time_broadcast_enabled, :is_scroll_broadcast_enabled => :is_scroll_broadcast_enabled, :is_zoom_broadcast_enabled => :is_zoom_broadcast_enabled, :annotation_logo => :annotation_logo, :pointer_tool_cursor => :pointer_tool_cursor, :annotation_header_options => :annotation_header_options, :is_annotation_navigation_widget_enabled => :is_annotation_navigation_widget_enabled, :is_annotation_zoom_widget_enabled => :is_annotation_zoom_widget_enabled, :is_annotation_download_widget_enabled => :is_annotation_download_widget_enabled, :is_annotation_print_widget_enabled => :is_annotation_print_widget_enabled, :is_annotation_help_widget_enabled => :is_annotation_help_widget_enabled, :is_right_panel_enabled => :is_right_panel_enabled, :is_thumbnails_panel_enabled => :is_thumbnails_panel_enabled, :is_standard_header_always_shown => :is_standard_header_always_shown, :is_toolbar_enabled => :is_toolbar_enabled, :is_text_annotation_button_enabled => :is_text_annotation_button_enabled, :is_rectangle_annotation_button_enabled => :is_rectangle_annotation_button_enabled, :is_point_annotation_button_enabled => :is_point_annotation_button_enabled, :is_strikeout_annotation_button_enabled => :is_strikeout_annotation_button_enabled, :is_polyline_annotation_button_enabled => :is_polyline_annotation_button_enabled, :is_typewriter_annotation_button_enabled => :is_typewriter_annotation_button_enabled, :is_watermark_annotation_button_enabled => :is_watermark_annotation_button_enabled, :is_annotation_document_name_shown => :is_annotation_document_name_shown, :annotation_navigation_icons => :annotation_navigation_icons, :annotation_tool_icons => :annotation_tool_icons, :annotation_background_color => :annotation_background_color, :viewer_logo => :viewer_logo, :viewer_options => :viewer_options, :is_viewer_navigation_widget_enabled => :is_viewer_navigation_widget_enabled, :is_viewer_zoom_widget_enabled => :is_viewer_zoom_widget_enabled, :is_viewer_download_widget_enabled => :is_viewer_download_widget_enabled, :is_viewer_print_widget_enabled => :is_viewer_print_widget_enabled, :is_viewer_help_widget_enabled => :is_viewer_help_widget_enabled, :is_viewer_document_name_shown => :is_viewer_document_name_shown, :isviewer_right_mouse_button_menu_enabled => :isviewer_right_mouse_button_menu_enabled, :signedup_on => :signedupOn, :signedin_on => :signedinOn, :signin_count => :signin_count, :roles => :roles, :signature_watermark_enabled => :signature_watermark_enabled, :signature_desktop_notifications => :signature_desktop_notifications, :webhook_notification_retries => :webhook_notification_retries, :webhook_notification_failed_recipients => :webhook_notification_failed_recipients, :signature_color => :signature_color, :id => :id, :guid => :guid, :primary_email => :primary_email

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if UserInfo.attribute_map["nickname".to_sym] != nil
        name = "nickname".to_sym
        value = attributes["nickname"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["firstname".to_sym] != nil
        name = "firstname".to_sym
        value = attributes["firstname"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["lastname".to_sym] != nil
        name = "lastname".to_sym
        value = attributes["lastname"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["pkey".to_sym] != nil
        name = "pkey".to_sym
        value = attributes["pkey"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["pswd_salt".to_sym] != nil
        name = "pswd_salt".to_sym
        value = attributes["pswd_salt"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["claimed_id".to_sym] != nil
        name = "claimed_id".to_sym
        value = attributes["claimed_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["token".to_sym] != nil
        name = "token".to_sym
        value = attributes["token"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["storage".to_sym] != nil
        name = "storage".to_sym
        value = attributes["storage"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["photo".to_sym] != nil
        name = "photo".to_sym
        value = attributes["photo"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push arrayValue
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if UserInfo.attribute_map["active".to_sym] != nil
        name = "active".to_sym
        value = attributes["active"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["trial".to_sym] != nil
        name = "trial".to_sym
        value = attributes["trial"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["news_eanbled".to_sym] != nil
        name = "news_eanbled".to_sym
        value = attributes["news_eanbled"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["alerts_eanbled".to_sym] != nil
        name = "alerts_eanbled".to_sym
        value = attributes["alerts_eanbled"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["support_eanbled".to_sym] != nil
        name = "support_eanbled".to_sym
        value = attributes["support_eanbled"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["support_email".to_sym] != nil
        name = "support_email".to_sym
        value = attributes["support_email"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["annotation_branded".to_sym] != nil
        name = "annotation_branded".to_sym
        value = attributes["annotation_branded"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["viewer_branded".to_sym] != nil
        name = "viewer_branded".to_sym
        value = attributes["viewer_branded"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["is_real_time_broadcast_enabled".to_sym] != nil
        name = "is_real_time_broadcast_enabled".to_sym
        value = attributes["is_real_time_broadcast_enabled"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["is_scroll_broadcast_enabled".to_sym] != nil
        name = "is_scroll_broadcast_enabled".to_sym
        value = attributes["is_scroll_broadcast_enabled"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["is_zoom_broadcast_enabled".to_sym] != nil
        name = "is_zoom_broadcast_enabled".to_sym
        value = attributes["is_zoom_broadcast_enabled"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["annotation_logo".to_sym] != nil
        name = "annotation_logo".to_sym
        value = attributes["annotation_logo"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push arrayValue
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if UserInfo.attribute_map["pointer_tool_cursor".to_sym] != nil
        name = "pointer_tool_cursor".to_sym
        value = attributes["pointer_tool_cursor"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push arrayValue
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if UserInfo.attribute_map["annotation_header_options".to_sym] != nil
        name = "annotation_header_options".to_sym
        value = attributes["annotation_header_options"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["is_annotation_navigation_widget_enabled".to_sym] != nil
        name = "is_annotation_navigation_widget_enabled".to_sym
        value = attributes["is_annotation_navigation_widget_enabled"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["is_annotation_zoom_widget_enabled".to_sym] != nil
        name = "is_annotation_zoom_widget_enabled".to_sym
        value = attributes["is_annotation_zoom_widget_enabled"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["is_annotation_download_widget_enabled".to_sym] != nil
        name = "is_annotation_download_widget_enabled".to_sym
        value = attributes["is_annotation_download_widget_enabled"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["is_annotation_print_widget_enabled".to_sym] != nil
        name = "is_annotation_print_widget_enabled".to_sym
        value = attributes["is_annotation_print_widget_enabled"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["is_annotation_help_widget_enabled".to_sym] != nil
        name = "is_annotation_help_widget_enabled".to_sym
        value = attributes["is_annotation_help_widget_enabled"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["is_right_panel_enabled".to_sym] != nil
        name = "is_right_panel_enabled".to_sym
        value = attributes["is_right_panel_enabled"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["is_thumbnails_panel_enabled".to_sym] != nil
        name = "is_thumbnails_panel_enabled".to_sym
        value = attributes["is_thumbnails_panel_enabled"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["is_standard_header_always_shown".to_sym] != nil
        name = "is_standard_header_always_shown".to_sym
        value = attributes["is_standard_header_always_shown"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["is_toolbar_enabled".to_sym] != nil
        name = "is_toolbar_enabled".to_sym
        value = attributes["is_toolbar_enabled"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["is_text_annotation_button_enabled".to_sym] != nil
        name = "is_text_annotation_button_enabled".to_sym
        value = attributes["is_text_annotation_button_enabled"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["is_rectangle_annotation_button_enabled".to_sym] != nil
        name = "is_rectangle_annotation_button_enabled".to_sym
        value = attributes["is_rectangle_annotation_button_enabled"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["is_point_annotation_button_enabled".to_sym] != nil
        name = "is_point_annotation_button_enabled".to_sym
        value = attributes["is_point_annotation_button_enabled"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["is_strikeout_annotation_button_enabled".to_sym] != nil
        name = "is_strikeout_annotation_button_enabled".to_sym
        value = attributes["is_strikeout_annotation_button_enabled"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["is_polyline_annotation_button_enabled".to_sym] != nil
        name = "is_polyline_annotation_button_enabled".to_sym
        value = attributes["is_polyline_annotation_button_enabled"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["is_typewriter_annotation_button_enabled".to_sym] != nil
        name = "is_typewriter_annotation_button_enabled".to_sym
        value = attributes["is_typewriter_annotation_button_enabled"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["is_watermark_annotation_button_enabled".to_sym] != nil
        name = "is_watermark_annotation_button_enabled".to_sym
        value = attributes["is_watermark_annotation_button_enabled"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["is_annotation_document_name_shown".to_sym] != nil
        name = "is_annotation_document_name_shown".to_sym
        value = attributes["is_annotation_document_name_shown"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["annotation_navigation_icons".to_sym] != nil
        name = "annotation_navigation_icons".to_sym
        value = attributes["annotation_navigation_icons"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push arrayValue
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if UserInfo.attribute_map["annotation_tool_icons".to_sym] != nil
        name = "annotation_tool_icons".to_sym
        value = attributes["annotation_tool_icons"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push arrayValue
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if UserInfo.attribute_map["annotation_background_color".to_sym] != nil
        name = "annotation_background_color".to_sym
        value = attributes["annotation_background_color"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["viewer_logo".to_sym] != nil
        name = "viewer_logo".to_sym
        value = attributes["viewer_logo"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push arrayValue
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if UserInfo.attribute_map["viewer_options".to_sym] != nil
        name = "viewer_options".to_sym
        value = attributes["viewer_options"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["is_viewer_navigation_widget_enabled".to_sym] != nil
        name = "is_viewer_navigation_widget_enabled".to_sym
        value = attributes["is_viewer_navigation_widget_enabled"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["is_viewer_zoom_widget_enabled".to_sym] != nil
        name = "is_viewer_zoom_widget_enabled".to_sym
        value = attributes["is_viewer_zoom_widget_enabled"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["is_viewer_download_widget_enabled".to_sym] != nil
        name = "is_viewer_download_widget_enabled".to_sym
        value = attributes["is_viewer_download_widget_enabled"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["is_viewer_print_widget_enabled".to_sym] != nil
        name = "is_viewer_print_widget_enabled".to_sym
        value = attributes["is_viewer_print_widget_enabled"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["is_viewer_help_widget_enabled".to_sym] != nil
        name = "is_viewer_help_widget_enabled".to_sym
        value = attributes["is_viewer_help_widget_enabled"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["is_viewer_document_name_shown".to_sym] != nil
        name = "is_viewer_document_name_shown".to_sym
        value = attributes["is_viewer_document_name_shown"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["isviewer_right_mouse_button_menu_enabled".to_sym] != nil
        name = "isviewer_right_mouse_button_menu_enabled".to_sym
        value = attributes["isviewer_right_mouse_button_menu_enabled"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["signedup_on".to_sym] != nil
        name = "signedup_on".to_sym
        value = attributes["signedupOn"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["signedin_on".to_sym] != nil
        name = "signedin_on".to_sym
        value = attributes["signedinOn"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["signin_count".to_sym] != nil
        name = "signin_count".to_sym
        value = attributes["signin_count"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["roles".to_sym] != nil
        name = "roles".to_sym
        value = attributes["roles"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push RoleInfo.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if UserInfo.attribute_map["signature_watermark_enabled".to_sym] != nil
        name = "signature_watermark_enabled".to_sym
        value = attributes["signature_watermark_enabled"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["signature_desktop_notifications".to_sym] != nil
        name = "signature_desktop_notifications".to_sym
        value = attributes["signature_desktop_notifications"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["webhook_notification_retries".to_sym] != nil
        name = "webhook_notification_retries".to_sym
        value = attributes["webhook_notification_retries"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["webhook_notification_failed_recipients".to_sym] != nil
        name = "webhook_notification_failed_recipients".to_sym
        value = attributes["webhook_notification_failed_recipients"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["signature_color".to_sym] != nil
        name = "signature_color".to_sym
        value = attributes["signature_color"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["guid".to_sym] != nil
        name = "guid".to_sym
        value = attributes["guid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserInfo.attribute_map["primary_email".to_sym] != nil
        name = "primary_email".to_sym
        value = attributes["primary_email"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    UserInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

