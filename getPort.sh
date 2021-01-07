#获取系统开启的端口号
getPort(){
        portArray=()
        num=0
        for port in `ss -ntl|awk 'NR>1{print $4}'`    #通过ss命令获取系统所有打开的端口
        do
        #       echo ${port##*:}
                portArray[$num]=${port##*:}
                let num++
        done
 
        portArray=($(echo ${portArray[@]} |sed 's/ /\n/g'|sort|uniq))  #对获取的端口进行去重
        echo ${portArray[@]}
}
 
 
#输出系统开启的端口号
showOpenPort(){
        portArray=($(getPort))
        echo ${portArray[@]}
}
showOpenPort
