# log/error/send_error_message
    ## 送るテキストを成形
        $function system:function/send_console_message/input {Text:'エラーが検知されました ErrorID: "$(ErrorID)",ErrorInfo: "$(ErrorInfo)", Entity: "$(EntityType)", Num:"$(Num)"'}