require('dotenv').config();
const express = require("express");
const { exec } = require('child_process');
const app = express();

app.use(express.json());

// 保留 /info 页面路由
app.get("/info", function (req, res) {
    // 在访问 /info 时执行保活命令
    // const commandToRun = "cd ~/serv00-play/singbox/ && bash start.sh && cd ~/.nezha-dashboard/ && bash start.sh&";
    const commandToRun = "cd ~/ && bash serv00.sh";
    exec(commandToRun, function (err, stdout, stderr) {
        if (err) {
            console.log("命令执行错误: " + err);
            res.status(500).send("服务器错误");
            return;
        }
        if (stderr) {
            console.log("命令执行标准错误输出: " + stderr);
        }
        console.log("命令执行成功:\n" + stdout);
    });

    res.type("html").send("<pre>你好啊</pre>");
});

// 只允许访问 /info 页面，其他页面返回 404
app.use((req, res, next) => {
    if (req.path === '/info') {
        return next(); // 如果是 /info 页面，继续处理后续路由
    }
    res.status(404).send('页面未找到');
});

app.listen(3000, () => {
    console.log("服务器已启动，监听端口 3000");
});
