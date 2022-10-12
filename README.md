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
![image](https://user-images.githubusercontent.com/90879937/195247158-a3c34114-e532-48a5-9244-7e35669d651a.png)

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
![image](https://user-images.githubusercontent.com/90879937/195304154-6077dcf4-3551-4c5e-9f4c-7781943de996.png)

### 3d. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson.

Bisa diimplementasikan rumusnya di mana rataan = lambda dan varians = lambda juga
```
lambda = 4.5
rataan = lambda
print(rataan)
varians = lambda
print(varians)
```
![image](https://user-images.githubusercontent.com/90879937/195304514-5f27b4b5-d241-4ca8-aec7-3eaca0567edd.png)

## Nomor 4 Diketahui nilai x = 2 dan v = 10. Tentukan:

### 4a. Fungsi Probabilitas dari Distribusi Chi-Square.

Bisa dihitung dengan dchisq(x,v)
```
x = 2
v = 10
print(dchisq(x,v))
```
![image](https://user-images.githubusercontent.com/90879937/195305186-44f6c912-21db-465e-bf17-b4e74a27c7ed.png)





