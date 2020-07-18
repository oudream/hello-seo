# provisional headers are shown

> 解决问题

```bash

# https://www.cnblogs.com/yiyi17/p/8706935.html
# https://www.crifan.com/chrome_request_headers_provisional_headers_are_shown_meaning/

```


> debug 

```text

# chrome://net-export/
# https://netlog-viewer.appspot.com/#import

    Type chrome://net-export/ in the address bar and hit enter.
    Start Recording. And save Recording file to local.
    Open the page that is showing problems.
    Go back to net-internals
    You can view Recorded Log file Here https://netlog-viewer.appspot.com/#import
    click on events (###) and use the textfield to find the event related to your resource (use parts of the URL).
    Finally, click on the event and see if the info shown tells you something.

```
