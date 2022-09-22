set.seed(42)
num_samples = 10000
differences=rep(0,num_samples)
for(s in 1:num_samples){
	x1=rnorm(n=25, mean=6,sd=2)
	x2=rnorm(n=25, mean=5,sd=2)
	differences[s]= mean(x1)-mean(x2)
}
mean(0<differences & differences<2)
hist(differences,breaks=20,
	main="Empirical Distribution of D",
	xlab="Simulated Value of D",
	col = "dodgerblue",
	border="darkorange"
)
mean(differences)
var(differences)

set.seed(42)
diffs=replicate(10000,mean(rnorm(25,6,2))-mean(rnorm(25,5,2)))
mean(differences==diffs)