// factの挙動のお勉強
// 参考はAlloy本のP.114
// モデル化を行うのは
// 周波数帯域が重ならないラジオ局

// ラジオステーション
sig RadioStation {
	// 帯域(band)という関係がは高周波(Freq)と
	// 任意の個数(set)存在することを示している
	band: set Freq
}
sig Freq {}

// 今回の肝はここ
// NoOverlappingって名前の、常に成り立つ制約
fact NoOverlapping {
	// dijiはお互いが互いに素であるを表す
	no disj s, s' : RadioStation | 
	// 1つ以上(some)
	// かつ(&) 
	// s.bandはRadioStationからFreqへのbandの関係
	// 下記の文で示していることは、RadioStationのsとs'が
	// 同じFreqへのbandという関係を持っているという定義
	// ただし、冒頭 「no」で反転されている
	// 結果、異なるRadioStationは同じFreqへのbandを持たない
	// ことを前提としている
	some s.band & s'.band
}
pred show { }
run show
