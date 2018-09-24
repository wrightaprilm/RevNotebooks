pdf("gamma.pdf",width=8,height=4)
par(mar=c(4, 5, 1, 5))
curve(dexp(x, 1), from=0, to=3, lwd=3, xlab=expression(mu),ylab=expression(paste("P(",mu,")")),ylim=c(0,1))
curve(dgamma(x, 0.001, 0.001), from=0, to=3, lwd=3, col="red", add=T,n=10000)
legend("topright",c(expression(paste(mu," ~ Exp(1)")),expression(paste(mu," ~ Gamma(0.001,0.001)"))), fill=c("black","red"))
dev.off()