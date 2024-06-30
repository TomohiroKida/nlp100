proc p00 {str} {
    puts $str
    puts [join [lreverse [split $str {} ]] {} ]
}
p00 "stressed"

proc p01 {str} {
    puts $str
    set x [join [split $str {}] " "]
    foreach i {1 3 5 7} {
        lappend ret [lindex $x $i]
    }
    puts [join $ret {}]
}
p01 "パタトクカシーー"

proc p02 {s1 s2} {
    puts [list $s1 $s2]
    foreach c1 [split $s1 {}] c2 [split $s2 {}] {
        lappend ret "$c1$c2"
    }
    puts [join $ret {}]
}
p02 "パトカー" "タクシー"

proc p03 {str} {
    puts $str
    set s [regsub -all {[\.,]} $str {}]
    foreach c $s {
        lappend ret [string length $c]
    }
    puts [list $ret]
}
p03 "Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics."

proc p04 {str} {
    puts $str
    set tmp [regsub -all {[\.,]} $str {}]
    set cnt 0
    foreach word $tmp {
        incr cnt
        if {[lsearch {1 5 6 7 8 9 15 16 19} $cnt] != -1} {
            # 1word
            set ary($cnt) [string range $word 0 0]
        } else {
            # 2word
            set ary($cnt) [string range $word 0 1]
        }
    }
    for {set i 1} {$i <= [array size ary]} {incr i} {
        puts $ary($i)
    }
}
p04 "Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can."

proc p {} {
}
p
