# Empirical Rounding

In scientific writing, empirical numbers should be rounded according to their estimated precision.
This example contains a Matlab/Octave function which rounds and formats a number according to its estimated measurement error.
It has been ported from an [R package][mpformatr] that I created a few years ago for my thesis writing.

## Usage

The `format_emp` takes a number to be formatted and a measurement error.
If the second argument is omitted, the first input is used as measurement error and as value to be formatted.

```matlab
mean = 50.38
sem = 6.4
format_emp(mean, sem)
format_emp(sem)
```

## Implemented Rounding Convention

The essential part is to determine the order of magnitude of the given measurement error.
It denominates the number of decimal places to which an empirical number should be rounded.
Places below this order of magnitude probably contain random noise and thus can be dropped.
The same applies to the measurement error itself.
The following rules are implemented to find this order of magnitude:

- If the first significant digit of the measurement error remains 1 after rounding to 2 significant digits, the decimal place according to the second significant digit is used.
- Otherwise, the decimal place according to the first significant digit of the measurement error is used.

## Tests

Octave [allows the integration of testing and demonstration code][octave-tests] in the source code files themselves as dedicated comments.
The _tests.csv_ file contains a collection of different test cases used to test the Matlab functions included in this example.
This strategy of separating testing data from code keeps the tests portable.
The dataset consists of the following variables:

- `center` contains values of an arbitrary measurement scale. This could be measurement values, but also statistical values that preserve their input scale.
- `se` contains corresponding (estimated) measurement errors.
- `oom` contains the decimal place to which the values in this case should be rounded.
- `center_exp` contains the expected values of `center`, how they should be formatted.
- `se_exp` contains the expected values of `se`, how they should be formatted.

[Octave] and the [IO package][io-package] must be installed in order to run the tests in Octave.
Run octave in this example's directory and execute the following commands:

```matlab
# Install io from octave forge, if not already done
pkg install -forge io
# Test the format_emp function
test format_emp
# Test the find_oom helper function
test find_oom
```

## License

The content in this example is licensed under the [MIT license][mit].

[mpformatr]: https://github.com/tamaracha/mpformatr
[mit]: https://mit-license.org
[octave]: https://www.gnu.org/software/octave/download
[octave-tests]: https://wiki.octave.org/Tests
[io-package]: https://octave.sourceforge.io/io/
