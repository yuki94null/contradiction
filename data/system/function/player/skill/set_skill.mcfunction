# player/select_skill
    ## 返す
        $execute unless data storage .:system skill[{kinds:$(skill)}] run return run function system:log/error/add {error_id:"player.set_skill.undefined",error_info:"未定義のスキルです '$(skill)'"}
    ## マクロ
        ### 成形
            data remove storage .:system tmp
            data modify storage .:system tmp.UUID set from entity @s UUID
            $data modify storage .:system tmp.skill set value "$(skill)"
            scoreboard players set @s skill_ct -1
            scoreboard players set @s skill_charge 0
            function system:player/skill/alt_shift/kill_anchor with entity @s
        ### マクロ
            function system:player/skill/mcr_set_skill with storage .:system tmp