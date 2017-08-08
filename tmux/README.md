work_tools / tmux
====

１コマンドで複数のサーバに接続して作業や監視をしたいときに使用

## Usage
### 各パネルで同期をとる場合
```
$ sh ~/tools/multi_session.sh -s web-server0{1..4}
```

### 各パネルで同期をとらない場合
```
$ sh ~/tools/multi_session.sh web-server0{1..4}
```

## how use tmux
* [tmuxの使い方](http://qiita.com/vintersnow/items/be4b29652ff665c45198)
* [tmuxの基本的な使い方とコマンドのまとめ](http://www.task-notes.com/entry/20150711/1436583600)

## Requirement
* openssh

## Install
### cygwin
```
$ apt-cyg install tmux
$ vi ~/.ssh/config
```

## Licence

[MIT](https://github.com/hirasaki1985/work_tools/blob/master/LICENSE)

## Author

[m.hirasaki](https://github.com/hirasaki1985)
