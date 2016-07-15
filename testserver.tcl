#!/usr/bin/env tclsh
#package require xmlrpc
set curDir [file dirname [info script]]
source [file join $curDir xmlrpc.tcl]
xmlrpc::serve 80

proc test1 {i} {
    puts "========================"
	incr i
	return [list string $i]
	
}
proc test2 {i} {
    puts "========================"
	incr i
	incr i
	return [list string $i]
	
}

proc test3 {a b} {
   puts "+++++++++++++++++++++++++"
   set c [expr $a + $b]
   return [list string $c]
   }
   
proc test4 {} {
puts "+++++++++++++++++++++++++++++++"
return [list string 4]
}

vwait forever
