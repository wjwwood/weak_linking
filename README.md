This repository is an example setup for trying to solve our dynamic (weak?) linking issues.

To use:

```
$ mkdir -p ~/weak_linking_ws/src
$ cd ~/weak_linking_ws/src
$ git clone https://github.com/wjwwood/weak_linking.git
$ cd weak_linking
$ git submodule update
$ cd ../..
$ ./src/weak_linking/ament/ament_tools/scripts/ament.py build
```

Then in a new shell, you can run it:

```
$ . ~/weak_linking/install/setup.bash
$ example__rmw_impl1
Using impl: 1
$ example__rmw_impl2
Using impl: 2
```

The previous two steps are the desired behavior, but in reality, the build may fail or the examples may raise an exception or not print the desired values.
