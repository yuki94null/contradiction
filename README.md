
# contradiction

剣と銃を用いて戦う乱闘PvP

最小は 1v1 で、チーム戦はない

剣を持っている相手には剣による攻撃は通らず、
銃を持っている相手には銃による攻撃が通らない

お互いに違う武器種を持っているときのみダメージを与えることができる

## 構想

インファイトがメインコンテンツで、一応スナイパーも作るが強くなりすぎないようにする

武器の組み合わせはロードアウト形式で、ユーザーが組むことはできない

ロードアウトとは別に移動スキルを選ぶことができる

銃の弾は剣を持っている間に時間経過で回復していく
敵を剣で攻撃すると弾のチャージが加速する(残りチャージ時間が減少する)
-> これによって剣での攻撃を誘発する

攻撃判定を自作する
interactionで覆ってレイキャストで判定
-> 範囲攻撃や奥行き攻撃なども可能

銃の仕様

- `bullet_speed`
- `fall_angle`
- `diffusion_angle`
- `bullet_damage`
- `gun_ct`
- `reload_time`
- `magazine`
- `portable_bullet`(の最大値)
- `add_bullet`(melee側)

弾は1tickで`bullet_speed`分進む
毎ティック`fall_angle`分下を向き、落下する
射撃時に最大で`rx`,`ry`がともに+-`diffusion_angle`分傾く

ヒット時には`bullet_damage`分のダメージが入る

射撃した後には`gun_ct`分の射撃クールタイムが入り、時間が立つまでは射撃できない

リロードは、剣を持っているときかつ、`portable_bullet`(今回はスコア)が存在するときにのみ行われる
剣を持って`reload_time`tick経過すると最大で`magazine`分までリロードされる
リロードするとリロードした分だけ`portable_bullet`を消費する
`portable_bullet`を貯めるには、剣で攻撃を当てる必要がある
剣で攻撃を当てると、`add_bullet`分だけ`poartable_bullet`に加算される
銃を持ったときに`poartable_bullet`(スコア)を`poartable_bullet`(最大値)に丸める

### 武器組み合わせ案

射程と威力は反比例し、
それぞれのロードアウトの剣と銃の射程の比率を足したときにだいたい等しくなるようにする
※ただし射程距離であって射程範囲でない

銃 : 剣 (射程比率)

- "knight" pistle : spear (0:2) 槍が主体なもののピストルでけん制もできる
- "breaker" sg : axe (0.5:0.5) // 火力が高いため射程でトレードオフ
- "duelist" smg : sword (1.00:1.00) // 標準
- "suppressor" ar : scythe (1.25:0.75) // scytheは射程が短い代わりに攻撃有効範囲が広い
- "assassin" sr : knife (2:0) // srで削ってナイフで決めに行く

### 懸念点

- 勝利条件をしっかりしないとインファイトが発生しない(逃げるが勝ちになりかねない)
- ラグによる判定破壊

## お借りしたLibrary

柔軟なエンティティの範囲指定 `km-bounding` (`https://github.com/komaramune/km-bounding`)
プレイヤーにモーションをかける `p_motion` (`https://github.com/Hirobao1/CustomEnchant_PlayerMotion`)
