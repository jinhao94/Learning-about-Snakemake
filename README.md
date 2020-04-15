# Learning-about-Snakemake
Learning about snakemake, many many test... Hope everything goes well, fewer bugs and more happiness...

## practice_1 
How to run snakemake and mitile-sample as input.

## practice_2
A vivid example for usage of checkpoints.
Note:
    1. checkpoint is used for aggregating the unknown number of files generted by some script/progeam.
    2. checkpoint must as input.
    3. It is best put checkpoint function in the end of a section, and it will give variable name to all rules above.

## practice_3 总结
注意函数的使用，是否要加入wildcards很重要， 要考虑清楚，
1. 当函数中使用了expand时 -- 不加
2. 当函数中使用了wildcards时 --加
3. 注意一些 utility functions 的写法， 可使用 wildcard_constraints: 来进行正则匹配， 否则会导致多输入的错误。
4. 直接使用run 来嵌入python script 很刺激， 好用的不行，可以用来打印perl online 或者执行一些特殊的脚本， 注意调用input和output时不需要加{}， 最后用shell(XX_cmd)来执行即可。
5. log 文件的使用，还没开发。。。 后续想想办法用一下
6. rule 的排序函数。 ruleorder: rule1 > rule2 > rule3
7. 注意有些情况要使用{{}}， 例如expand({{sample}}/{ref}.fa, ref=REF_list) 此时，sample是被保护的， 包括使用 .format() 时.

## Future
集群调用
conda不同环境调用
继续强化学习