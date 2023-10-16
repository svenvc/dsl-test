## Installation

For SSH key based access:
```Metacello new	repository: 'git@github.com:svenvc/dsl-test.git';	baseline: 'DslTest';	load.```

For public HTTPS access:
```Metacello new	repository: 'https://github.com/svenvc/dsl-test.git';	baseline: 'DslTest';	load.```
For local access:```Metacello new	repository: 'gitlocal:///Users/sven/Develop/git/dsl-test';	baseline: 'DslTest';	load.```## Load Lepiter				After installing with Metacello, you will be able to execute```#BaselineOfDslTest asClass loadLepiter```