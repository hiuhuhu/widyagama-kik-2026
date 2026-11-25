
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register - Restaurant & Cafe</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background: #70452f;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            background: white;
            width: 400px;
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 10px 30px #333;
        }

        h2 {
            color: #4b2e20;
            margin-bottom: 10px;
            text-align: center;
        }

        .subtitle {
            color: #777;
            text-align: center;
            margin-bottom: 25px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 8px;
            color: #4b2e20;
        }

        input {
            width: 100%;
            padding: 13px;
            margin-bottom: 18px;
            border: 1px solid #d9b9a6;
            border-radius: 8px;
            outline: none;
        }

        input:focus {
            border-color: #70452f;
        }

        button {
            width: 100%;
            padding: 14px;
            background: #4b2e20;
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
        }

        button:hover {
            background: #70452f;
        }

        .login-link {
            text-align: center;
            margin-top: 20px;
            color: #777;
            font-size: 14px;
        }

        .login-link a {
            color: #4b2e20;
            font-weight: bold;
            text-decoration: none;
        }
    </style>
</head>

<body>

    <div class="container">

        <h2>Daftar Akun</h2>
        <p class="subtitle">
            Silakan isi data untuk membuat akun baru.
        </p>

        <form action="#" method="post">

            <label>Nama Lengkap</label>
            <input type="text" name="nama"
            placeholder="Masukkan nama lengkap" required>

            <label>Email</label>
            <input type="email" name="email"
            placeholder="Masukkan email" required>

            <label>Password</label>
            <input type="password" name="password"
            placeholder="Masukkan password" required>

            <label>Konfirmasi Password</label>
            <input type="password" name="konfirmasi"
            placeholder="Ulangi password" required>

            <button type="submit">
                Daftar Sekarang
            </button>

        </form>

        <p class="login-link">
            Sudah punya akun?
            <a href="login.html">Login sekarang</a>
        </p>

    </div>

</body>
</html>
