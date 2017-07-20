name "APIServer"
description "API server's Role'"
run_list "recipe[gcitCB::installJava8]", "recipe[gcitCB::gitDownload]", "recipe[gcitCB::runApp]"
override_attributes({
  "starter_name" => "akbar hosseinkhani"
})
