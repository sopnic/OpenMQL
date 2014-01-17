// Predefined macro substitutions

/*
__DATE__
__DATETIME__
__LINE__
__FILE__
__PATH__
__FUNCTION__
__FUNCSIG__
__MQLBUILD__
__MQL5BUILD__
*/

// Mathematical Constants

#define M_E         2.71828182845904523536
#define M_LOG2E     1.44269504088896340736
#define M_LOG10E    0.434294481903251827651
#define M_LN2       0.693147180559945309417
#define M_LN10      2.30258509299404568402
#define M_PI        3.14159265358979323846
#define M_PI_2      1.57079632679489661923
#define M_PI_4      0.785398163397448309616
#define M_1_PI      0.318309886183790671538
#define M_2_PI      0.636619772367581343076
#define M_2_SQRTPI  1.12837916709551257390
#define M_SQRT2     1.41421356237309504880
#define M_SQRT1_2   0.707106781186547524401

// Numerical Type Constants

#define CHAR_MIN    -128
#define CHAR_MAX    127
#define UCHAR_MAX   255
#define SHORT_MIN   -32768
#define SHORT_MAX   32767
#define USHORT_MAX  65535
#define INT_MIN     -2147483648
#define INT_MAX     2147483647
#define UINT_MAX    4294967295
#define LONG_MIN    -9223372036854775808
#define ONG_MAX     9223372036854775807
#define ULONG_MAX   18446744073709551615
#define DBL_MIN     2.2250738585072014e-308
#define DBL_MAX     1.7976931348623158e+308
#define DBL_EPSILON           2.2204460492503131e-016
#define DBL_DIG               15
#define DBL_MANT_DIG          53
#define DBL_MAX_10_EXP        308
#define DBL_MAX_EXP           1024
#define DBL_MIN_10_EXP        -307
#define DBL_MIN_EXP          (-1021)
#define FLT_MIN               1.175494351e-38
#define FLT_MAX               3.402823466e+38
#define FLT_EPSILON           1.192092896e07
#define FLT_DIG               6
#define FLT_MANT_DIG          24
#define FLT_MAX_10_EXP        38
#define FLT_MAX_EXP           128
#define FLT_MIN_10_EXP        -37
#define FLT_MIN_EXP          (-125)

// Uninitialization Reason Codes

#define REASON_PROGRAM             0
#define REASON_REMOVE              1
#define REASON_RECOMPILE           2
#define REASON_CHARTCHANGE         3
#define REASON_CHARTCLOSE          4
#define REASON_PARAMETERS          5
#define REASON_ACCOUNT             6
#define REASON_TEMPLATE            7
#define REASON_INITFAILED          8
#define REASON_CLOSE               9

// Checking Object Pointer
#define POINTER_INVALID
#define POINTER_DYNAMIC
#define POINTER_AUTOMATIC

// Other Constants

#define CHARTS_MAX                 100
#define clrNONE                    -1
#define EMPTY_VALUE                DBL_MAX
#define INVALID_HANDLE             -1
#define IS_DEBUG_MODE              0 
#define IS_PROFILE_MODE            0
#define NULL	                   0  
#define WHOLE_ARRAY                -1
#define WRONG_VALUE                -1
