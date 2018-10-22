// インスタンス生成されたオブジェクトの抽象化してみる
// PersonクラスはNameとAgeを持っている的な表現
// ただ、もっといい表現がある気がする
module class_instans
abstract sig Object {} 
one sig Person{
	name: Object one -> one Name,
	Age: Object one -> one Age
} 
sig Name {}
sig Age {
	age_int: one Int
}
pred show {}

run show
