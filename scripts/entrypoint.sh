#! /bin/bash
rdebug-ide --host 0.0.0.0 \
           --port 1234 \
           --skip_wait_for_start  -- \
           bundle exec puma -C config/puma.rb -b 'tcp://0.0.0.0:3000'