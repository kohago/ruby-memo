## active job
- 特定のqueueに対してJob作成：rails generate job some_job --queue some-queue
  
  ## shoryuken
- sqsを使ったjob queue  worker
  - aws sqs 
    - 安い、インフラの負担がない、リトライをSupportする
    - queueの種類
      - 標準queue
        - default
        - 配信されることを保証、順番は保証しない
      - FIFOqueue
    - 配信された後は削除されない。consumerは受信の後、自分で削除
  
## spring
- spring is a Rails application preloader.not need to restart rails when some thing changed
- be installed by default when install rails

## rubocop
- rubocop -a 自動修正
- コメントで無効にする：　# rubocop:disable Metrics/AbcSize

## install ruby
- brew install rbenv
  - cannot load such file -- psych
  - Ruby3.2.0のリリースノートによるとlibyamlやlibffiの同梱が廃止されたとのこと。別途インストールする必要がある。
- brew install libyaml ruby-build
- rbenv install 3.2.1
- rbenv local 3.2.1
- rbenv init
  -  Load rbenv automatically by appending,the following to ~/.zshrc:  eval "$(rbenv init - zsh)"
  
## vscodeでruby,rails開発
- install ruby extensions
  - ruby
  - rails
  - Ruby Solargraph
- install other extensions
  - swagger viewer
