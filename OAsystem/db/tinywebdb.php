<?php
// TinyWebDB 极简版 - 单文件，文本存储，无密码
// 支持 App Inventor 的 TinyWebDB 组件

// 数据文件路径
define('DATA_FILE', __DIR__ . '/tinywebdb_data.txt');

// 确保数据文件存在
if (!file_exists(DATA_FILE)) {
    touch(DATA_FILE);
    chmod(DATA_FILE, 0666);
}

// 获取参数
$tag = isset($_POST['tag']) ? $_POST['tag'] : '';
$value = isset($_POST['value']) ? $_POST['value'] : '';

// 判断操作类型
if (isset($_POST['value'])) {
    // 存储操作 storeavalue
    $data = loadData();
    $data[$tag] = $value;
    saveData($data);
    
    // 返回 App Inventor 格式
    header('Content-Type: application/json');
    echo json_encode(["STORED", $tag, $value]);
    
} else {
    // 读取操作 getvalue
    $data = loadData();
    $val = isset($data[$tag]) ? $data[$tag] : "";
    
    // 返回 App Inventor 格式
    header('Content-Type: application/json');
    echo json_encode(["VALUE", $tag, $val]);
}

// 加载数据
function loadData() {
    if (!file_exists(DATA_FILE)) return [];
    $content = file_get_contents(DATA_FILE);
    if (empty($content)) return [];
    $data = json_decode($content, true);
    return is_array($data) ? $data : [];
}

// 保存数据
function saveData($data) {
    file_put_contents(DATA_FILE, json_encode($data, JSON_UNESCAPED_UNICODE));
}
?>