# スキル
# ]-[||||||||||||||||||||]- 10/15 12/30 [+] 0 -[||||||||||||||||||||]-[
# ]-[||||||||||||||||||||]- 10/15 12/30 [+] 0 -[||||||||||||||||||||]-[

    ## 銃のデータゲット
        data remove storage .:system tmp
        data modify storage .:system tmp set from entity @s Inventory[{Slot:1b}].components."minecraft:custom_data".weapon
        function system:player/mcr_copy_data with storage .:system tmp
    
    
    ## 選択してるやつを取得
        function system:player/get_selected with entity @s
    ## スキル名からデータを取得
        function system:player/skill/mcr_set_data with storage .:system tmp

    ## データ整形
        ### リロード時間
            data modify storage .:function ratio_ui_generator.input_0 set from storage .:system tmp.weapon.reload_time
            execute store result storage .:function ratio_ui_generator.input_1 int 1.0 run scoreboard players get @s reload_time
            function system:function/ratio_ui_generator/root
            data modify storage .:system tmp.ui.reload set from storage .:function ratio_ui_generator.result

        ### 弾数
            execute store result score $tmp global store result storage .:function ratio_ui_generator.input_0 int 1.0 run data get storage .:system tmp.skill.skill_ct 1.0
            execute store result storage .:function ratio_ui_generator.input_1 int 1.0 run scoreboard players operation $tmp global -= @s skill_ct
            function system:function/ratio_ui_generator/root
            data modify storage .:system tmp.ui.skill_ct set from storage .:function ratio_ui_generator.result

title @s actionbar \
[                                               \
    {                                           \
    translate:"ui",\
    color:gold,\
    with:[\
            {\
                nbt:"tmp.ui.reload",\
                storage:".:system",\
                interpret:true\
            },\
            {\
                score:\
                {\
                    name:"@s",\
                    objective:"bullet_count"\
                },\
            },\
            {\
                nbt:"tmp.weapon.magazine",\
                storage:".:system",\
                color:"green"\
            },\
            {\
                score:\
                {\
                    name:"@s",\
                    objective:"total_bullet_count"\
                }\
            },\
            {\
                nbt:"tmp.weapon.portable_bullet",\
                storage:".:system",\
                color:"green"\
            },\
            {\
                score:\
                {\
                    name:"@s",\
                    objective:"skill_charge"\
                }\
            },\
            {\
                nbt:"tmp.ui.skill_ct",\
                storage:".:system",\
                interpret:true\
            },\
        ]\
    }\
]
