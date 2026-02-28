const http = require('http');

const server = http.createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'application/json' });
  res.end(JSON.stringify({ 
    status: "Success",
    message: "Hello from the Backend Tier (Node.js)!",
    tier: 2 
  }));
});

server.listen(5000, () => {
  console.log('Backend logic running on port 5000');
});