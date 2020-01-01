// Ex__1_float_format.cpp
// Output of this program:

//  Type  |   Number  |       Bytes      | Sign | Exponent | Mantissa
// -------|-----------|------------------|------|----------|---------
// Float  |         0 |     00000000     |   0  |   -126   | 0.000000
// Float  |         0 |     00000000     |   0  |   -126   | 0.000000
// Float  |         1 |     3F800000     |   0  |      0   | 1.000000
// Float  |        -1 |     BF800000     |   1  |      0   | 1.000000
// Float  | 6.674e-11 |     2E92C348     |   0  |    -34   | 1.146585
// Float  |     1e+38 |     7E967699     |   0  |    126   | 1.175494
// Float  |     1e-38 |     006CE3EE     |   0  |   -126   | 0.850706
// Float  |     1e-39 |     000AE398     |   0  |   -126   | 0.085071

#include <iostream>
#include <cstdint>

void print_float(float f)
{
	const auto bytes = static_cast<uint8_t*>(static_cast<void*>(&f));

	printf(" Float  | %9g |     ", f);

	for (int i = sizeof(float) - 1; i >= 0; i--)
		printf("%02X", bytes[i]);

	printf("     | ");

	const auto sign = bytes[3] >> 7;
	const auto exponent = ((static_cast<uint16_t>(bytes[3] & 0x7F) << 8) | bytes[2]) >> 7;
	auto exp_unbiased = exponent - 127;

	uint32_t mantissa = 0;
	for (auto i = 0; i < 3; i++)
		mantissa = (mantissa << 8) | bytes[2 - i];

	mantissa &= 0x7FFFFF; // Clear upper bit

	double mantissa_dec;
	if (exponent == 0) // This is zero or a subnormal number
	{
		mantissa_dec = mantissa / static_cast<double>(0x800000);
		exp_unbiased++;
	}
	else
		mantissa_dec = 1.0 + mantissa / static_cast<double>(0x800000);

	printf("  %d  |   %4d   | %lf\n", sign, exp_unbiased, mantissa_dec);
}

int main(void)
{
	printf("  Type  |   Number  |       Bytes      | Sign | Exponent | Mantissa\n");
	printf(" -------|-----------|------------------|------|----------|---------\n");

	print_float(0);
	print_float(-0); // The minus sign is ignored, even though IEEE 754 supports signed zero
	print_float(1);
	print_float(-1);
	print_float(6.674e-11f);
	print_float(1.0e38f);
	//print_float(1.0e39f); // Compile-time error: floating constant is out of range
	print_float(1.0e-38f);
	print_float(1.0e-39f);

	return 0;
}