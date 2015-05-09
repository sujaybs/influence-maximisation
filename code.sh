START=`$(date +%s.%N)`;
awk '0==seen[$0] {print} {seen[$0]=1; seen[$2" "$1]=1}' 1684.edges.txt > new.txt;
join -o 1.2 <(sort new.txt) <(sort t.txt) > t1.txt;
join -o 1.2 <(sort new.txt) <(sort t1.txt) > t2.txt;
awk '!a[$0]++' t2.txt > t20.txt;
awk 'FNR==NR{a[$1];next};!($1 in a)' t.txt t20.txt > t21.txt;
awk 'FNR==NR{a[$1];next};!($1 in a)' t1.txt t21.txt > t22.txt;
join -o 1.2 <(sort new.txt) <(sort t22.txt) > t3.txt;
awk '!a[$0]++' t3.txt > t30.txt;
awk 'FNR==NR{a[$1];next};!($1 in a)' t.txt t30.txt > t31.txt;
awk 'FNR==NR{a[$1];next};!($1 in a)' t1.txt t31.txt > t32.txt;
awk 'FNR==NR{a[$1];next};!($1 in a)' t22.txt t32.txt > t33.txt;
join -o 1.2 <(sort new.txt) <(sort t33.txt) > t4.txt;
awk '!a[$0]++' t4.txt > t40.txt;
awk 'FNR==NR{a[$1];next};!($1 in a)' t.txt t40.txt > t41.txt;
awk 'FNR==NR{a[$1];next};!($1 in a)' t1.txt t41.txt > t42.txt;
awk 'FNR==NR{a[$1];next};!($1 in a)' t22.txt t42.txt > t43.txt;
awk 'FNR==NR{a[$1];next};!($1 in a)' t33.txt t43.txt > t44.txt;
join -o 1.2 <(sort new.txt) <(sort t44.txt) > t5.txt;
awk '!a[$0]++' t5.txt > t50.txt;
awk 'FNR==NR{a[$1];next};!($1 in a)' t.txt t50.txt > t51.txt;
awk 'FNR==NR{a[$1];next};!($1 in a)' t1.txt t51.txt > t52.txt;
awk 'FNR==NR{a[$1];next};!($1 in a)' t22.txt t52.txt > t53.txt;
awk 'FNR==NR{a[$1];next};!($1 in a)' t33.txt t53.txt > t54.txt;
awk 'FNR==NR{a[$1];next};!($1 in a)' t44.txt t54.txt > t55.txt;
join -o 1.2 <(sort new.txt) <(sort t55.txt) > t6.txt;
awk '!a[$0]++' t6.txt > t60.txt;
awk 'FNR==NR{a[$1];next};!($1 in a)' t.txt t60.txt > t61.txt;
awk 'FNR==NR{a[$1];next};!($1 in a)' t1.txt t61.txt > t62.txt;
awk 'FNR==NR{a[$1];next};!($1 in a)' t22.txt t62.txt > t63.txt;
awk 'FNR==NR{a[$1];next};!($1 in a)' t33.txt t63.txt > t64.txt;
awk 'FNR==NR{a[$1];next};!($1 in a)' t44.txt t64.txt > t65.txt;
awk 'FNR==NR{a[$1];next};!($1 in a)' t55.txt t65.txt > t66.txt;
join -o 1.2 <(sort new.txt) <(sort t66.txt) > t7.txt;
awk '!a[$0]++' t7.txt > t70.txt;
awk 'FNR==NR{a[$1];next};!($1 in a)' t.txt t70.txt > t71.txt;
awk 'FNR==NR{a[$1];next};!($1 in a)' t1.txt t71.txt > t72.txt;
awk 'FNR==NR{a[$1];next};!($1 in a)' t22.txt t72.txt > t73.txt;
awk 'FNR==NR{a[$1];next};!($1 in a)' t33.txt t73.txt > t74.txt;
awk 'FNR==NR{a[$1];next};!($1 in a)' t44.txt t74.txt > t75.txt;
awk 'FNR==NR{a[$1];next};!($1 in a)' t55.txt t75.txt > t76.txt;
awk 'FNR==NR{a[$1];next};!($1 in a)' t66.txt t76.txt > t77.txt;
join -o 1.2 <(sort new.txt) <(sort t77.txt) > t8.txt;
awk '!a[$0]++' t8.txt > t80.txt;
awk 'FNR==NR{a[$1];next};!($1 in a)' t.txt t80.txt > t81.txt;
awk 'FNR==NR{a[$1];next};!($1 in a)' t1.txt t81.txt > t82.txt;
awk 'FNR==NR{a[$1];next};!($1 in a)' t22.txt t82.txt > t83.txt;
awk 'FNR==NR{a[$1];next};!($1 in a)' t33.txt t83.txt > t84.txt;
awk 'FNR==NR{a[$1];next};!($1 in a)' t44.txt t84.txt > t85.txt;
awk 'FNR==NR{a[$1];next};!($1 in a)' t55.txt t85.txt > t86.txt;
awk 'FNR==NR{a[$1];next};!($1 in a)' t55.txt t86.txt > t87.txt;
awk 'FNR==NR{a[$1];next};!($1 in a)' t77.txt t87.txt > t88.txt;
END=`$(date +%s.%N)`;
cat t1.txt t22.txt t33.txt t44.txt t55.txt t66.txt t77.txt t88.txt > Final.txt;
DIFF=$(( $END - $START ));
echo "$DIFF";



