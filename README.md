# Xkye Language

<p align="center"> 
<a href="xky logo"><img src="images/logo.png" align="center" height="200" width="200" ></a>
</p>

**Xkye** (pronounced: **/skaɪ/**) is an Open source, minimal, keyword less configuration file language that consists of text-based content with a structure and syntax comprising majorly key-value pairs. Thus the name **Xkye** is the anagram of the word **key-x** denoting keys which can have any values. These files can be used to store and retrieve individual or group of configuration settings for any application development. The **Xkye** file will go generally with the file extention **.xye**.

Xkye was created as an extended version of ***.ini*** format with more flexibility over reusing the ***entities*** and the group of entities called ***clutches***.

</br>

[![forthebadge](https://forthebadge.com/images/badges/open-source.svg)](https://forthebadge.com)
[![forthebadge](https://forthebadge.com/images/badges/ctrl-c-ctrl-v.svg)](https://forthebadge.com)
[![forthebadge](https://forthebadge.com/images/badges/powered-by-coffee.svg)](https://forthebadge.com)
[![forthebadge](https://forthebadge.com/images/badges/no-ragrets.svg)](https://forthebadge.com)

## Hello, World!
A basic **Hello, World!** program in xkye language can be expressed concisely in just one or two lines as below:

![Hello, World!](images/helloworld.png)

The output of the above [script](examples/helloworld.xky) will be
```sh
Hello, World!
```

## Format
Further details regarding syntax and structure of xkye language is explained in xkye's wiki docs.
- [Entity]()
- [value]()
- [Pair]()
- [Comment]()
- [Clutch]()
- [Clutch Span]()
- [Sub Clutch]()
- [Globe]()
- [Fetch]()


## Status
***Xkye*** is currently in its 1st major version, I will try to semi-regularly introduces breaking changes. These changes will be usually fairly easy to adapt to. The up-to-date grammer file [xkye.g4](Xkye.g4) is included in this repository. You can use this file to generate the lexers and parsers for various languages using antlr4. 

## Demo
Below is the basic syntax of the complete demo.xye file with all its components,

![Demo File](images/demo.png)

The output of the above script will be
```sh
value
127.0.0.1
192.168.0.0/24
```

You can easily copy paste the code using the [Demo.xky](examples/demo.xky) file included in the repository

## Applications using Xkye
Currently various applications using xkye in the contexts of configuration are in development phases, one of such is [GrubChirp](https://github.com/grubchirp) 

## Upcoming features for V2.0
- Inclusion of import statement for multi file support
- Addition of escape character for better string manipulation

## Contributing
We welcome all contributions to Xkye regardless of how small or large they are. Everything from spelling fixes to new feature to be included in the structure and syntax are welcomed and appreciated. 

If you are not familiar with making a pull request using GitHub and/or git, please read [this guide](https://docs.github.com/en/github/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/about-pull-requests). If you're looking for ways to contribute, please look at our [issue tracker](https://github.com/RahmanAnsari/xkye-lang/issues).

## Code of conduct
This project and everyone participating in it will be governed by the [Xky Code of Conduct](CODE_OF_CONDUCT.md). By participating, you are expected to uphold this code. Please report unacceptable behavior to my email.

## Legal
Xkye is open-source language specification that is released under the MIT License. For details on the license, see the [LICENSE](https://github.com/RahmanAnsari/xkye-lang/blob/main/LICENSE) file.
