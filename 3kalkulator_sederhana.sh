#!/bin/bash

while true; do
    echo "=== Kalkulator Sederhana ==="
    echo "1. Penjumlahan"
    echo "2. Pengurangan"
    echo "3. Perkalian"
    echo "4. Pembagian"
    echo "5. Keluar"
    echo -n "Pilih operasi (1-5): "
    read pilihan

    if [ "$pilihan" = "5" ]; then
        echo "Terima kasih telah menggunakan kalkulator."
        break
    fi

    echo -n "Masukkan angka pertama: "
    read angka1
    echo -n "Masukkan angka kedua: "
    read angka2

    case $pilihan in
        1)
            hasil=$((angka1 + angka2))
            echo "Hasil Penjumlahan: $hasil"
            ;;
        2)
            hasil=$((angka1 - angka2))
            echo "Hasil Pengurangan: $hasil"
            ;;
        3)
            hasil=$((angka1 * angka2))
            echo "Hasil Perkalian: $hasil"
            ;;
        4)
            if [ "$angka2" -eq 0 ]; then
                echo "Error: Pembagian dengan nol tidak diperbolehkan!"
            else
                hasil=$((angka1 / angka2))
                echo "Hasil Pembagian: $hasil"
            fi
            ;;
        *)
            echo "Pilihan tidak valid, silakan coba lagi."
            ;;
    esac
    echo
done

