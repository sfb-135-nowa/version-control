# Empirical Rounding

In scientific writing, empirical numbers should be rounded according to their estimated precision.
This example contains a Matlab/Octave function which rounds and formats a number according to its estimated measurement error.
It has been ported from an [R package][mpformatr] that I created a few years ago for my thesis writing.

## Implemented Rounding Convention

The essential part is to determine the order of magnitude of the given measurement error.
It denominates the number of decimal places to which an empirical number should be rounded.
Places below this order of magnitude probably contain random noise and thus can be dropped.
The same applies to the measurement error itself.
The following rules are implemented to find this order of magnitude:

- If the first significant digit of the measurement error remains 1 after rounding to 2 significant digits, the decimal place according to the second significant digit is used.
- Otherwise, the decimal place according to the first significant digit of the measurement error is used.

[mpformatr]: https://github.com/tamaracha/mpformatr
