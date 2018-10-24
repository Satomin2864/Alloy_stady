// Alloy本のP115の下のfact例
// 信号灯システムをモデル化
// 全ての状態で各交差点には赤を示す信号がある

// 灯の状態
sig LightState {
	// 何色に光っているかを表している
	color: Light -> one Color
}

// 灯
sig Light { }

// 色(抽象概念)
abstract sig Color { }

// 各色が１つずつある
one sig Red, Yellow, Green extends Color { }

// 交差点
sig Junction {
	// 任意の個数のライトが交差点にはある
	lights: set Light
}
fact {
	// 全てのライトの状態とジャンクションは
	all s: LightState, j: Junction |
	// LightStateからRedへの関係があり、
	// 交差点に存在するLight(lightsの関係を持ってる)ものを、
	// 1つ以上含むようにする
	some s.color.Red & j.lights
}

pred show { }
run show
