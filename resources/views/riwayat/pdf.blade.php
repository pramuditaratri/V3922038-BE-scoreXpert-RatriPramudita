<!DOCTYPE html>
<html>
<head>
    <title>Detail Kredit</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #000;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f4f4f4;
        }
        .header, .footer {
            text-align: center;
            margin-bottom: 10px;
        }
        .no-border {
            border: none;
        }
    </style>
</head>
<body>
    <div class="header">
        <h2>PT. JAYA SENTOSA</h2>
        <p>Jalan Pemuda Nomor 4<br>Surakarta</p>
    </div>
    <h3 style="text-align: center;">DETAIL KREDIT</h3>
    <table class="no-border">
        <tr>
            <td><strong>Nama Lengkap</strong></td>
            <td>: {{ $data['nama_lengkap'] }}</td>
        </tr>
        <tr>
            <td><strong>No KTP</strong></td>
            <td>: {{ $data['no_ktp'] }}</td>
        </tr>
        <tr>
            <td><strong>Penghasilan</strong></td>
            <td>: Rp{{ number_format($data['penghasilan'], 0, ',', '.') }}</td>
        </tr>
        <tr>
            <td><strong>Beban Pengeluaran Bulanan</strong></td>
            <td>: Rp{{ number_format($data['beban_pengeluaran_bulanan'], 0, ',', '.') }}</td>
        </tr>
        <tr>
            <td><strong>DTI</strong></td>
            <td>: {{ $data['dti'] }}%</td>
        </tr>
        <tr>
            <td><strong>Status</strong></td>
            <td>: {{ $data['status'] }}</td>
        </tr>
        <tr>
            <td><strong>Catatan</strong></td>
            <td>: {{ $data['catatan'] }}</td>
        </tr>
    </table>
    <p style="margin-top: 30px;">Surakarta, {{ date('d M Y') }}</p>
    <p>Manajer Pemasaran,</p>
    <br><br>
    <p>Sabrina</p>
</body>
</html>
