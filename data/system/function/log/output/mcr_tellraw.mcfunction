$execute unless data storage .:log output{entity_type:"minecraft:player"} run \
tellraw @s [\
{text:"[",color:gold},{color:white,text:"$(index)"},{text:"] ",color:gold},{text:"\n"},\
\
{text:"    [",color:gold},{color:white,text:"Executed entity"},{text:"] ",color:gold},{text:"\n"},\
\
{text:"        [",color:gold},{color:white,text:"entity_type"},{text:"] ",color:gold},\
{text:'"',color:white},{text:"$(entity_type)",color:green},{text:'"',color:white},{text:"\n"},\
\
{text:"        [",color:gold},{color:white,text:"Latest tag"},{text:"] ",color:gold},\
{text:'"',color:white},{text:"$(tag)",color:green},{text:'"',color:white},{text:"\n"},\
\
{text:"        [",color:gold},{color:white,text:"Pos"},{text:"] ",color:gold},\
{color:red,text:"X: $(x) ",click_event:{action:"run_command",command:"function system:log/output/function/tp/input"}},\
{color:green,text:"Y: $(y) ",click_event:{action:"run_command",command:"function system:log/output/function/tp/input"}},\
{color:blue,text:"Z: $(z) ",click_event:{action:"run_command",command:"function system:log/output/function/tp/input"}},\
{color:red,text:"rX: $(rx) ",click_event:{action:"run_command",command:"function system:log/output/function/tp/input"}},\
{color:green,text:"rY: $(ry) ",click_event:{action:"run_command",command:"function system:log/output/function/tp/input"}},{text:"\n"},\
\
{text:"[",color:gold},{color:white,text:"Preview",click_event:{action:"run_command",command:"function system:log/output/mcr_set_index {type:'$(type)',coef:-1}"}},{text:"] ",color:gold},\
{text:"[",color:gold},{color:white,text:"/data get",click_event:{action:"suggest_command",command:"/data get storage .:log $(type)[$(index)]"}},{text:"] ",color:gold},\
{text:"[",color:gold},{color:white,text:"Next",click_event:{action:"run_command",command:"function system:log/output/mcr_set_index {type:'$(type)',coef:1}"}},{text:"]",color:gold},\
]

$execute if data storage .:log output{entity_type:"minecraft:player"} run \
tellraw @s [\
{text:"[",color:gold},{color:white,text:"$(index)"},{text:"] ",color:gold},{text:"\n"},\
\
{text:"    [",color:gold},{color:white,text:"Executed entity"},{text:"] ",color:gold},{text:"\n"},\
\
{text:"        [",color:gold},{color:white,text:"entity_type"},{text:"] ",color:gold},\
{text:'"',color:white},{text:"$(entity_type)",color:green},{text:'"',color:white},{text:"\n"},\
{text:"            [",color:gold},{color:white,text:"player_name"},{text:"] ",color:gold},\
{text:'"',color:white},{text:"$(player_name)",color:green},{text:'"',color:white},{text:"\n"},\
\
{text:"        [",color:gold},{color:white,text:"Latest tag"},{text:"] ",color:gold},\
{text:'"',color:white},{text:"$(tag)",color:green},{text:'"',color:white},{text:"\n"},\
\
{text:"        [",color:gold},{color:white,text:"Pos"},{text:"] ",color:gold},\
{color:red,text:"X: $(x) ",click_event:{action:"run_command",command:"function system:log/output/function/tp/input"}},\
{color:green,text:"Y: $(y) ",click_event:{action:"run_command",command:"function system:log/output/function/tp/input"}},\
{color:blue,text:"Z: $(z) ",click_event:{action:"run_command",command:"function system:log/output/function/tp/input"}},\
{color:red,text:"rX: $(rx) ",click_event:{action:"run_command",command:"function system:log/output/function/tp/input"}},\
{color:green,text:"rY: $(ry) ",click_event:{action:"run_command",command:"function system:log/output/function/tp/input"}},{text:"\n"},\
\
{text:"[",color:gold},{color:white,text:"Preview",click_event:{action:"run_command",command:"function system:log/output/mcr_set_index {type:'$(type)',coef:-1}"}},{text:"] ",color:gold},\
{text:"[",color:gold},{color:white,text:"/data get",click_event:{action:"suggest_command",command:"/data get storage .:log $(type)[$(index)]"}},{text:"] ",color:gold},\
{text:"[",color:gold},{color:white,text:"Next",click_event:{action:"run_command",command:"function system:log/output/mcr_set_index {type:'$(type)',coef:1}"}},{text:"]",color:gold},\
]