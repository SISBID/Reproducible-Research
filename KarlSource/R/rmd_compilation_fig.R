# Figure re Rmd compilation

#par(bty="n")

png("../Figs/rmd_compilation_fig.png", height=300, width=800,
    pointsize=18)
par(mar=rep(0.1, 4))
plot(0,0,type="n",
     xlim=c(0,100), ylim=c(100,0),
     xlab="", ylab="", xaxt="n", yaxt="n")

boxh <- 20
boxw <- 15
x <- seq(boxw/2, 100-boxw/2, length=4)
y <- c(boxh, 50, 100-boxh)

rect(x[1]-boxw/2, y[2]-boxh/2,
     x[1]+boxw/2, y[2]+boxh/2, col="white", border="black",
     lwd=2)
text(x[1], y[2], "RMarkdown")

rect(x[2]-boxw/2, y[2]-boxh/2,
     x[2]+boxw/2, y[2]+boxh/2, col="white", border="black",
     lwd=2)
text(x[2], y[2], "Markdown")

for(i in 1:3) {
    rect(x[3]-boxw/2, y[i]-boxh/2,
         x[3]+boxw/2, y[i]+boxh/2, col="white", border="black",
         lwd=2)
    text(x[3], y[i], c("LaTeX", "HTML", "Word")[i])
}

rect(x[4]-boxw/2, y[1]-boxh/2,
     x[4]+boxw/2, y[1]+boxh/2, col="white", border="black",
     lwd=2)
text(x[4], y[1], "PDF")

xgap <- 3
arrows(x[1]+boxw/2 + xgap, y[2],
       x[2]-boxw/2 - xgap, y[2], len=0.1, lwd=2,
       col="slateblue")
ygap <- 6
text(mean(x[1:2]), y[2]-ygap, "knitr", col="violetred")

arrows(x[2]+boxw/2 + xgap, y[2],
       x[3]-boxw/2 - xgap, y[2], len=0.1, lwd=2,
       col="slateblue")
text(mean(x[2:3]), y[2]-ygap, "pandoc", col="violetred")

arrows(x[3]+boxw/2 + xgap, y[1],
       x[4]-boxw/2 - xgap, y[1], len=0.1, lwd=2,
       col="slateblue")
text(mean(x[3:4]), y[1]-ygap, "latex", col="violetred")


dev.off()
