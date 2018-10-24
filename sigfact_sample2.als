sig Host { }
sig Link {
	from, to: Host
}{
	// @をつけるとフィールド名を展開しなくなるらしい？
	some x: Link | x.@from = to and x.@to = from
	// some x: Link | x.from = to and x.to = from
}
pred show { }
run show
