// Alloy本のP116のシグネイチャファクトの話
// sigの後にfactを書くことで簡潔にかける
/*
sig Host{ }
sig Link {
	from, to: Host
}
fact {
	all x: Link | x.from != x.to
}
*/
//上記の分は以下と文と同義である
sig Host { }
sig Link {
	from, to: Host
}{
	from != to
}
pred show { }
run show
