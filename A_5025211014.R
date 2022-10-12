set.seed(1)
# 1a
x = 3
p = 0.20
ans = dgeom(x,p)
print(ans)

#1b
n = 10000
prob = 0.20
ans = mean(rgeom(n, prob)==3)
print(ans)

#1c
print("perbandingan poin a dan b adalah bahwa rataan dari 10000 data random dengan x yang sama itu mendekati dengan nilai peluang di 1a.")

#1d
library(ggplot2)
prob = 0.20
dataframe = data.frame(0:10, dgeom(0:10, prob))
ggplot(dataframe, aes(x = factor(0:10), y = dgeom(0:10, prob), fill=(0:10)==3)) + geom_bar(stat="identity") + labs(title="Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama", x = "x", y = "probablitas")

#1e
p = 0.20
rataan = 1/p
print(rataan)

varian = (1-p)/(p*p)
print(varian)


#2a
k = 4
n = 20
p = 0.2
ans = dbinom(k,n,p)
print(ans)

#2b
library(ggplot2)
n = 20
p = 0.2
dataframe = data.frame(0:10, dbinom(0:10, n, prob))
ggplot(dataframe, aes(x = factor(0:10), y = dbinom(0:10, n, prob)))+ geom_bar(stat="identity")+ labs(title="Histogram", x = "x", y = "peluang")

#2c
n = 20
p = 0.2
rataan = n*p
print(rataan)

varian = n*p*(1-p)
print(varian)

#3a
x = 6
lambda = 4.5
print(dpois(x, lambda))

#3b
set.seed(1)
n = 365
lambda = 4.5
hist(rpois(n,lambda), main="histogram kelahiran 6 bayi", xlab = "angka kelahiran", ylab = "probabilitas", freq = FALSE)


#3c
print("hasil yang diberikan di 3b kurang lebih sama dengan di 3a jadi selama 1 tahun bisa dikatakan peluang 6 bayi konsisten meskipun tidak sama.")

#3d
lambda = 4.5
rataan = lambda
print(rataan)
varian = lambda
print(varian)

#4a
x = 2
v = 10
print(dchisq(x,v))

#4b
n = 100
v = 10
hist(rchisq(n,v))

#4c
v = 10
rataan = v
print(rataan)
varian = 2*v
print(varian)

#5a
set.seed(1)
#misal x=10 untuk random
x = 10
lambda = 3
print(rexp(x, lambda))

#5b
set.seed(1)
lambda = 3
hist(rexp(10, lambda))

set.seed(1)
hist(rexp(100, lambda))

set.seed(1)
hist(rexp(1000, lambda))

set.seed(1)
hist(rexp(10000, lambda))
 
#5c
set.seed(1)
n = 100
lambda = 30
print(mean(rexp(n,lambda)))
print(var(rexp(n,lambda)))

#6a
set.seed(1)
n = 100
mean = 50
sd = 8
data = rnorm(n,mean,sd)
x1 = floor(mean(data))
x2 = ceiling(mean(data))
p = pnorm(x2, mean, sd) - pnorm(x1, mean, sd)
print(p)
zscore = (data - mean(data))/sd(data)
print(zscore)
plot(data)

#6b
set.seed(1)
n = 100
mean = 50
sd = 8
data = rnorm(n,mean,sd)
hist(data, breaks=50, main="5025211014_Alexander Weynard Samsico_Probstat_A_DNhistogram")

#6c
set.seed(1)
n = 100
mean = 50
sd = 8
data = rnorm(n,mean,sd)
varian = var(data)
print(varian)

