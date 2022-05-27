## Doc

## rails newまでの道のり

以下のコミット参照

https://github.com/T-unity/rails-da/commit/a3e8317d4f558224178b61236fe600b098edc5e9
https://github.com/T-unity/rails-da/commit/c132a1d59186f262f205b4b69c6ef1c51b43c225

`$ docker-compose run web rails new . --force --no-deps --database=mysql`
`$ docker-compose build`

 ## rails newの後

以下のコミット参照

・rails newで自動生成されるファイル群
https://github.com/T-unity/rails-da/commit/03f18852910b441ae7969b248574b0f0835ba183

・DB接続情報を追記する
https://github.com/T-unity/rails-da/commit/e1b0b724686282cfa1288cf3baa0b2cd70573e2c

・その後以下コマンド実行

`$ docker-compose run web rails db:create`
`$ docker-compose up`

## slimテンプレートの記法

書き方は以下を参照

https://github.com/slim-template/slim/blob/master/README.jp.md

## gemを追加したい時。

  1. 追加したいgemをGemfileに記述する。
  1. webコンテナに入ってbundle installする。（Dockerfileの中で`bundle install`してるからこれいらないかも。）
  1. コンテナを再ビルド（`docker-compose build`）

## Doc

 - アクティブレコードについて

 https://railsguides.jp/active_record_basics.html

 - Active Record マイグレーション

https://railsguides.jp/active_record_migrations.html
