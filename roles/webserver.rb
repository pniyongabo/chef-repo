name "starter"
description "An example Chef role"
run_list "recipe[apache]"
override_attributes({
  "starter_name" => "akbar hosseinkhani"
})
