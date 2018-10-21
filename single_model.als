// MVCのModelを表現してみる
// とりあえず、外部キーを持たないテーブルを表現
// 今回、表現するテーブルはmodels_single.pyに書かれてる
// あと、一旦テーブルのデータは1つにする(抽象化？)
one sig Person {
	name: one Name,
	age: one Age,
	sex: one Sex,
	birthday: one Birthday,
}
sig Name { }
sig Age {
	age: one Int
}
sig Birthday { }
sig Sex { }
run show {}
