// Alloy本のP116のシグネイチャファクトの例２
// リンクが常に逆向きリンクと組みになっているネットワーク(らしい
// よく分かってない
sig Host { }
sig Link {
	from, to: Host
}{
	// @をつけるとフィールド名を展開しなくなるらしい？
	// @の使い方がよくわからないので、ちょい後でも確認する
	some x: Link | x.@from = to and x.@to = from
	// some x: Link | x.from = to and x.to = from
}
pred show { }
run show
