// Alloy本、シグネイチャファクトの最後の説明
// BookはNameからのaddressの関係を持つ。
// addressはhomeAddressかworkAddressに該当している?
/*
sig Book {
	homeAddress, workAddress: Name -> Addr,
	address: homeAddress + workAddress
}
*/
// 下記は上の宣言と同じ意味らしい
sig Book {
	homeAddress, workAddress, address: Name -> Addr
}{
	address in homeAddress + workAddress
}


sig Name, Addr { }
pred show { }
run show { }
