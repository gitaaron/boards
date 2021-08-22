const handler = require('serve-handler');
const http = require('http');
const url = require('url');

const server = http.createServer((request, response) => {
  // You pass two more arguments for config and middleware
  // More details here: https://github.com/vercel/serve-handler#options
  var pathname = url.parse(request.url).pathname;
  console.log(pathname);
  response.setHeader('Access-Control-Allow-Origin', '*');
  response.setHeader('Access-Control-Request-Method', '*');
  response.setHeader('Access-Control-Allow-Methods', 'OPTIONS, GET');
  response.setHeader('Access-Control-Allow-Headers', '*');
  return handler(request, response);

})

port = 5056

server.listen(port, () => {
  console.log('Running at http://localhost:'+port);
});
