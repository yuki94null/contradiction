
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
射撃時に最大で`diffusion_angle`を係数に円形の範囲で`rx`・`ry`がランダムに傾く
このときリコイルはつけない

ヒット時には`bullet_damage`分のダメージが入る
貫通して複数ヒットも可能

射撃した後には`gun_ct`分の射撃クールタイムが入り、時間が立つまでは射撃できない

リロードは、剣を持っているときかつ、`portable_bullet`(今回はスコア)が存在するときにのみ行われる
剣を持って`reload_time`tick経過すると最大で`magazine`分までリロードされる
リロードするとリロードした分だけ`portable_bullet`を消費する
`portable_bullet`を貯めるには、剣で攻撃を当てる必要がある
剣で攻撃を当てると、`add_bullet`分だけ`poartable_bullet`に加算される
銃を持ったときに`poartable_bullet`(スコア)を`poartable_bullet`(最大値)に丸める

ホットバー右端に顔面と耐久値体力を表示
順番はキル数ランキング

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

## 仕様

近距離武器`melee`と遠距離武器`gun`を用いて戦う乱闘PvP

最小は 1v1 最大は 1v1v1v1 でチーム戦はない

`melee`の相手には`melee`による攻撃は通らず、
`gun`の相手には`gun`による攻撃が通らない

お互いに違う武器種を持っているときのみダメージを与えることができる

### ゲーム

#### join

1. joinしたやつ速い順に4人
2. joinしたやつからランダムで4人

### UI

ホットバー右側からキル数順にプレイヤーヘッドを配置する

### 武器

ロードアウト単位で選択する

#### ロードアウト

射程と威力は反比例し、
それぞれのロードアウトの剣と銃の射程の比率を足したときにだいたい等しくなるようにする
※ただし射程距離であって射程範囲でない

銃 : 剣 (射程比率想定)

- "knight" pistle : spear (0:2) // 槍が主体なもののピストルでけん制もできる
- "breaker" sg : axe (0.5:0.5) // 火力が高いため射程でトレードオフ
- "duelist" smg : sword (1.00:1.00) // 標準
- "suppressor" ar : scythe (1.25:0.75) // scytheは射程が短い代わりに攻撃有効範囲が広い
- "assassin" sr : knife (2:0) // srで削ってナイフで決めに行く

#### 近距離武器

武器一覧

1. spear
2. axe
3. sword
4. scythe
5. knife

以下のデータを使う

- `kinds` // 武器の種類
- `melee_damage` // ヒット時のダメージ
- `melee_ct` // 次打撃までのtick数
- `add_bullet` // ヒット時に`portable_bullet`に加算される１単位の数
- `km_bounding` // ライブラリによって提供される当たり判定のサイズ

```melee_data_ex.json
{
melee:{kinds:"spear",melee_damage:1.0,melee_ct:8,add_bullet:2,km_bounding:{x_plus:0.5d,z_plus:7.5d,x_minus:0.5d}}
}
```

#### 遠距離武器

武器一覧

1. pistle
2. sg
3. smg
4. ar
5. sr

以下のデータを使う

- `kinds` // 武器の種類
- `fall_angle` // 弾が1tickに傾く角度数
- `diffusion_angle` // 武器ごとの射撃ブレの比
- `bullet_damage` // ヒット時のダメージ
- `bullet_speed` // 弾が1tickに進むブロック数
- `gun_ct` // 次射撃までのtick数
- `reload_time` // リロードにかかる時間
- `portable_bullet` // 近接ヒット時に蓄積する弾数の最大数
- `magazine` // リロード時の最大弾数
- `simu_shots` // 同時に射出される弾の数(通常はsgのみ)

```gun_data_ex.json
{
gun:{kinds:"pistle",fall_angle:3,diffusion_angle:2,bullet_damage:5,bullet_speed:5,gun_ct:4,reload_time:5,portable_bullet:16,magazine:8,simu_shots:1}
}
```

弾は1tickで`bullet_speed`分進む
毎ティック`fall_angle`分下を向き、落下する
射撃時に最大で`diffusion_angle`を係数に円形の範囲で`rx`・`ry`がランダムに傾く
このときリコイルはつけない

ヒット時には`bullet_damage`分のダメージが入る
貫通して複数ヒットも可能

射撃した後には`gun_ct`分の射撃クールタイムが入り、時間が立つまでは射撃できない

リロードは、剣を持っているときかつ、`portable_bullet`(今回はスコア)が存在するときにのみ行われる
剣を持って`reload_time`tick経過すると最大で`magazine`分までリロードされる
リロードするとリロードした分だけ`portable_bullet`を消費する
`portable_bullet`を貯めるには、剣で攻撃を当てる必要がある
剣で攻撃を当てると、`add_bullet`分だけ`poartable_bullet`に加算される
銃を持ったときに`poartable_bullet`(スコア)を`poartable_bullet`(最大値)に丸める

### 移動スキル

- ct

移動スキル一覧

1. blink
2. tp
3. ex
4. wayback
5. sprint

#### blink

視点方向を基準に、発動時のキー入力を元に加速度を与える
backwardキーの場合は上向きのベクトルになる

#### alt shift

sneakで使用すると現在地にアンカーを配置する
これはスキル使用に含まない

アンカーを配置した状態でスキルを使用するとアンカーの位置・角度にtpする

アンカーが存在しない状態でスキルを使用した場合はスキル使用に含まれない

死亡時もアンカーは保持される

#### bailout

グローバル平面に並行なローカル座標で後ろ上方に加速度を与える
着地する前にもう一度入力をすることで、移動入力をもとにもう一度加速する

#### fade assult

レイキャストを飛ばし、当てたプレイヤーの背後にtpする
外した場合もスキル使用判定となる

#### accele

数秒間スピードアップのバフを得る

死亡するとバフが切れる

## お借りしたLibrary

柔軟なエンティティの範囲指定 `km-bounding` (`https://github.com/komaramune/km-bounding`)
プレイヤーにモーションをかける `p_motion` (`https://github.com/Hirobao1/CustomEnchant_PlayerMotion`)
視点先のブロックの位置にする `block_exploration01` (`https://github.com/MCJE-Tech-Community/Datapack-WIki`)
