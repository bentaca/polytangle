#!/bin/bash
#
suffix='_expect'

this_script="$(basename $0)"
this_dir="$(dirname $0)"

cd "$this_dir"

for f in *; do
   [ -f "$f" ] || continue
   [ "$f" == "$this" ] && continue
   bf=$(basename "$f")
   case "$bf" in
      *_expect)
         input=${bf%"$suffix"}
         target=${input%.*}
         diff <(perl ../polytangle "$input" "$target") "$f"
         if [ $? -eq 0 ]; then
            echo "$input ... OK"
         else
            echo "Test $input failed"
            exit 1
         fi
         ;;
      *) : ;;
   esac
done
