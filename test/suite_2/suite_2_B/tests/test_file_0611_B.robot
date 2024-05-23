# generated at 23.05.2024 - 13:02:05

*** Settings ***
Resource    ../resources.resource
Documentation    Test file to set values for Prometheus

*** Test Cases ***

Prometheus Set Values Execution I-0611-B
   rf.extensions.pretty_print    === Execution: 'I-0611-B' / 'Suite-B-Test-01' : Room_1 / Testbench 2
   rf.extensions.pretty_print    >>> inc 'num_failed' / beats_per_minute = 185 / testresult = FAILED

   Inc Counter    name=num_failed    labels=Room_1;Testbench 2;Suite-B-Test-01;FAILED
   Set Gauge    name=beats_per_minute    value=185    labels=Room_1;Testbench 2

   sleep    4s

