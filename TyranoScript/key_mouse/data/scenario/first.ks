@image storage ="room.jpg" page=fore layer=base
@wait time = 200

*start
;OFF
[cm]
キーボードとマウス操作を無効化します。[l]
[iscript]
$(document).off("keyup");
$(document).off("mousedown");
[endscript]

[cm]
無効化しました。[l][r]
[r]
次に、キーボードとマウス操作を有効化します。[l][r]
;ON
[iscript]
tyrano.plugin.kag.key_mouose.init();
[endscript]

[cm]
有効化しました。[l][r]
[r]
最初に戻ります。[l]

[jump target=*start]
[s]
