# nenga
====

## 何をするのか
jsonファイルを読み込み、宛名を出力するためのtexファイル(letter_address.tex)を生成する。
その後、それをコンパイルしpdfファイルを得る。

## What do the application
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

# Requirement
jsonファイルの文字コードはutf-8とする。
クラスファイルとしてueokande/jletteraddressを使用している。

encoding of json file is utf-8.
the app use platex and dvipdfmx, also use the class ueokande/jletteraddress.
So, you need to get the class file from under github ripository.
[jletteraddress](https://github.com/ueokande/jletteraddress)

# Lisence
MIT
