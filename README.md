# nenga
====

## 何をするのか
JSONファイルを読み込み、宛名を出力するためのtexファイル(letter_address.tex)を生成する。
その後、それをコンパイルしpdfファイルを得る。

You passed the argument json file, the application make address side of letter.

# Usage
git pull https://github.com/homedm/json2tex-address-letter 

send.jsonを好きなように書き換えます。
このファイル名は自分の好きな名前に変更してもかまいません。

You edit the send.json which you want to write, could rename the file name like.

./atena send.json

pdfファイル(letter_address.pdf)を開いて確認します。

open the pdf file "letter_address.pdf".

sigmantation faultが出た場合はjsonファイルの形式が間違っている可能性が高いのでjsonファイルを見直してみてください。

if the application shows "simantation fault", format of json file may be wrong.

# Output PDF
![output.pdf](letter_address.pdf)

# input JSON File Example
``` send.json
{
		"send":[
				{
						"name": {
								"first": "秀吉",
								"last": "豊臣"
						},
						"address": {
								"postal_code": 123456,
								"prefectures": "東京",
								"cities": "大手町 1-1-1",
								"apartment": "読売新聞社 123螳､"
						}
				},
				{
						"name": {
								"first": "家康",
								"last": "徳川"
						},
						"address":{
								"postal_code": 789123,
								"prefectures": "大阪県",
								"cities": "大阪市 2-3-4",
								"apartment": "姫路乗 456"
						}
				}
		],
		"self": {
				"name": {
						"first": "純一",
						"last": "高橋"
				},
				"address": {
						"postal_code": 456789,
						"prefectures": "千葉県",
						"cities": "千葉市 1-1-1",
						"apartment": ""
				}
		}
}
```

# Requirement
jsonファイルの文字コードはutf-8とする。
クラスファイルとしてueokande/jletteraddressを使用している。

encoding of json file is utf-8.
the app use platex and dvipdfmx, also use the class ueokande/jletteraddress.
So, you need to get the class file from under github ripository.
[jletteraddress](https://github.com/ueokande/jletteraddress)

# Lisence
MIT
