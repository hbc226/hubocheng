const http = require("http");

const server = http.createServer((req, res) => {
  res.writeHead(200, { "Content-Type": "text/plain; charset=utf-8" });
  res.end("欢迎来到我的第一个 Node.js 服务器!");
});

server.listen(4000, () => {
  console.log("Server running at http://localhost:4000/");
});
