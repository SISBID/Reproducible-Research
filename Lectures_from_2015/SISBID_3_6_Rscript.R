X = t(read.table("http://www.broadinstitute.org/mpr/publications/projects/NMF/ALL_AML_data.txt"))
y = read.table("http://www.broadinstitute.org/mpr/publications/projects/NMF/ALL_AML_samples.txt", sep = "\t")[[1]]
AMLvsALL = substr(y,1,3)
vars = apply(X,2,var)
remove = which(vars < 0.001)
pvals = apply(X[,-remove],2,function(x){t.test(x[AMLvsALL=="ALL"],x[AMLvsALL=="AML"])$p.value})
stats = apply(X[,-remove],2,function(x){t.test(x[AMLvsALL=="ALL"],x[AMLvsALL=="AML"])$statistic})

par(mfrow = c(2,1))
hist(pvals, freq = FALSE,breaks = 30)
abline(h=1, col = "red")
hist(stats, freq = FALSE,breaks = 30, ylim = c(0,0.4))
grid = seq(-4,4,length.out = 1000)
lines(grid, dnorm(grid), col = "red", type='l')

p.bon = p.adjust(pvals, "bonferroni")
fdr.bh = p.adjust(pvals, "BH")
fdr.by = p.adjust(pvals, "BY")
log(4812)
plot(1:100, sort(p.bon,decreasing = FALSE)[1:100], type = 'l', col = 1)

plot(1:4812, sort(fdr.bh,decreasing = FALSE), type = 'l', col = 1)
lines(1:4812, sort(fdr.by,decreasing = FALSE), type = 'l', col = 2)

AMLvALL_TvALL_B = sapply(as.character(y), function(x){paste0(strsplit(x, '_')[[1]][-2],collapse="")})

pvals3 = apply(X[,-remove],2,function(x){	
										f = summary(lm(x~AMLvALL_TvALL_B))$fstatistic
										p.val = pf(f[1],f[2],f[3],lower.tail=F)
										})
stats3 = apply(X[,-remove],2,function(x){	
										f = summary(lm(x~AMLvALL_TvALL_B))$fstatistic
										})
par(mfrow = c(2,1))
hist(pvals3, freq = FALSE,breaks = 30)
abline(h=1, col = "red")
hist(stats3[1,], freq = FALSE,breaks = 300, ylim = c(0,0.6), xlim = c(0,20))
grid = seq(0.001,10,length.out = 1000)
lines(grid, df(grid,2,35), col = "red", type='l')



p.bon3 = p.adjust(pvals3, "bonferroni")
fdr.bh3 = p.adjust(pvals3, "BH")
fdr.by3 = p.adjust(pvals3, "BY")
plot(1:100, sort(p.bon3,decreasing = FALSE)[1:100], type = 'l', col = 1)

plot(1:4812, sort(fdr.bh3,decreasing = FALSE), type = 'l', col = 1)
lines(1:4812, sort(fdr.by3,decreasing = FALSE), type = 'l', col = 2)
