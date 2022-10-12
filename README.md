# Modul1_Probstat_5025211014
## Nomor 1 Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya. 

### 1a. Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi  sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ? (distribusi Geometrik)

dengan x = 3 dan p = 0,20
kita cukup menggunakan dgeom(x,p) untuk mencari peluangnya
```
x = 3
p = 0.20
ans = dgeom(x,p)
print(ans)
```
![image](https://user-images.githubusercontent.com/90879937/195244024-45e18a3f-ea75-47f0-b4f0-7ab9097bbd03.png)

### 1b. mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )

dengan data random n = 10000
prob = 0,20
distribusi geometrik acak x = 3
cukup menggunakan syntax 
mean(rgeom(n, prob)==3)
```
n = 10000
prob = 0.20
ans = mean(rgeom(n, prob)==3)
print(ans)
```
![image](https://user-images.githubusercontent.com/90879937/195243969-e6804887-b5e4-44a8-816b-e25f9a43fde4.png)

### 1c. Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?

perbandingan poin a dan b adalah bahwa rataan dari 10000 data random dengan x yang sama itu mendekati dengan nilai peluang di 1a.
```
print("perbandingan poin a dan b adalah bahwa rataan dari 10000 data random dengan x yang sama itu mendekati dengan nilai peluang di 1a.")
```
![image](https://user-images.githubusercontent.com/90879937/195296959-c49b9b2e-12e0-4808-9acc-eee70d1bb0e7.png)

### 1d. Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama

Untuk menggambar histogram distribusi geometrik menggunakan dgeom, saya menggunakan ggplot untuk menggambar histogram dengan gunakan x dari 0 sd 10 
```
library(ggplot2)
prob = 0.20
dataframe = data.frame(0:10, dgeom(0:10, prob))
ggplot(dataframe, aes(x = factor(0:10), y = dgeom(0:10, prob), fill=(0:10)==3)) + geom_bar(stat="identity") + labs(title="Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama", x = "x", y = "probablitas")
```

![image](https://user-images.githubusercontent.com/90879937/195297341-40673140-6c77-4628-a85a-22744e2e286f.png)

bisa dilihat bahwa saat x=3 hasilnya sesuai seperti di 1a

### 1e. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.

Untuk mencari rataan dan varian, kita dapat cukup implementasikan rumusnya
```
p = 0.20
rataan = 1/p
print(rataan)

varian = (1-p)/(p*p)
print(varian)
```

![image](https://user-images.githubusercontent.com/90879937/195299786-9bc710c6-3555-4c8d-9a2f-9f723e2e9450.png)

## Nomor 2 Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :


### 2a. Peluang terdapat 4 pasien yang sembuh.

Diketahui k = 4, n = 20, p = 20
Mencari peluangnya tinggal menggunakan dbinom(k,n,p)
```
k = 4
n = 20
p = 0.2
ans = dbinom(k,n,p)
print(ans)
```
![image](https://user-images.githubusercontent.com/90879937/195246888-68e35f12-a237-49d9-834c-f0111ca44866.png)

### 2b. Gambarkan grafik histogram berdasarkan kasus tersebut.

Untuk menggambar grafik histogram berdasarkan kasus
saya menggunakan ggplot seperti 1d
```
library(ggplot2)
n = 20
p = 0.2
dataframe = data.frame(0:10, dbinom(0:10, n, prob))
ggplot(dataframe, aes(x = factor(0:10), y = dbinom(0:10, n, prob)))+ geom_bar(stat="identity")+ labs(title="Histogram", x = "x", y = "peluang")
```
![image](https://user-images.githubusercontent.com/90879937/195305419-da99c43a-74db-474a-a660-937e7ca16a02.png)

### 2c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Binomial.

Mencari rataan dan varian cukup dengan implementasikan rumusnya
```
n = 20
p = 0.2
rataan = n*p
print(rataan)

varian = n*p*(1-p)
print(varian)
```
![image](https://user-images.githubusercontent.com/90879937/195300768-57f3889c-0416-4356-a28c-4ceef4ce0765.png)

## Nomor 3 Diketahui data dari  sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)

### 3a. Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?

Untuk cari peluang, gunakan dpois(x, lambda)
```
x = 6
lambda = 4.5
print(dpois(x, lambda))
```
![image](https://user-images.githubusercontent.com/90879937/195301736-53c66bd3-1621-4662-a308-9632ea14ed1d.png)

### 3b. simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini  selama setahun (n = 365)

Dilakukan simulasi selama 365 hari, sehingga cukup dengan membuat hist(rpois(n, lambda))
```
set.seed(1)
n = 365
lambda = 4.5
hist(rpois(n,lambda), main="histogram kelahiran 6 bayi", xlab = "angka kelahiran", ylab = "probabilitas", freq = FALSE)
```
![image](https://user-images.githubusercontent.com/90879937/195302428-e0d76a83-fa41-4763-b628-efb0f8c4d13c.png)

### 3c. dan bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan

```
print("hasil yang diberikan di 3b kurang lebih sama dengan di 3a jadi selama 1 tahun bisa dikatakan peluang 6 bayi konsisten meskipun tidak sama.")
```
![image](https://user-images.githubusercontent.com/90879937/195312380-fda64951-b6c3-4f1e-a9e4-b906e3b9a054.png)

### 3d. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson.

Bisa diimplementasikan rumusnya di mana rataan = lambda dan varian = lambda juga
```
lambda = 4.5
rataan = lambda
print(rataan)
varian = lambda
print(varian)
```
![image](https://user-images.githubusercontent.com/90879937/195306554-3881cfc5-a2f4-4844-b38a-8fcf8e192224.png)

## Nomor 4 Diketahui nilai x = 2 dan v = 10. Tentukan:

### 4a. Fungsi Probabilitas dari Distribusi Chi-Square.

Bisa dihitung dengan dchisq(x,v)
```
x = 2
v = 10
print(dchisq(x,v))
```
![image](https://user-images.githubusercontent.com/90879937/195305186-44f6c912-21db-465e-bf17-b4e74a27c7ed.png)

### 4b. Histogram dari Distribusi Chi-Square dengan 100 data random.

Cukup dibuat dengan hist(rchisq(n,v))
```
n = 100
v = 10
hist(rchisq(n,v))
```
![image](https://user-images.githubusercontent.com/90879937/195306013-2586f1dc-8bdf-4aee-9428-6c6be7a7fa7e.png)

### 4c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Chi-Square.

Rataan = v dan varian = 2*v
```
v = 10
rataan = v
print(rataan)
varian = 2*v
print(varian)
```
![image](https://user-images.githubusercontent.com/90879937/195307163-93375f4a-f67c-4e27-8a2a-9d7458bd19db.png)

## Nomor 5 Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan

### 5a. Fungsi Probabilitas dari Distribusi Exponensial 

Di sini karena diketahui random variable, kita dapat menggunakan rexp(x, lambda)
```
set.seed(1)
#misal x=10 untuk random
x = 10
lambda = 3
print(rexp(x, lambda))
```
![image](https://user-images.githubusercontent.com/90879937/195308216-10f26d0a-fd83-48e2-9f7c-2521ec6a42a5.png)

### 5b. Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random

menggunakan hist(rexp(n, lambda)) dengan n = 10, 100, 1000, dan 10000
```
set.seed(1)
lambda = 3
hist(rexp(10, lambda))
```
![image](https://user-images.githubusercontent.com/90879937/195308608-83eda72d-2fe7-4013-8ed2-7f3a6c6d0799.png)
```
set.seed(1)
hist(rexp(100, lambda))
```
![image](https://user-images.githubusercontent.com/90879937/195308748-9ef93c87-7970-476c-8f61-0ed5ad91ca13.png)
```
set.seed(1)
hist(rexp(1000, lambda))
```
![image](https://user-images.githubusercontent.com/90879937/195308853-21a1e14d-c96e-4e7d-8aa6-12ab49244fa3.png)
```
set.seed(1)
hist(rexp(10000, lambda))
```
![image](https://user-images.githubusercontent.com/90879937/195309006-649c1cbf-0b48-484c-a8ff-8475f8248092.png)

### 5c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ = 3

Menggunakan fungsi mean dan var
```
set.seed(1)
n = 100
lambda = 30
print(mean(rexp(n,lambda)))
print(var(rexp(n,lambda)))
```
![image](https://user-images.githubusercontent.com/90879937/195309264-dc455bf3-bd3a-4bf3-99bf-fbb07d08671e.png)

## Nomor 6 Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan

### 6a. Fungsi Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score Nya dan plot data generate randomnya dalam bentuk grafik. Petunjuk(gunakan fungsi plot()).
Keterangan : 
X1 = Dibawah rata-rata 
X2 = Diatas rata-rata
Contoh data :
1,2,4,2,6,3,10,11,5,3,6,8
rata-rata = 5.083333
X1 = 5
X2 = 6

Untuk persoalan ini, mencari data dengan menggunakan rnorm(n, mean, sd).
Lalu setelah itu dicari mean(data). 
Untuk mencari X1 menggunakan floor(mean)
Untuk mencari X2 menggunakan ceil(mean)
kemudian mencari Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2) dengan P(x ≤ X2) - P(x ≤ X1)
Setelah itu mencari z-score data dan membuat plot datanya
```
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
```
![image](https://user-images.githubusercontent.com/90879937/195310645-cdc44e09-3ece-4086-a294-78884dac9708.png)

![image](https://user-images.githubusercontent.com/90879937/195310879-1fe4a147-cad0-4625-99e2-3fd804e638e3.png)

![image](https://user-images.githubusercontent.com/90879937/195310949-f96d2318-fb0c-4542-9187-24d67938d584.png)

## 6b. Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan: 
NRP_Nama_Probstat_{Nama Kelas}_DNhistogram

Mencari data dengan menggunakan rnorm(n, mean, sd)
dan melakukan perintah generate histogram distribusi normal sebagai berikut
```
set.seed(1)
n = 100
mean = 50
sd = 8
data = rnorm(n,mean,sd)
hist(data, breaks=50, main="5025211014_Alexander Weynard Samsico_Probstat_A_DNhistogram")
```
![image](https://user-images.githubusercontent.com/90879937/195311540-b788445a-60f3-4927-8d10-524102b5e589.png)

## 6c. Nilai Varian (σ²) dari hasil generate random nilai Distribusi Normal.

Untuk menghitung niali varian hasil generate random, dapat menggunakan var(data)
```
set.seed(1)
n = 100
mean = 50
sd = 8
data = rnorm(n,mean,sd)
varian = var(data)
print(varian)
```
![image](https://user-images.githubusercontent.com/90879937/195311898-d3a675b8-3bf7-4237-9d30-360f8f49bb09.png)



