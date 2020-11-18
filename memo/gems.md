- gem 
```
独立した機能
javaのjar,package maven install
goのmodule go get mod

#groupで環境ごとに設定可能
group :production do
  gem 'rack-attack'
end
```

- devise
```
会員登録からログイン認証が必要なページの管理等が容易に行える　Gemである
オプションとして登録メールアドレスに本登録メールを送信しアクティベートする方法や、ユーザのBANなどの機能も備えている

#import&install
gem 　'devise'
rails g devise:install 

#設定ファイルを作成される
config/initializers/devise.rb
config/locales/devise.en.yml

#deviseを使うModelを作成
rails generate devise User

```


- pundit
```
認可の仕組みを提供してくれる
ユーザーによってページ表示の許可・拒否をしたり、表示情報の範囲を変えたりすることができるgem」

gem "pundit"
rails g pundit:install

app/policies/配下にapplication_policy.rb


class ApplicationController < ActionController::Base
  include Pundit
end

後はpolicyで設定してOKですね。

```

- puma
```
web server
特徴は早いです。

gem 'puma', '~> 3.11'
bundle exec puma -d 
```

- sass rails
```
SassとはSyntactically Awesome StyleSheetといい、より効率的にCSSを書くことのできる言語
CSSを拡張した言語で、変数は使える。
SassはCSSを拡張した言語のため、最終的にはブラウザが解釈できるCSSにコンパイルする必要。
Railsではアセットパイプラインで .scssから.cssへと自動的にコンパイルされるので、特に意識する必要ない。
例:
 app/assets/stylesheets/users.scss

RailsでSassを使うにはsass-railsというgemをインストールする必要、Rails3.1以降からデフォルトでインストールされる
--skip-sprocketsオプションを使用すると、Railsでsass-railsがGemfileに追加されなくなる
```

- uglifier
```
assetsを圧縮用のgem。JavaScriptやCSSのアセットを最小化
Ruby wrapper for UglifyJS JavaScript compressor.
UglifyJS is a JavaScript parser, minifier, compressor and beautifier toolkit.
gem 'uglifier', '>= 1.3.0'
```

- coffee-rails
```
ruby&railsは最終的にはBrowserで動作するので、
あらゆるJavascriptを利用できるね。React、Coffee-script
rails new --skip-coffee
```

- turbolinks
```
TurbolinksはRails4.0からデフォルトで導入されたgem
<a>タグのリンクをクリックした時の遷移をajax化して画面遷移なしにページ遷移する

```

- Jbuilder
```
json library for ruby
Jbuilder gives you a simple DSL for declaring JSON structures

```

- rack-cors
```
あるページを開いたときに異なるオリジンのリソースを取得するのをブロックする
異なるオリジンのリソースを取得するには、そのオリジンのCORSが許可する必要。
rack-corsはそれ用である
gem 'rack-cors'

Response Hearderで許可された事を確認できる
    Access-Control-Allow-Origin
    Access-Control-Allow-Methods
```

- meta-tags
```
railsのSEO用。
gem 'meta-tags'

app/helpers/application-helper.rb

```

- haml-rails
```
HamlとはHTML abstraction markup languageの略で、
より簡単にHTMLを生成できるように作られたテンプレートエンジン

既存のapp/views/layouts/application.html.erbを
app/views/layouts/application.html.hamlに変換するには以下のコマンドを実行すればOK
rails generate haml:application_layout convert
```

- config
```
「config」gemを使用し、SMTPサーバー等の情報を定数で呼び出せるように設定

gem 'config'
bundle install
bundle exec rails g config:install

config/settings.local.ymlに記載
再起動後、上記で設定した情報をSettings.web[:host]などで呼び出し可能
.gitignoreには以下の内容が自動で追記されます。
config/settings.local.yml
config/settings/*.local.yml
config/environments/*.local.yml
```

- rack-attack
```
同一IPからの過剰なアクセスを制限する
下記で設定可能：
config.middleware.use Rack::Attack
```

- seed-fu
```
for 初期データの入れ
seed-fuは、すでに存在しているが変更したいレコードだけ更新したり、ファイル単位で実行できたり、簡単

gem 'seed-fu'

rakeタスクを実行する前に、seedファイルを置くディレクトリを作成
db/fixtures/production
db/fixtures/development

#create model
$ bundle exec rails g model line name:text
$ bundle exec rake db:migrate
$ bundle exec rails dbconsole


#db/fixtures/line.rb seedファイル
Line.seed do |s|
  s.id = 1
  s.name = "日比谷線"
end
Line.seed do |s|
  s.id = 2
  s.name = "千代田線"
end
Line.seed do |s|
  s.id = 3
  s.name = "丸の内線"
end

#create seed data
./bin/rake db:seed_fu
```


- rack-dev-mark
```
開発環境と本番環境を視覚的に判断する
   application.rb
    # Enable rack-dev-mark
    config.rack_dev_mark.enable = !Rails.env.production? || ENV['HEROKU_ENV'] == 'staging'
    #
    # Customize the env string (default Rails.env)
    config.rack_dev_mark.env = 'デモ環境' if ENV['HEROKU_ENV'] == 'staging'
```

- app-like javaScript
```
#WebpackをRuby on Railsで使うためのgem
gem 'webpacker'
Webpackとは、CSS、JavaScript、画像などを１つのファイルとしてまとめるためのモジュールバンドラーで、node.jsのモジュール
brower側のjsはModel管理されていなく、大変
NodeJsはサーバー側JSでnpmで管理されて、便利。それでBrowser側も管理したくて、それでWebPackである

#server side javaScript
サーバー側の処理をJavascriptで実装する、Googleで開発したJavascriptV8Engineは高速で。
(Server's process を使え、portをListenできればServerになる)
FrontEnginerももサーバーサイドの開発できるように？

#for running javaScript in ruby 
#一つのことを行い、またそれをうまくやるプログラムを書け
#Minimal, modern embedded V8 for Ruby.
gem 'mini-racer'
context = MiniRacer::Context.new
context.eval 'var adder = (a,b)=>a+b;'
puts context.eval 'adder(20,22)'

#
gem 'react_on_rails'


```
