*** Settings ***
Resource    ./resources.resource
Documentation    Prometheus test file to set values for Prometheus

*** Test Cases ***

Prometheus Set Values Test 32
   rf.extensions.pretty_print    =========== Prometheus Set Values Test 32 / set values for Room_1/Testbench 1
   Inc Counter    name=num_failed    labels=Room_1;Testbench 1
   Set Gauge      name=beats_per_minute    value=60    labels=Room_1;Testbench 1
   sleep    4s
