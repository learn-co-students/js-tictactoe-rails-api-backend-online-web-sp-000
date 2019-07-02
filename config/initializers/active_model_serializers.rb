ActiveModelSerializers.config.tap do |m|
    m.adapter = :json_api
    m.jsonapi_include_toplevel_object = true
    m.jsonapi_version = "1.0"
  end 
