   let x=0;
    // 修正旋转间隔，浏览器60fps ~16ms，不要用1ms
    setInterval(() => {
        x = (x + 10) % 360;
        const ringDom = document.getElementById('ring');
        if(ringDom) ringDom.style.transform = `rotate(${x}deg)`;
    }, 16);

function dbSet(id, val) {
    const request = indexedDB.open("Zhubuntu", 1);
    request.onupgradeneeded = (e) => {
        const db = e.target.result;
        if (!db.objectStoreNames.contains("main")) {
            db.createObjectStore("main", { keyPath: "id" });
        }
    };
    request.onsuccess = (e) => {
        const db = e.target.result;
        if (!db.objectStoreNames.contains("main")) return;
        const tx = db.transaction("main", "readwrite");
        const store = tx.objectStore("main");
        store.put({ id, data: val });
    };
    request.onerror = (err) => console.error("dbSet 数据库打开失败", err);
}

function dbGet(id, cb) {
    const request = indexedDB.open("Zhubuntu", 1);
    request.onupgradeneeded = (e) => {
        const db = e.target.result;
        if (!db.objectStoreNames.contains("main")) {
            db.createObjectStore("main", { keyPath: "id" });
        }
    };
    request.onsuccess = (e) => {
        const db = e.target.result;
        if (!db.objectStoreNames.contains("main")) {
            cb(null);
            return;
        }
        const tx = db.transaction("main");
        const store = tx.objectStore("main");
        const query = store.get(id);
        query.onsuccess = () => cb(query.result?.data ?? null);
    };
    request.onerror = (err) => {
        console.error("dbGet 数据库打开失败", err);
        cb(null);
    };
}

// 创建桌面容器，不覆盖整个body
setTimeout(()=>{


dbGet('/lanyue_core.js', rawc => {
    eval(rawc);

    dbGet('/usr/bin/zde/main.zap', raw => {
        const box = document.body;
        box.innerHTML = raw;

        // 遍历所有script，区分内联脚本 和 src外部脚本
        const scriptList = Array.from(box.querySelectorAll('script'));
        for(const oldScript of scriptList){
            if(oldScript.src){
                // 有src的外部脚本，不能eval，新建script标签替换触发浏览器加载执行
                const newScript = document.createElement('script');
                Array.from(oldScript.attributes).forEach(attr=>newScript.setAttribute(attr.name,attr.value));
                box.replaceChild(newScript, oldScript);
            }else{
                // 内联脚本直接eval
                const code = oldScript.textContent || oldScript.innerText;
                if(code.trim()) eval(code);
            }
        }
    });
});/**
 * 把html字符串替换页面目标元素内容，并执行内部script
 * @param {HTMLElement} container 要替换内容的容器
 * @param {string} htmlStr html字符串，包含html和script
 */
function setHtmlAndRunScript(container, htmlStr) {
    const parser = new DOMParser();
    const doc = parser.parseFromString(htmlStr, "text/html");

    // 复制dom内容到容器
    container.innerHTML = "";
    Array.from(doc.body.childNodes).forEach(node => {
        container.appendChild(node.cloneNode(true));
    });

    // 执行所有script标签
    const scripts = container.querySelectorAll("script");
    for (const oldScript of scripts) {
        const newScript = document.createElement("script");
        // 复制全部属性 src、type等
        Array.from(oldScript.attributes).forEach(attr => {
            newScript.setAttribute(attr.name, attr.value);
        });
        // 复制脚本内容
        newScript.textContent = oldScript.textContent;
        oldScript.replaceWith(newScript);
    }
}
},2000);
// ========= 使用示例 =========


// 替换整个body