# xeij-maven

## これはなに？

[XEiJ](https://stdkmd.net/xeij/) を Maven でビルドするための設定ファイル一式です。

## 使い方

```bash
# XEiJ のアーカイブをダウンロードして展開する（下記は 0.26.06.08 の例）
$ wget https://stdkmd.net/xeij/XEiJ_0260608.zip && unzip XEiJ_0260608.zip

# Java ソースを書き換える（リソースファイルへのアクセスを相対パスから絶対パスに変更）
$ mvn -Preplace-data-path process-sources

# ビルドする
$ mvn clean package
```

## ビルド成果物（`target/XEiJ.jar`）について

`target/XEiJ.jar` には jSerialComm が含まれているため、XEiJ 実行時に `jSerialComm-*.jar` を別途用意する必要はありません。

## `.vscode/sample.*.json` について

Visual Studio Code での開発に使う `launch.json` と `tasks.json` のサンプルです。

- デバッグ実行前に `mvn compile` を実行します
- `XEiJ.ini` は `.vscode/` ディレクトリに保存されます

## 蛇足

Windows の場合、Java ランタイムや Maven のインストールには [Scoop](https://scoop.sh/) が便利です。

## ライセンス

ご自由にどうぞ。

## 連絡先

https://github.com/68fpjc/xeij-maven

本リポジトリは、XEiJ の作者である Makoto Kamada さんとは無関係です。
