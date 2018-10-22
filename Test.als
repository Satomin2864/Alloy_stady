// Qiitaの記事で多重度指定の確認を行う
// 記事のURL: https://qiita.com/cutsea110/items/18f743f57c2d2bd9460b

module Test

sig X {
	rel: Y -> Z
}
sig Y { }
sig Z { }

pred show {}
// exactlyは指定した要素の個数を指定する
// 下記の書き方だと、Xは1個、Yは2個、Zは2個だけ必ず出現する事を示す
run show for exactly 1 X, exactly 2 Y, exactly 2 Z
