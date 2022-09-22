set.seed(1337)
mu=10
sample_size=50
samples=100000
x_bars=rep(0,samples)
for(i in 1:samples){
	x_bars[i]=mean(rpois(sample_size,lambda=mu))
}
x_bar_hist=hist(x_bars,breaks=50,
	main="Histogram of Sample Means",
	xlab="Sample Means"
)