#!/bin/bash

tmp=/tmp/$$ # 現在のシェルプロセス番号の名前


ERROR_EXIT () {
    cat $tmp-error # エラー内容出力
    rm -f $tmp-* # tmpファイル削除
    exit 1 # エラー終了
}

# テスト開始
echo "test1-1:正常系"
./kadai4.sh 5 10 > $tmp-result
echo "5" > $tmp-ans
diff $tmp-result $tmp-ans || echo "error in test1-1" >> $tmp-error

echo "test1-2:正常系"
./kadai4.sh 21 14 > $tmp-result
echo "7" > $tmp-ans
diff $tmp-result $tmp-ans || echo "error in test1-2" >> $tmp-error

echo "test2-1:異常系(引数なし)"
./kadai4.sh > $tmp-result
echo "引数の数が２つではありません。" > $tmp-ans
diff $tmp-result $tmp-ans || echo "error in test2-1" >> $tmp-error

echo "test2-2: 異常系(引数一つ)"
./kadai4.sh 21 > $tmp-result
echo "引数の数が２つではありません。" > $tmp-ans
diff $tmp-result $tmp-ans || echo "error in test2-2" >> $tmp-error

echo "test2-3: 異常系(引数が自然数ではない)"
./kadai4.sh -21 14 > $tmp-result
echo "引数が自然数ではありません。" > $tmp-ans
diff $tmp-result $tmp-ans || echo "error in test2-3" >> $tmp-error

echo "test2-4: 異常系(引数に文字列が含まれる場合)"
./kadai4.sh 21 abc > $tmp-result
echo "引数が自然数ではありません。" > $tmp-ans
diff $tmp-result $tmp-ans || echo "error in test2-4" >> $tmp-error

echo "test2-5: 異常系(引数が3つ)"
./kadai4.sh 21 14 7 > $tmp-result
echo "引数の数が２つではありません。" > $tmp-ans
diff $tmp-result $tmp-ans || echo "error in test2-5" >> $tmp-error

# テストでエラーの場合、エラー内容出力
if [ -f $tmp-error ]; then
    ERROR_EXIT
fi
