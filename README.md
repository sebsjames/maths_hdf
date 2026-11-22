# HDF data access for Seb's maths library

This repository contains `sm::hdfdata`, a C++-20 module that wraps the HDF5 data library and works well with the code in sebsjames/maths.

It is a component in many of Seb's scientific programs.

## Dependencies

This code uses libhdf5, so you will need to install it. For example, on Debian/Ubuntu, you would:

```bash
sudo apt install libhdf5-dev
```

It needs access to the sebsjames/maths code, too.

## Build requirements

The build requirements are the same as sebsjames/maths, so see that readme for details. The build process is identical.
