*** Settings ***
Documentation       Sample Testing
Library     BuiltIn
Library     ../Libs/MyLibrary.py

*** Keywords ***


*** Variables ***
${NUM1}          5
${NUM2}          3
${EXPECTED_SUM}  8
${EXPECTED_SUB}  2
${EXPECTED_MUL}  15
${NAME}          Robot

*** Test Cases ***
ADDITION TEST
    [Documentation]    Test addition of two numbers
    ${result}=    Evaluate    ${NUM1} + ${NUM2}
    Should Be Equal As Numbers    ${result}    ${EXPECTED_SUM}

SUBTRACTION TEST
    [Documentation]    Test subtraction of two numbers
    ${result}=    Evaluate    ${NUM1} - ${NUM2}
    Should Be Equal As Numbers    ${result}    ${EXPECTED_SUB}

TEST3
    [Documentation]    Custom Library experiment
    ${greeting}=    Greet    ${NAME}
    Log    ${greeting}
    Should Be Equal    ${greeting}    Hello, Robot!

TEST4
    [Documentation]    Test4 is just an experiment
    ${result}=    Add Numbers    ${NUM1}    ${NUM2}
    Should Be Equal As Numbers    ${result}    ${EXPECTED_SUM}

TEST5
    [Documentation]    Test4 is just an experiment
    ${result}=    Multiply Numbers    ${NUM1}    ${NUM2}
    Should Be Equal As Numbers    ${result}    ${EXPECTED_MUL}

