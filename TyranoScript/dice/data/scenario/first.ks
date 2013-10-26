@image storage ="room.jpg" page=fore layer=base

;-----------------------------------------------
*start
クリックで、サイコロ(1～6の乱数)を振ります[l][r]
[r]

;数字を変更することで、色々な乱数生成が可能です。
;1～10の乱数  f.dice=Math.floor(Math.random() * 10 + 1);
;1～20の乱数  f.dice=Math.floor(Math.random() * 20 + 1);
[iscript]
f.dice=Math.floor(Math.random() * 6 + 1);
[endscript]

;以下は分岐例です。
あなたが振ったサイコロは、
[if exp="f.dice==1"]
1でした。
[elsif exp="f.dice==2"]
2でした。
[elsif exp="f.dice>=3 && f.dice<=5"]
3～5でした。(具体的には、[emb exp="f.dice"]でした。)
[else]
6でした。
[endif]

[l][r]
[r]
サイコロをもう一度振ります。[p]
[jump target=*start]
;-----------------------------------------------
[s]