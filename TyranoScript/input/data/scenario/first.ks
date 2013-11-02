@image storage ="room.jpg" page=fore layer=base
@wait time = 200

*show_input_yourname
[edit left=130 width=150 top=300 name="sf.yourname1"]
[locate x=200 y=200]
[edit left=330 width=160 top=300 name="sf.yourname2"]
[locate x=200 y=200]

[iscript]
//デフォルトの名前
$("input[name='sf.yourname1']").val("ティラノ");
$("input[name='sf.yourname2']").val("太郎");
[endscript]
;editとlinkは干渉してクリックできなくなるので、buttonがオススメです
[button graphic="kettei.gif" target=*ck_name x=215 y=350]
[s]

*ck_name
;入力内容を確定します
;commitするとバグる為、コメントアウト
;[commit]
[iscript]
//Javascriptでティラノのバグを回避
sf.yourname1 = $("input[name='sf.yourname1']").val()
sf.yourname2 = $("input[name='sf.yourname2']").val()
[endscript]
[nowait]
[cm]

;空白部分があるとき,名前が未入力の場合
[if exp="sf.yourname1=='' || sf.yourname2==''"]
名前はえーっと[l][cm]
@jump target=*show_input_yourname
[endif]

;名前の最終確認
*ck_name2
[cm]
君の名前は[emb exp=sf.yourname1] [emb exp=sf.yourname2]ちゃんだね。[r]
合ってるかな～？[r]
[r]
[link target=*ck_OK]はい[endlink][r]
[link target=*ck_NG]ちがいます[endlink]
[s]

*ck_OK
[cm]
[emb exp=sf.yourname1] [emb exp=sf.yourname2]ちゃん[r]
よろしくね～[l][cm]
[s]

*ck_NG
[cm]
あれれ？間違えちゃったか～[r]
ごめんね～。もう一度教えてくれるかな～[l][cm]
@jump target=*show_input_yourname
[s]