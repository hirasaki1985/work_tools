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
$ sh ~/tools/multi_session.sh -s web-server0{1..4}
```

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
