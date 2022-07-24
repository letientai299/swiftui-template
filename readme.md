# SwiftUI project template

## Status

**WIP**, nothing guarantied. I'm adding new features whenever needed as I'm
still learning Swift and SwiftUI.

## Usage

Use tool like [degit](https://github.com/Rich-Harris/degit) to create a new
project from this template.

This is configured to:

- Use [`tuist`](https://tuist.io) to manage the XCode project

```sh
$ curl -Ls https://install.tuist.io | bash
```

- Use [`Inject`](https://github.com/krzysztofzablocki/Inject) and
  [`InjectionIII`](https://github.com/johnno1962/InjectionIII) to hot reload code
  change on Emulator (so we can use [`AppCode`](https://jetbrains.com/objc/)) to
  develop iOS/Swift app instead of the shitty `XCode` (it can't even format code
  on save, in 2022!). `InjectionIII` can be installed from App Store (see its
  Readme), so that `Inject` could load the binary properly.

Once installed `tuist` and created the project from this template, we need to
fetch dependencies and generate the `XCode` project file

```sh
$ tuist fetch
$ tuist generate --no-open
```

Then, we can start working with new project in `AppCode`

```sh
$ appcode .
```

## TODO

- [x] Config code formatting
  - `make fmt`
- [ ] CI/CD
- [ ] UI test
- [ ] Benchmark
- [ ] Setup for MacOS, WatchOS
  - [x] macOS
- [ ] Setup other useful libraries: logging, testing, ...
