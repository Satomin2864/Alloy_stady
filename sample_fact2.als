sig Object {}
sig Directory extends Object {
	contents: set Object
}
one sig Root extends Directory {}
sig File extends Object {}
fact {
	// 部分集合(in), 推移閉包(^), ドット記法(,)?
	// ディレクトリからディレクトリへの関連はない
	no d: Directory | d in d.^contents
	// 反射的推移(*)
	Object in Root.*contents
	// 転置(~)
	// 全てのObjectは0個か1個のcontentsの関係をもつ
	// contentsを持てるのはDirectoryとRoot
	// なので、DirectoryとRootだけ、次の要素を持つことができる
	// 逆に、ObjectとFileは終端以外はありえない
	all o:Object | lone o.~contents
}
pred show {}
run show 
