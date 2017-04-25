#liste des fonctions bash personnelles
#zf170425.1543

zdyn() {
	echo d | nc sdftests.epfl.ch 3318 | grep "$1" | sort
}
zdynw() {
	watch -n 1 "echo d | nc sdftests.epfl.ch 3318 | grep '$1' | sort"
}

zdynssh() {
ZDYNDNS=`echo d | nc sdftests.epfl.ch 3318 | grep "$1"`
IPPUB=`echo $ZDYNDNS | awk {'print $2'}`
IPPRIV=`echo $ZDYNDNS | awk {'print $3'}`
ssh -A -t root@$IPPUB ssh -A ubuntu@$IPPRIV
}

zdynssh2() {
ZDYNDNS=`echo d | nc sdftests.epfl.ch 3318 | grep "$2"`
IPPUB=`echo $ZDYNDNS | awk {'print $2'}`
ZSTR=$1$IPPUB
echo ssh $ZSTR
ssh $ZSTR
}

