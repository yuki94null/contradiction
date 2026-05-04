$execute unless data storage .:log Output{EntityType:"minecraft:player"} run \
tellraw @s [\
{text:"[",color:gold},{color:white,text:"$(Index)"},{text:"] ",color:gold},{text:"\n"},\
\
{text:"    [",color:gold},{color:white,text:"Executed Entity"},{text:"] ",color:gold},{text:"\n"},\
\
{text:"        [",color:gold},{color:white,text:"EntityType"},{text:"] ",color:gold},\
{text:'"',color:white},{text:"$(EntityType)",color:green},{text:'"',color:white},{text:"\n"},\
\
{text:"        [",color:gold},{color:white,text:"Latest Tag"},{text:"] ",color:gold},\
{text:'"',color:white},{text:"$(Tag)",color:green},{text:'"',color:white},{text:"\n"},\
\
{text:"        [",color:gold},{color:white,text:"Pos"},{text:"] ",color:gold},\
{color:red,text:"X: $(x) ",click_event:{action:"run_command",command:"function system:log/output/function/tp/input"}},\
{color:green,text:"Y: $(y) ",click_event:{action:"run_command",command:"function system:log/output/function/tp/input"}},\
{color:blue,text:"Z: $(z) ",click_event:{action:"run_command",command:"function system:log/output/function/tp/input"}},\
{color:red,text:"RX: $(rx) ",click_event:{action:"run_command",command:"function system:log/output/function/tp/input"}},\
{color:green,text:"RY: $(ry) ",click_event:{action:"run_command",command:"function system:log/output/function/tp/input"}},{text:"\n"},\
\
{text:"[",color:gold},{color:white,text:"Preview",click_event:{action:"run_command",command:"function system:log/output/mcr_set_index {Type:'$(Type)',Coef:-1}"}},{text:"] ",color:gold},\
{text:"[",color:gold},{color:white,text:"/data get",click_event:{action:"suggest_command",command:"/data get storage .:log $(Type)[$(Index)]"}},{text:"] ",color:gold},\
{text:"[",color:gold},{color:white,text:"Next",click_event:{action:"run_command",command:"function system:log/output/mcr_set_index {Type:'$(Type)',Coef:1}"}},{text:"]",color:gold},\
]

$execute if data storage .:log Output{EntityType:"minecraft:player"} run \
tellraw @s [\
{text:"[",color:gold},{color:white,text:"$(Index)"},{text:"] ",color:gold},{text:"\n"},\
\
{text:"    [",color:gold},{color:white,text:"Executed Entity"},{text:"] ",color:gold},{text:"\n"},\
\
{text:"        [",color:gold},{color:white,text:"EntityType"},{text:"] ",color:gold},\
{text:'"',color:white},{text:"$(EntityType)",color:green},{text:'"',color:white},{text:"\n"},\
{text:"            [",color:gold},{color:white,text:"PlayerName"},{text:"] ",color:gold},\
{text:'"',color:white},{text:"$(PlayerName)",color:green},{text:'"',color:white},{text:"\n"},\
\
{text:"        [",color:gold},{color:white,text:"Latest Tag"},{text:"] ",color:gold},\
{text:'"',color:white},{text:"$(Tag)",color:green},{text:'"',color:white},{text:"\n"},\
\
{text:"        [",color:gold},{color:white,text:"Pos"},{text:"] ",color:gold},\
{color:red,text:"X: $(x) ",click_event:{action:"run_command",command:"function system:log/output/function/tp/input"}},\
{color:green,text:"Y: $(y) ",click_event:{action:"run_command",command:"function system:log/output/function/tp/input"}},\
{color:blue,text:"Z: $(z) ",click_event:{action:"run_command",command:"function system:log/output/function/tp/input"}},\
{color:red,text:"RX: $(rx) ",click_event:{action:"run_command",command:"function system:log/output/function/tp/input"}},\
{color:green,text:"RY: $(ry) ",click_event:{action:"run_command",command:"function system:log/output/function/tp/input"}},{text:"\n"},\
\
{text:"[",color:gold},{color:white,text:"Preview",click_event:{action:"run_command",command:"function system:log/output/mcr_set_index {Type:'$(Type)',Coef:-1}"}},{text:"] ",color:gold},\
{text:"[",color:gold},{color:white,text:"/data get",click_event:{action:"suggest_command",command:"/data get storage .:log $(Type)[$(Index)]"}},{text:"] ",color:gold},\
{text:"[",color:gold},{color:white,text:"Next",click_event:{action:"run_command",command:"function system:log/output/mcr_set_index {Type:'$(Type)',Coef:1}"}},{text:"]",color:gold},\
]