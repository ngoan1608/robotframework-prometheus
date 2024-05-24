# generated at 24.05.2024 - 18:15:34

*** Settings ***
Resource    ../resources.resource
Documentation    Test file to set values for Prometheus

*** Test Cases ***

Prometheus Set Values Execution I-223-A
   rf.extensions.pretty_print    ==== Execution: 'I-223-A' / 'Suite-A-Test-03' : Room_1 / Testbench 1

   ${success}    ${result}    rf.prometheus_interface.inc_counter    name=num_passed    labels=Room_1;Testbench 1;Suite-A-Test-03;PASSED
   rf.extensions.pretty_print    [inc_counter] (${success}) : ${result}

   ${success}    ${result}    rf.prometheus_interface.set_gauge    name=beats_per_minute    value=10    labels=Room_1;Testbench 1
   rf.extensions.pretty_print    [set_gauge] (${success}) : ${result}

   rf.prometheus_interface.set_daylight

   sleep    2s

