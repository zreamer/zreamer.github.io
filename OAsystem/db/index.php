<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>TinyWebDB 管理</title>
    <style>
        body { font-family: Arial; max-width: 800px; margin: 50px auto; padding: 20px; }
        table { border-collapse: collapse; width: 100%; margin-top: 20px; }
        th, td { border: 1px solid #ddd; padding: 12px; text-align: left; }
        th { background-color: #4CAF50; color: white; }
        tr:nth-child(even) { background-color: #f2f2f2; }
        .url { background: #f0f0f0; padding: 10px; border-radius: 5px; word-break: break-all; }
    </style>
</head>
<body>
    <h2>🗄️ TinyWebDB 管理面板</h2>
    
    <h3>📱 App Inventor 服务地址：</h3>
    <div class="url">
        <?php echo "http://" . $_SERVER['HTTP_HOST'] . dirname($_SERVER['PHP_SELF']) . "/tinywebdb.php"; ?>
    </div>
    
    <h3>📊 当前数据：</h3>
    <table>
        <tr><th>Tag (标签)</th><th>Value (值)</th></tr>
        <?php
        $file = __DIR__ . '/tinywebdb_data.txt';
        if (file_exists($file)) {
            $data = json_decode(file_get_contents($file), true) ?? [];
            foreach ($data as $k => $v) {
                echo "<tr><td>" . htmlspecialchars($k) . "</td><td>" . htmlspecialchars($v) . "</td></tr>";
            }
        }
        if (empty($data)) echo "<tr><td colspan='2' style='text-align:center;color:#999;'>暂无数据</td></tr>";
        ?>
    </table>
    
    <p style="color: #666; margin-top: 30px;">
        💡 提示：直接在 App Inventor 中使用 TinyWebDB 组件即可读写数据
    </p>
</body>
</html>