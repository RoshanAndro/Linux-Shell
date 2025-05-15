echo " Directory of $(pwd)\n"

ls -l --time-style=+"%Y/%m/%d %I:%M %p" | tail -n +2 | while read perms links owner group size date time ampm name; do
    case "$perms" in
        d*) echo "$date $time $ampm   <DIR>       $name" ;;
        *)  echo "$date $time $ampm        $size $name" ;;
    esac
done

