# namie-analytics-dashboard

[![Build Status](https://travis-ci.org/codefornamie/namie-analytics-dashboard.svg?branch=master)](https://travis-ci.org/codefornamie/namie-analytics-dashboard)

浪江タブレット事業のデータ分析管理画面

## このプログラムについて

浪江タブレット事業で集めているログを統合して分析する管理画面です。

* S3にあるnginxのアクセスログ
* MDM(ソフトバンクの端末管理サービス)の端末一覧情報
* 端末キッティング時のマスタ情報(配送日、利用開始日、利用者の避難先都道府県など)
* Google AnalyticsのデータをAPI経由でインポート

## インストール

一般的なRuby on Railsプロジェクトです。

* Rubyバージョン: 2.0.0
* Railsバージョン: 4.0.0

## ライセンス

Apache 2.0
