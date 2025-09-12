hbc@hbc:~$ cat start_sunflower.sh 
#!/bin/bash

EXT_DIR="/home/hbc/文档/xwechat_files/ben594201mr_239a/msg/file/2025-08/CHROME"
TOKEN="eyJhbGciOiJSUzUxMiIsInR5cCI6IkpXVCJ9.eyJmYXJtSWQiOiI3Mjg5MTAxMDQ3NzQwMTI5IiwiaWF0IjoxNzU0MzE4MzQ4LCJleHAiOjE3NTQzMTg5NDh9.XhJ9otAclK2tVPhcc2DX-81_rLmUw3YeWL3P7HnzZtpGcxpTgTb_u7F7jzXEFswqllIy75aP-HitWo7U66y0b5E0h3muv1vKQo4sUCk9be2zxzgYvc40earwQRB8lWCHi7WkRZcoPRa7IhpYTUa014jMO_2XT0P-Zze5Tk0uhSHNqZFFXzb7c1m0cchbfjhLK7f22q3PZDn0y1knecN_l-E6QO6ASWtwMxsoYsogr_3QgLi6D85s9OKwC8lMMYny6b79IxVLoI5vywFMdf6T3w-ycmeo9JsmOfX_C4eBFEbD_4yQWw5WtFDAaiZfjASAFdvpLamt6JrDFT3ctZrgqQ"

google-chrome \
  --user-data-dir=/tmp/chrome-clean \
  --no-first-run \
  --no-default-browser-check \
  --disable-component-update \
  --disable-plugins-discovery \
  --disk-cache-dir=/dev/null \
  --load-extension="$EXT_DIR" \
