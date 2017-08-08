#!/bin/bash
SYNC_FLAG=0
#echo $*;
#exit

if [ -n "$SESSION_NAME" ];then
  session=$SESSION_NAME
else
  session=multi-ssh-`date +%s`
fi
window=multi-ssh

### tmuxのセッションを作成
tmux new-session -d -n $window -s $session

### 各ホストにsshログイン
# 最初の1台はsshするだけ
#if [ "${1}" != "${SYNC_OPTION}" ]; then
#  tmux send-keys "ssh $1" C-m
#else
#  tmux send-keys "ssh $2" C-m
#fi
#shift

# 残りはpaneを作成してからssh
KEY_FLAG=0
for i in $*;do
  #echo $i
  case "$i" in
    "-s" ) 
      SYNC_FLAG=1
      ;;
    * )
      if [ $KEY_FLAG = 0 ]; then
        tmux send-keys "ssh $i" C-m
        KEY_FLAG=1
      else
        tmux split-window
        tmux select-layout tiled
        tmux send-keys "ssh $i" C-m
      fi
      ;;
  esac
done
#echo $KEY_FLAG
#echo $SYNC_FLAG
#exit
### 最初のpaneを選択状態にする
tmux select-pane -t 0

#if [ "${1}" = "${SYNC_OPTION}" ]; then
if [ $SYNC_FLAG = 1 ]; then
  # パネルの同期モードで実行
  tmux set-window-option synchronize-panes on
fi

tmux attach-session -t $session
