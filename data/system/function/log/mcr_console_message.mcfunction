# log/error/send_error_message
    ## 送るテキストを成形
        $function system:function/send_console_message/input {text:'$(text) error_id: "$(error_id)",error_info: "$(error_info)", entity: "$(entity_type)", Num:"$(num)"'}