# ruby-mqtt-bench
mqtt-bench for ruby

This project is deeply inspired by [mqtt-bench](https://github.com/takanorig/mqtt-bench "mqtt-bench"). Ruby cannot provide the same performance as golang. This code is provided just for debuging purposes.

## Installation

    git clone https://github.com/toyokazu/ruby-mqtt-bench.git

## How to use

    cd ruby-mqtt-bench
    ./bin/mqtt_bench.rb

## Configuration

The configuration can be modified by editing mqtt_bench.conf as follows. mqtt_opts are passed to ruby-mqtt and bench_opts are used locally in ruby-mqtt-bench.

    vi conf/mqtt_bench.conf
    {
      "mqtt_opts": {
        "host": "127.0.0.1",
        "port": 1883,
        "keep_alive": 15
      },
      "bench_opts": {
        "topic": "mqtt_bench",
        "num_clients": 128,
        "data_size": 64,
        "num_msgs": 1000,
        "interval": 0
      }
    }

- topic: topic to be published
- num_clients: number of clients connecting to a target broker simultaneously
- data_size: message size
- num_msgs: total number of messages sent to a target broker
- interval: message sending interval

Message is created in JSON format. Because each message has minimum fields,
minimum message size can be calculated as follows:

Example message:

    {:cid=>"001", :data=>"", :mid=>"00001", :time=>1455754303515}

Field name and symbols have 50 bytes. "data" field size can be specified in configuration. "cid" (client id) and "mid" (message id) have number of digits with maximum number specified in configuration (num_clients and num_msgs. Time to send a message is recorded in the message as time field in ms.

