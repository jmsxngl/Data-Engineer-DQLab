SELECT tr_penjualan.kode_transaksi, tr_penjualan.kode_pelanggan, ms_pelanggan.nama_pelanggan, tr_penjualan.tanggal_transaksi, COUNT(tr_penjualan_detail.qty) AS jumlah_detail
FROM tr_penjualan
INNER JOIN ms_pelanggan
ON tr_penjualan.kode_pelanggan = ms_pelanggan.kode_pelanggan
INNER JOIN tr_penjualan_detail
ON tr_penjualan.kode_transaksi = tr_penjualan_detail.kode_transaksi
GROUP BY tr_penjualan.kode_transaksi, tr_penjualan.kode_pelanggan, ms_pelanggan.nama_pelanggan, tr_penjualan.tanggal_transaksi
HAVING jumlah_detail > 1;
