# Web Frameworks Benchmark

How it works - application query some text from remote HTTP service (service delays each
request for some time) and render HTML page using that text.

It simulates how Web Framework performs when it needs to wait for response from DB or
other services, how fast its templating engine is and how fast it is itself.

In every folder there's an example for different Web Framework, checkout instructions in `readme.md` in corresponding folder.

Performance measured using `siege` tool with following command

    siege -b -t10s -c100 http://localhost:3000

# Results

## Express.js

```
Transactions:		         225 hits
Availability:		      100.00 %
Elapsed time:		        9.35 secs
Data transferred:	        0.51 MB
Response time:		        3.20 secs
Transaction rate:	       24.06 trans/sec
Throughput:		        0.05 MB/sec
Concurrency:		       76.94
Successful transactions:         225
Failed transactions:	           0
Longest transaction:	        4.07
Shortest transaction:	        0.20
```

## Ruby on Rails (with Puma)

```
Transactions:		         223 hits
Availability:		      100.00 %
Elapsed time:		        9.64 secs
Data transferred:	        0.51 MB
Response time:		        0.75 secs
Transaction rate:	       23.13 trans/sec
Throughput:		        0.05 MB/sec
Concurrency:		       17.34
Successful transactions:         223
Failed transactions:	           0
Longest transaction:	        2.97
Shortest transaction:	        0.36
```

## Mono.js

```
Transactions:		         230 hits
Availability:		      100.00 %
Elapsed time:		        9.48 secs
Data transferred:	        0.52 MB
Response time:		        3.25 secs
Transaction rate:	       24.26 trans/sec
Throughput:		        0.06 MB/sec
Concurrency:		       78.94
Successful transactions:         230
Failed transactions:	           0
Longest transaction:	        4.12
Shortest transaction:	        0.37
```