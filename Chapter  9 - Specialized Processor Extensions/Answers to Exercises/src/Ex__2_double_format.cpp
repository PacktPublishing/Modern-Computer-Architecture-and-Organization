// Ex__2_double_format.cpp
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
// Double |         0 | 0000000000000000 |   0  |  -1022   | 0.000000
// Double |         0 | 0000000000000000 |   0  |  -1022   | 0.000000
// Double |         1 | 3FF0000000000000 |   0  |      0   | 1.000000
// Double |        -1 | BFF0000000000000 |   1  |      0   | 1.000000
// Double | 6.674e-11 | 3DD25868F4DEAE16 |   0  |    -34   | 1.146584
// Double |     1e+38 | 47D2CED32A16A1B1 |   0  |    126   | 1.175494
// Double |     1e+39 | 48078287F49C4A1D |   0  |    129   | 1.469368
// Double |     1e-38 | 380B38FB9DAA78E4 |   0  |   -127   | 1.701412
// Double |     1e-39 | 37D5C72FB1552D83 |   0  |   -130   | 1.361129
// Double |    1e+308 | 7FE1CCF385EBC8A0 |   0  |   1023   | 1.112537
// Double |    1e-308 | 000730D67819E8D2 |   0  |  -1022   | 0.449423
// Double |    1e-309 | 0000B8157268FDAF |   0  |  -1022   | 0.044942

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

void print_double(double d)
{
	const auto bytes = static_cast<uint8_t*>(static_cast<void*>(&d));

	printf(" Double | %9g | ", d);

	for (int i = sizeof(double) - 1; i >= 0; i--)
		printf("%02X", bytes[i]);

	printf(" | ");

	const auto sign = bytes[7] >> 7;
	const auto exponent = ((static_cast<uint16_t>(bytes[7] & 0x7F) << 8) | bytes[6]) >> 4;
	auto exp_unbiased = exponent - 1023;

	uint64_t mantissa = 0;
	for (auto i = 0; i < 7; i++)
		mantissa = (mantissa << 8) | bytes[6 - i];

	mantissa &= 0xFFFFFFFFFFFFF; // Save the low 52 bits

	double mantissa_dec;
	if (exponent == 0) // This is zero or a subnormal number
	{
		mantissa_dec = mantissa / static_cast<double>(0x10000000000000);
		exp_unbiased++;
	}
	else
		mantissa_dec = 1.0 + mantissa / static_cast<double>(0x10000000000000);

	printf("  %d  |  %5d   | %lf\n", sign, exp_unbiased, mantissa_dec);
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

	print_double(0);
	print_double(-0); // The minus sign is ignored, even though IEEE 754 supports signed zero
	print_double(1);
	print_double(-1);
	print_double(6.674e-11);
	print_double(1.0e38);
	print_double(1.0e39);
	print_double(1.0e-38);
	print_double(1.0e-39);

	print_double(1.0e308);
	//print_double(1.0e309); // Compile-time error: floating constant is out of range
	print_double(1.0e-308);
	print_double(1.0e-309);

	return 0;
}