# game/hotbar/mcr_set_health_indicator
    ## アイテムデータを改変
        $item modify entity @a[tag=player] hotbar.$(index) [{function:"fill_player_head",entity:"this"},{function:"set_components",components:{damage:$(damage),max_damage:10000,item_name:[{text:"$(name)",color:gold}],max_stack_size:1}}]
