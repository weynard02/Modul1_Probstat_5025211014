# Modul1_Probstat_5025211014
##Nomor 1

1a.
dengan x = 3 dan p = 0,20
kita cukup menggunakan dgeom(x,p) untuk mencari peluangnya
```
x = 3
p = 0.20
ans = dgeom(x,p)
print(ans)
```
![image](https://user-images.githubusercontent.com/90879937/195244024-45e18a3f-ea75-47f0-b4f0-7ab9097bbd03.png)

1b.
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

1c.
perbandingan poin a dan b adalah bahwa rataan dari rgeom (b) itu mendekati dengan nilai dgeom(a). 

1d.
Untuk menggambar histogram distribusi geometrik menggunakan dgeom, saya menggunakan plot
```
n = 10000
prob = 0.20
plot(0:10, dgeom(0:10,0.20), xlab="x", ylab="probabilitas", type='h')
```
![image](https://user-images.githubusercontent.com/90879937/195243552-387c502e-44f5-4b1f-a9d8-da8b4012a58e.png)

bisa dilihat bahwa saat x=3 hasilnya sesuai seperti di 1a

1e.
Untuk mencari rataan dan varian, kita dapat cukup implementasikan rumusnya
```
p = 0.20
rataan = 1/p
print(rataan)

varian = (1-p)/p^2
print(varian)
```

![image](https://user-images.githubusercontent.com/90879937/195243818-7d0d2ed5-047a-4bda-8701-32b4a2386d92.png)

##Nomor 2

2a.
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

2b. 
Untuk menggambar grafik histogram berdasarkan kasus
saya menggunakan plot dbinom
```
n = 20
p = 0.2
plot(0:10, dbinom(0:10,n,p), xlab = "x", ylab = "probabilitas", type='h')
```
![image](https://user-images.githubusercontent.com/90879937/195247158-a3c34114-e532-48a5-9244-7e35669d651a.png)
