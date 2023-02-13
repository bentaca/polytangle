#!/bin/bash
#
suffix='_expect'

this_script="$(basename $0)"
this_dir="$(dirname $0)"

cd "$this_dir"

for f in *_expect; do
   [ -f "$f" ] || continue
   [ "$f" == "$this" ] && continue
   bf=$(basename "$f")
   case "$bf" in
      *_expect)
         input=${bf%"$suffix"}
         defunct=${input}_defunct
         [ -f "$defunct" ] && continue

         target=${input%.*}
         cmd=${input}_cmd

         if [ -f "$cmd" ] ; then

            diff <(sh $cmd "$input" "$target") "$f"
            if [ $? -eq 0 ]; then
               echo "$input ... OK"
            else
               echo "Test $input failed"
               exit 1
            fi
         else
            diff <(perl ../polytangle "$input" "$target") "$f"
            if [ $? -eq 0 ]; then
               echo "$input ... OK"
            else
               echo "Test $input failed"
               exit 1
            fi
         fi
         ;;
      *) : ;;
   esac
done
