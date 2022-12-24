.model small
.code
org 100h
start:
  jmp mulai
nama db 13,10,'Nama Anda  :$'
hp db 13,10,'No. HP/Telp  :$'
lanjut db 13,10,'Lanjut Tekan  y untuk melanjutkan>>>>>>>>>>>>>>>>>>>>$'
tampung_nama db 30,?,30 dup(?)
tampung_hp db 13,?,13 dup(?)
a db 01
b db 02
c db 03
d db 04
e db 05
f db 06
g db 07
h db 08
i db 09
j dw 15
daftar db 13,10,'+-------------------------------------------------------------+'
  db 13,10,'|                       Penjualan Buku Novel                       |'
  db 13,10,'+--+------------------------------+--------------------------------+'
  db 13,10,'|NO|          Judul Buku          |            Harga Buku          |'  
  db 13,10,'+--+------------------------------+--------------------------------+'
  db 13,10,'|01|        Cantik itu Luka       |           Rp. 85.000           |'
  db 13,10,'+--+------------------------------+--------------------------------+'
  db 13,10,'|02|      Di antara dua sujud     |           Rp. 90.000           |'
  db 13,10,'+--+------------------------------+--------------------------------+'
  db 13,10,'|03|     Menikmati Kepergianmu    |           Rp. 99.000           |'
  db 13,10,'+--+------------------------------+--------------------------------+'
  db 13,10,'|04|          Pacar Halal         |           Rp. 70.000           |'
  db 13,10,'+--+------------------------------+--------------------------------+'
  db 13,10,'|05|    Hatimu Aku Hidupku Kamu   |           Rp. 95.000           |'
  db 13,10,'+--+------------------------------+--------------------------------+'
  db 13,10,'|06|        Ayat-ayat Cinta       |           Rp. 78.000           |'
  db 13,10,'+--+------------------------------+--------------------------------+'
  db 13,10,'|07|         Sang Pemimpi         |           Rp. 50.000           |'
  db 13,10,'+--+------------------------------+--------------------------------+'
  db 13,10,'|03|       Jingga dan Senja       |           Rp. 88.000           |'
  db 13,10,'+--+------------------------------+--------------------------------+'
  
pilih_n db 13,10, 'Silahkan masukkan no yang anda buku yang anda pilih: $'
error db 13,10, 'Nomor yang anda masukkan salah, silahkan masukkan kembali $'
succes db 13,10, 'Selamat anda berhasil memilih buku yang anda inginkan $'

mulai:
mov ah,09h
lea dx,nama
int 21h
mov ah,0ah
lea dx,tampung_nama
int 21h
push dx

mov ah,09h
lea dx,hp
int 21h
mov ah,0ah
lea dx,tampung_hp
int 21h
push dx


mov ah,09
mov dx,offset daftar
int 21h
mov ah,09h
mov dx,offset lanjut
int 21h
mov ah,01h
int 21h
cmp al,'y'
jmp proses

mov ah,09h
mov dx,offset error
int 21h
int 20h

proses:
  mov ah,09h
  mov dx,offset pilih_n
  int 21h

mov ah,1
int 21h
mov bh,al
mov ah,1
int 21h
mov bl,al
cmp bh,'0'
cmp bl,'1'
je hasil1

cmp bh,'0'
cmp bl,'2'
je hasil2
cmp bh,'0'
cmp bl,'3'
je hasil3


cmp bh,'0'
cmp bl,'4'
je hasil4

cmp bh,'0'
cmp bl,'5'
je hasil5


cmp bh,'0'
cmp bl,'6'
je hasil6

cmp bh,'0'
cmp bl,'7'
je hasil7


cmp bh,'0'
cmp bl,'8'
je hasil8


;------------------------------------------------------
hasil1:
	mov ah,09h
	lea dx,teks1
	int 21h
	int 20h
hasil2:
	mov ah,09h
	lea dx,teks2
	int 21h
	int 20h
hasil3:
	mov ah,09h
	lea dx,teks3
	int 21h
	int 20h
hasil4:
	mov ah,09h
	lea dx,teks4
	int 21h
	int 20h
hasil5:
	mov ah,09h
	lea dx,teks5
	int 21h
	int 20h
hasil6:
	mov ah,09h
	lea dx,teks6
	int 21h
	int 20h
hasil7:
	mov ah,09h
	lea dx,teks7
	int 21h
	int 20h
hasil8:
	mov ah,09h
	lea dx,teks8
	int 21h
	int 20h
;-----------------------------------------------------------------------

teks1 db 13,10,'Anda memilih buku Cantik itu Luka '
	db 13,10,'Total yang harus anda bayar : Rp. 85.000'
	db 13,10,'Terima kasih $'

teks2 db 13,10,'Anda memilih buku Di antara dua sujud '
	db 13,10,'Total yang harus anda bayar : Rp. 90.000'
	db 13,10,'Terima kasih $'

teks3 db 13,10,'Anda memilih buku Menikmati Kepergianmu '
	db 13,10,'Total yang harus anda bayar : Rp. 99.000'
	db 13,10,'Terima kasih $'

teks4 db 13,10,'Anda memilih buku Pacar Halal '
	db 13,10,'Total yang harus anda bayar : Rp. 70.000'
	db 13,10,'Terima kasih $'

teks5 db 13,10,'Anda memilih buku Hatimu Aku Hidupku Kamu '
	db 13,10,'Total yang harus anda bayar : Rp. 95.000'
	db 13,10,'Terima kasih $'

teks6 db 13,10,'Anda memilih buku Ayat-ayat Cinta '
	db 13,10,'Total yang harus anda bayar : Rp. 78.000'
	db 13,10,'Terima kasih $'

teks7 db 13,10,'Anda memilih buku Sang Pemimpi '
	db 13,10,'Total yang harus anda bayar : Rp. 50.000'
	db 13,10,'Terima kasih $'

teks8 db 13,10,'Anda memilih buku Jingga dan Senja '
	db 13,10,'Total yang harus anda bayar : Rp. 88.000'
	db 13,10,'Terima kasih $'



end start




