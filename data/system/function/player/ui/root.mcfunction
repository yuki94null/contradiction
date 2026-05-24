# スキル
# ]-[||||||||||||||||||||]- 10/15 12/30 [+] 0 -[||||||||||||||||||||]-[
# ]-[||||||||||||||||||||]- 10/15 12/30 [+] 0 -[||||||||||||||||||||]-[

title @s actionbar \
[                                               \
    {                                           \
    translate:".",\
    color:gold,\
    with:[\
            {\
                text:""\
            },\
            {\
                score:\
                {\
                    name:"@s",\
                    objective:"bullet_count"\
                },\
            },\
            {\
                nbt:"magazine",\
                storage:".:system"\
            },\
            {\
                score:\
                {\
                    name:"@s",\
                    objective:"total_bullet_count"\
                }\
            },\
            {\
                nbt:"portable_bullet",\
                storage:".:system"\
            },\
            {\
                score:\
                {\
                    name:"@s",\
                    objective:"skill_charge"\
                }\
            },\
            {\
                text:""\
            },\
        ]\
    }\
]
