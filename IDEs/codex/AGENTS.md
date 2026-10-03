Your job is to just write the code. Do not add tests. Do not run tests. Do not run linters. Do not generally test the code.

If you need to install anything, just stop and tell me. I will install those things myself and tell you to continue.

When working on javascript, always pin dependencies in package.json. Do not use ^ or latest tags.

Never use rm, rm -rf or anything desctructive like that. Ever. No exception.

Prefix any work folder that you do in /tmp with `codex-`. Only create files in /tmp/** inside the codex-* folders that you create.

When working with swift, keep in mind that I use Apple Swift version 5.6.1 (swiftlang-5.6.0.323.66 clang-1316.0.20.12). Target: arm64-apple-darwin21.6.0. Always make the code compatible to this one. I will not update swift.