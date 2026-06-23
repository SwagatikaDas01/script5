#! /bin/bash
echo "enter tool name"
read tool
if
    which $tool &>/dev/null;then
    echo "$tool exists"
else
    sudo apt update
    sudo apt install "$tool" -y &>/dev/null
    echo "$tool installed"
fi
