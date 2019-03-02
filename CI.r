library(gdata)
trials = read.csv("/Users/minkunliu/Desktop/master.csv")
library(ggplot2)
ggplot(data=trials, aes(x=type, y=logerror)) + geom_jitter(alpha=0.3) +
+     stat_summary(fun.data = "mean_cl_boot", colour = "red", size = 1) + coord_flip() + theme_bw()
