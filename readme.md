Web Frameworks Benchmark

There are two versions.

1. Read some text from local file render HTML page using that text. It showcases performance of basic file IO, template engine and HTTP server.
2. Query some text from remote HTTP service (service delays each request for some time) and render HTML page using that text. It's more close to real life and show how Web Framework performs when it needs to wait for response from DB or other services.

In every folder there's an example for different Web Framework, checkout instructions in `readme.md` in corresponding folder.

To see first test go to http://localhost:3000/file for the second go to
http://localhost:3000/service

Performance measured using `siege` tool with following command (unless explicitly said otherwise)

    siege -b -t10s -c100 http://localhost:3000/file
    siege -b -t10s -c100 http://localhost:3000/service

# Results

Rails

2383

Transactions:		        3046 hits
Availability:		      100.00 %
Elapsed time:		        9.53 secs
Data transferred:	        6.92 MB
Response time:		        0.31 secs
Transaction rate:	      319.62 trans/sec
Throughput:		        0.73 MB/sec
Concurrency:		       98.18
Successful transactions:        3046
Failed transactions:	           0
Longest transaction:	        0.43
Shortest transaction:	        0.16

Express.js

59Mb

Transactions:		       16446 hits
Availability:		      100.00 %
Elapsed time:		        9.48 secs
Data transferred:	       37.45 MB
Response time:		        0.05 secs
Transaction rate:	     1734.81 trans/sec
Throughput:		        3.95 MB/sec
Concurrency:		       95.41
Successful transactions:       16446
Failed transactions:	           0
Longest transaction:	        0.10
Shortest transaction:	        0.01

Mono.js

Transactions:		       10594 hits
Availability:		      100.00 %
Elapsed time:		        9.18 secs
Data transferred:	       24.13 MB
Response time:		        0.09 secs
Transaction rate:	     1154.03 trans/sec
Throughput:		        2.63 MB/sec
Concurrency:		       99.35
Successful transactions:       10594
Failed transactions:	           0
Longest transaction:	        0.15
Shortest transaction:	        0.02