# pyppm/software

This directory contains all the software required to use the PyPPM hardware.

Global compilation configuration information is stored in `global.mk` here,
and each subdirectory sources that file before defining new make rules.

### Core source code

A core set of functionality, located in `core`, has been written in the C
language to interface to the PyPPM via the character device (usually
`/dev/ttyACM0`) it creates on the host computer. All higher level code
(including the Python module) wraps this core C code.

*Note:* Depending on the ownership of the `/dev/ttyACM0` or
`/dev/cu.usbmodemPyPPM` device file created by the operating system upon
connection of the PyPPM to the host computer, you may have to run programs
that talk to the PyPPM as root, _e.g.:_ `./liveft` would become
`sudo ./liveft`, _etc_. This goes for any Python programs that
use the `pyppm` module too.

### Command-line utilities

The `cli` directory contains small command-line utilities that perform very
small chunks of work. Each one either has a short conversation with the
PyPPM hardware or does a small piece of data processing on acquired
signals.

These `cli` utilities are meant mainly for the purposes of debugging. If you
want to use the PyPPM for anything useful, the Python module is recommended.

A good test of the PyPPM and the `cli` utilities is to build them and run
(with the PyPPM connected) a few short commands:

```
make
./ver
./rpp
```

These commands should connect to the PyPPM, read the firmware version and
current pulse program in memory. If you've just flashed and connected the
PyPPM, the pulse program dump should be all zeros.

### Live acquisition view

The `liveft` directory contains source code for a small OpenGL application that
continuously acquires short data streams from the PyPPM and displays an FFT'ed
representation to the screen, with a bit of signal averaging. This program is
really just for debugging the hardware analog signal chain.

To use `liveft`, just build it and run (with a PyPPM attached):

> `make && ./liveft`

### Signal-to-noise calculator

The `napkin` directory contains a small C program that may be used to perform
a battery of calculations that predict experimental results (noise level,
signal level, coil resistance, inductance, and quality, _etc_) from a few
input values.

Example input values may be found in `napkin/coil-2.0.txt`. To compute the
results, just build and run like so:

> `make && ./napkin < coil-2.0.txt`

### Free Induction Decay solvers

The `solver` directory holds a few GNU Octave scripts that may be used to
solve for the resulting Free Induction Decay (FID) signal given a set of
polarization properties. I wrote these scripts to illustrate the effect of
long polarization turn-off times on FID intensity, a demonstration of the
[adiabatic theorem](http://en.wikipedia.org/wiki/Adiabatic_theorem).

To run the solvers, just build:

> `make`

### Python modules

The Python modules in `py` are really where it's at. For more information on
how to build, install and use the Python modules, read `py/README.md`.

### Pulse programs

A library of known-good pulse programs has been started in the `pulprogs`
directory in the form of a pure-Python module/package. More information on
the available pulse programs and pulse program syntax is available in the
`pulprogs/README.md` file.

