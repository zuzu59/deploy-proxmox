#liste des fonctions bash personnelles
#zf170320.1119

zdyn() {
	echo d | nc sdftests.epfl.ch 3318 | grep "$1" | sort
}
zdynw() {
	watch -n 1 "echo d | nc sdftests.epfl.ch 3318 | grep '$1' | sort"
}

