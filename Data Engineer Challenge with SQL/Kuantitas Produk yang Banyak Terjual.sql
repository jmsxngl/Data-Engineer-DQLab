SELECT ms_produk.kode_produk, ms_produk.nama_produk, SUM(tr_penjualan_detail.qty) AS total_qty
FROM ms_produk
INNER JOIN tr_penjualan_detail
ON ms_produk.kode_produk = tr_penjualan_detail.kode_produk
GROUP BY ms_produk.kode_produk, nama_produk
HAVING total_qty = 7;
