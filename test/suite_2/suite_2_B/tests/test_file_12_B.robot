# generated at 27.05.2024 - 13:12:08

*** Settings ***
Resource    ../resources.resource
Documentation    Test file to set values for Prometheus

*** Test Cases ***

Prometheus Set Values Execution I-12-B
   rf.extensions.pretty_print    ==== Execution: 'I-12-B' / 'Suite-B-Test-02' : Room_1 / Testbench 2

   ${success}    ${result}    rf.prometheus_interface.inc_counter    name=num_unknown    labels=Room_1;Testbench 2;Suite-B-Test-02;UNKNOWN
   rf.extensions.pretty_print    [inc_counter] (${success}) : ${result}

   ${success}    ${result}    rf.prometheus_interface.set_gauge    name=beats_per_minute    value=15    labels=Room_1;Testbench 2
   rf.extensions.pretty_print    [set_gauge] (${success}) : ${result}

   rf.prometheus_interface.set_daylight

   sleep    2s

