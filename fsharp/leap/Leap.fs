﻿module Leap

let leapYear (year: int): bool = 
    if year % 4 = 0 then
        if year % 400 = 0 then true
        else if year % 100 = 0 then false
        else true
    else
        false