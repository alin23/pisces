function _pisces_bind_pair -a left right -d "Creates bindings for the given pair: autoclose and remove empty"

    set l $left
    set r $right

    set left (string escape -n $left)
    set right (string escape -n $right)

    if [ $left = $right ]

        bind $r "_pisces_skip $right; or _pisces_append $right"
    else # if $some_special_setting

        bind $l "commandline -i $left; and _pisces_append $right"
        bind $r "_pisces_skip $right"
    end
end