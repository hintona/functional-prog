-- Alex Hinton
all_mods_f x = 
    if ((x % 3) == 0) then 3
    else if ((x % 5) == 0) then 5
    else if ((x % 7) == 0) then 7
    else 2