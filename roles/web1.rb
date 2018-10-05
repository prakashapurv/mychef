name 'Web'
description 'Web SErverb Role'
run_list "recipe[Workstation]","recipe[Apache]"
default_attributes 'apache-test' => {

'attribute1' => 'Hello from Attribute1',
'attribute2' => 'Hello from Attribute2'

}

