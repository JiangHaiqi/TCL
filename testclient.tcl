#!/usr/bin/env tclsh

#package require xmlrpc
set curDir [file dirname [info script]]
source [file join $curDir xmlrpc.tcl]

set res [xmlrpc::call "http://127.0.0.1:80" "test2" {{string 2}} ]
set res1 [lindex $res 1]
puts "__________________________"
puts "res1: $res1."