.class public final Lcom/google/common/math/LongMath;
.super Ljava/lang/Object;
.source "LongMath.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation runtime Lcom/google/common/math/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/math/LongMath$MillerRabinTester;
    }
.end annotation


# static fields
.field private static final SIEVE_30:I = -0x208a2883

.field public static final biggestBinomials:[I

.field public static final biggestSimpleBinomials:[I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final factorials:[J

.field public static final halfPowersOf10:[J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final maxLog10ForLeadingZeros:[B
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final millerRabinBaseSets:[[J

.field public static final powersOf10:[J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    const/16 v0, 0x40

    new-array v0, v0, [B

    .line 1
    fill-array-data v0, :array_74

    sput-object v0, Lcom/google/common/math/LongMath;->maxLog10ForLeadingZeros:[B

    const/16 v0, 0x13

    new-array v1, v0, [J

    .line 2
    fill-array-data v1, :array_98

    sput-object v1, Lcom/google/common/math/LongMath;->powersOf10:[J

    new-array v0, v0, [J

    .line 3
    fill-array-data v0, :array_e8

    sput-object v0, Lcom/google/common/math/LongMath;->halfPowersOf10:[J

    const/16 v0, 0x15

    new-array v0, v0, [J

    .line 4
    fill-array-data v0, :array_138

    sput-object v0, Lcom/google/common/math/LongMath;->factorials:[J

    const/16 v0, 0x22

    new-array v0, v0, [I

    .line 5
    fill-array-data v0, :array_190

    sput-object v0, Lcom/google/common/math/LongMath;->biggestBinomials:[I

    const/16 v0, 0x1f

    new-array v0, v0, [I

    .line 6
    fill-array-data v0, :array_1d8

    sput-object v0, Lcom/google/common/math/LongMath;->biggestSimpleBinomials:[I

    const/4 v0, 0x7

    new-array v1, v0, [[J

    const/4 v2, 0x2

    new-array v3, v2, [J

    .line 7
    fill-array-data v3, :array_21a

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, 0x3

    new-array v4, v3, [J

    fill-array-data v4, :array_226

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const/4 v4, 0x4

    new-array v5, v4, [J

    fill-array-data v5, :array_236

    aput-object v5, v1, v2

    const/4 v2, 0x5

    new-array v5, v2, [J

    fill-array-data v5, :array_24a

    aput-object v5, v1, v3

    const/4 v3, 0x6

    new-array v5, v3, [J

    fill-array-data v5, :array_262

    aput-object v5, v1, v4

    new-array v0, v0, [J

    fill-array-data v0, :array_27e

    aput-object v0, v1, v2

    const/16 v0, 0x8

    new-array v0, v0, [J

    fill-array-data v0, :array_29e

    aput-object v0, v1, v3

    sput-object v1, Lcom/google/common/math/LongMath;->millerRabinBaseSets:[[J

    return-void

    :array_74
    .array-data 1
        0x13t
        0x12t
        0x12t
        0x12t
        0x12t
        0x11t
        0x11t
        0x11t
        0x10t
        0x10t
        0x10t
        0xft
        0xft
        0xft
        0xft
        0xet
        0xet
        0xet
        0xdt
        0xdt
        0xdt
        0xct
        0xct
        0xct
        0xct
        0xbt
        0xbt
        0xbt
        0xat
        0xat
        0xat
        0x9t
        0x9t
        0x9t
        0x9t
        0x8t
        0x8t
        0x8t
        0x7t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x3t
        0x3t
        0x3t
        0x3t
        0x2t
        0x2t
        0x2t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_98
    .array-data 8
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
        0x2540be400L
        0x174876e800L
        0xe8d4a51000L
        0x9184e72a000L
        0x5af3107a4000L
        0x38d7ea4c68000L
        0x2386f26fc10000L
        0x16345785d8a0000L
        0xde0b6b3a7640000L
    .end array-data

    :array_e8
    .array-data 8
        0x3
        0x1f
        0x13c
        0xc5a
        0x7b86
        0x4d343
        0x3040a5
        0x1e28678
        0x12d940b6
        0xbc7c871cL
        0x75cdd4719L
        0x49a0a4c700L
        0x2e0466fc608L
        0x1cc2c05dbc53L
        0x11f9b83a95b45L
        0xb3c13249d90bbL
        0x7058bf6e27a751L
        0x463777a4d8c892dL
        0x2be2aac7077d5bc3L    # 2.731041190138108E-97
    .end array-data

    :array_138
    .array-data 8
        0x1
        0x1
        0x2
        0x6
        0x18
        0x78
        0x2d0
        0x13b0
        0x9d80
        0x58980
        0x375f00
        0x2611500
        0x1c8cfc00
        0x17328cc00L
        0x144c3b2800L
        0x13077775800L
        0x130777758000L
        0x1437eeecd8000L
        0x16beecca730000L
        0x1b02b9306890000L
        0x21c3677c82b40000L
    .end array-data

    :array_190
    .array-data 4
        0x7fffffff
        0x7fffffff
        0x7fffffff
        0x3a25db
        0x1dc79
        0x3f2f
        0x10f1
        0x6c5
        0x377
        0x216
        0x169
        0x109
        0xce
        0xa9
        0x8f
        0x7d
        0x6f
        0x65
        0x5e
        0x58
        0x53
        0x4f
        0x4c
        0x4a
        0x48
        0x46
        0x45
        0x44
        0x43
        0x43
        0x42
        0x42
        0x42
        0x42
    .end array-data

    :array_1d8
    .array-data 4
        0x7fffffff
        0x7fffffff
        0x7fffffff
        0x285146
        0x150eb
        0x2dcc
        0xc92
        0x521
        0x2ac
        0x1a3
        0x11f
        0xd6
        0xa9
        0x8b
        0x77
        0x69
        0x5f
        0x57
        0x51
        0x4c
        0x49
        0x46
        0x44
        0x42
        0x40
        0x3f
        0x3e
        0x3e
        0x3d
        0x3d
        0x3d
    .end array-data

    :array_21a
    .array-data 8
        0x473f6
        0x1c1111acd0b9428L    # 3.1855675420061E-300
    .end array-data

    :array_226
    .array-data 8
        0x34c91838
        0xa10ad7d5c6610c1L
        0x318a8c12ce9c70e7L    # 4.808051585655767E-70
    .end array-data

    :array_236
    .array-data 8
        0x3fc6e038e0L
        0xf
        0x1b6ebec62L
        0x386c87553e12cL
    .end array-data

    :array_24a
    .array-data 8
        0x2b5343fd6a30L
        0x2
        0x273abc
        0xca2b9d9
        0xdf8286ccL
    .end array-data

    :array_262
    .array-data 8
        0x1c6b470864f682L
        0x2
        0x3c1c7396f6dL
        0x2142e2e3f22de5cL
        0x297105b6b7b29ddL
        0x370eb221a5f176ddL    # 1.7205605495331308E-43
    .end array-data

    :array_27e
    .array-data 8
        0x81f23f390affe88L
        0x2
        0x70722e8f5cd0L
        0x20cd6bd5ace2d1L
        0x9bbc940c751630L
        0xa90404784bfcb4dL    # 8.45563543651314E-258
        0x1189b3f265c2b0c7L
    .end array-data

    :array_29e
    .array-data 8
        0x7fffffffffffffffL
        0x2
        0x145
        0x249f
        0x6e12
        0x6e0d7
        0x953d18
        0x6b0191fe
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binomial(II)J
    .registers 15

    const-string v0, "n"

    .line 1
    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    const-string v0, "k"

    .line 2
    invoke-static {v0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    const/4 v0, 0x1

    if-gt p1, p0, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    const-string v2, "k (%s) > n (%s)"

    .line 3
    invoke-static {v1, v2, p1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    shr-int/lit8 v1, p0, 0x1

    if-le p1, v1, :cond_1b

    sub-int p1, p0, p1

    :cond_1b
    const-wide/16 v1, 0x1

    if-eqz p1, :cond_a2

    if-eq p1, v0, :cond_a0

    .line 4
    sget-object v0, Lcom/google/common/math/LongMath;->factorials:[J

    const/16 v3, 0x15

    if-ge p0, v3, :cond_32

    .line 5
    aget-wide v1, v0, p0

    aget-wide v3, v0, p1

    sub-int/2addr p0, p1

    aget-wide p0, v0, p0

    mul-long v3, v3, p0

    div-long/2addr v1, v3

    return-wide v1

    .line 6
    :cond_32
    sget-object v0, Lcom/google/common/math/LongMath;->biggestBinomials:[I

    const/16 v3, 0x22

    if-ge p1, v3, :cond_9a

    aget v0, v0, p1

    if-le p0, v0, :cond_3d

    goto :goto_9a

    .line 7
    :cond_3d
    sget-object v0, Lcom/google/common/math/LongMath;->biggestSimpleBinomials:[I

    const/16 v3, 0x1f

    const/4 v4, 0x2

    if-ge p1, v3, :cond_58

    aget v0, v0, p1

    if-gt p0, v0, :cond_58

    add-int/lit8 v0, p0, -0x1

    int-to-long v1, p0

    :goto_4b
    if-gt v4, p1, :cond_57

    int-to-long v5, v0

    mul-long v1, v1, v5

    int-to-long v5, v4

    .line 8
    div-long/2addr v1, v5

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_4b

    :cond_57
    return-wide v1

    :cond_58
    int-to-long v5, p0

    .line 9
    sget-object v0, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v5, v6, v0}, Lcom/google/common/math/LongMath;->log2(JLjava/math/RoundingMode;)I

    move-result v0

    add-int/lit8 p0, p0, -0x1

    move v3, v0

    move-wide v7, v1

    move-wide v9, v7

    :goto_64
    if-gt v4, p1, :cond_8a

    add-int/2addr v3, v0

    const/16 v11, 0x3f

    if-ge v3, v11, :cond_72

    int-to-long v11, p0

    mul-long v5, v5, v11

    int-to-long v11, v4

    mul-long v9, v9, v11

    goto :goto_85

    :cond_72
    cmp-long v3, v7, v1

    if-nez v3, :cond_78

    .line 10
    div-long/2addr v5, v9

    goto :goto_81

    .line 11
    :cond_78
    invoke-static {v7, v8, v9, v10}, Lcom/google/common/math/LongMath;->gcd(JJ)J

    move-result-wide v11

    .line 12
    div-long/2addr v7, v11

    .line 13
    div-long/2addr v9, v11

    .line 14
    div-long/2addr v5, v9

    mul-long v5, v5, v7

    :goto_81
    move-wide v7, v5

    int-to-long v5, p0

    int-to-long v9, v4

    move v3, v0

    :goto_85
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 p0, p0, -0x1

    goto :goto_64

    :cond_8a
    cmp-long p0, v7, v1

    if-nez p0, :cond_90

    .line 15
    div-long/2addr v5, v9

    goto :goto_99

    .line 16
    :cond_90
    invoke-static {v7, v8, v9, v10}, Lcom/google/common/math/LongMath;->gcd(JJ)J

    move-result-wide p0

    .line 17
    div-long/2addr v7, p0

    .line 18
    div-long/2addr v9, p0

    .line 19
    div-long/2addr v5, v9

    mul-long v5, v5, v7

    :goto_99
    return-wide v5

    :cond_9a
    :goto_9a
    const-wide p0, 0x7fffffffffffffffL

    return-wide p0

    :cond_a0
    int-to-long p0, p0

    return-wide p0

    :cond_a2
    return-wide v1
.end method

.method public static ceilingPowerOfTwo(J)J
    .registers 5
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/google/common/math/MathPreconditions;->checkPositive(J)J

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_14

    const-wide/16 v0, 0x1

    sub-long/2addr p0, v0

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p0

    neg-int p0, p0

    shl-long p0, v0, p0

    return-wide p0

    .line 3
    :cond_14
    new-instance v0, Ljava/lang/ArithmeticException;

    const/16 v1, 0x46

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ceilingPowerOfTwo("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ") is not representable as a long"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkedAdd(JJ)J
    .registers 15
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    add-long v0, p0, p2

    xor-long v2, p0, p2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-gez v8, :cond_e

    const/4 v2, 0x1

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    xor-long v8, p0, v0

    cmp-long v3, v8, v6

    if-ltz v3, :cond_16

    goto :goto_17

    :cond_16
    const/4 v4, 0x0

    :goto_17
    or-int v5, v2, v4

    const-string v6, "checkedAdd"

    move-wide v7, p0

    move-wide v9, p2

    invoke-static/range {v5 .. v10}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;JJ)V

    return-wide v0
.end method

.method public static checkedMultiply(JJ)J
    .registers 19

    move-wide v6, p0

    move-wide/from16 v8, p2

    .line 1
    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    not-long v1, v6

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    add-int/2addr v1, v0

    .line 3
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    add-int/2addr v0, v1

    not-long v1, v8

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    add-int/2addr v1, v0

    const/16 v0, 0x41

    if-le v1, v0, :cond_1f

    mul-long v0, v6, v8

    return-wide v0

    :cond_1f
    const/16 v0, 0x40

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-lt v1, v0, :cond_27

    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    const-string v1, "checkedMultiply"

    move-wide v2, p0

    move-wide/from16 v4, p2

    .line 5
    invoke-static/range {v0 .. v5}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;JJ)V

    const-wide/16 v0, 0x0

    cmp-long v12, v6, v0

    if-ltz v12, :cond_38

    const/4 v0, 0x1

    goto :goto_39

    :cond_38
    const/4 v0, 0x0

    :goto_39
    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v3, v8, v1

    if-eqz v3, :cond_41

    const/4 v1, 0x1

    goto :goto_42

    :cond_41
    const/4 v1, 0x0

    :goto_42
    or-int/2addr v0, v1

    const-string v1, "checkedMultiply"

    move-wide v2, p0

    move-wide/from16 v4, p2

    .line 6
    invoke-static/range {v0 .. v5}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;JJ)V

    mul-long v13, v6, v8

    if-eqz v12, :cond_58

    .line 7
    div-long v0, v13, v6

    cmp-long v2, v0, v8

    if-nez v2, :cond_56

    goto :goto_58

    :cond_56
    const/4 v0, 0x0

    goto :goto_59

    :cond_58
    :goto_58
    const/4 v0, 0x1

    :goto_59
    const-string v1, "checkedMultiply"

    move-wide v2, p0

    move-wide/from16 v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;JJ)V

    return-wide v13
.end method

.method public static checkedPow(JI)J
    .registers 18
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    move-wide v2, p0

    move/from16 v6, p2

    const-string v0, "exponent"

    .line 1
    invoke-static {v0, v6}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v4, -0x2

    cmp-long v7, v2, v4

    if-ltz v7, :cond_12

    const/4 v4, 0x1

    goto :goto_13

    :cond_12
    const/4 v4, 0x0

    :goto_13
    const-wide/16 v7, 0x2

    cmp-long v5, v2, v7

    if-gtz v5, :cond_1b

    const/4 v5, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v5, 0x0

    :goto_1c
    and-int/2addr v4, v5

    const-wide/16 v7, 0x1

    if-eqz v4, :cond_6a

    long-to-int v4, v2

    const/4 v5, -0x2

    const-wide/16 v9, -0x1

    if-eq v4, v5, :cond_54

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4d

    if-eqz v4, :cond_47

    if-eq v4, v1, :cond_46

    const/4 v5, 0x2

    if-ne v4, v5, :cond_40

    const/16 v4, 0x3f

    if-ge v6, v4, :cond_36

    const/4 v0, 0x1

    :cond_36
    int-to-long v4, v6

    const-string v1, "checkedPow"

    move-wide v2, p0

    .line 2
    invoke-static/range {v0 .. v5}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;JJ)V

    shl-long v0, v7, v6

    return-wide v0

    .line 3
    :cond_40
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_46
    return-wide v7

    :cond_47
    if-nez v6, :cond_4a

    goto :goto_4c

    :cond_4a
    const-wide/16 v7, 0x0

    :goto_4c
    return-wide v7

    :cond_4d
    and-int/lit8 v0, v6, 0x1

    if-nez v0, :cond_52

    goto :goto_53

    :cond_52
    move-wide v7, v9

    :goto_53
    return-wide v7

    :cond_54
    const/16 v4, 0x40

    if-ge v6, v4, :cond_59

    const/4 v0, 0x1

    :cond_59
    int-to-long v4, v6

    const-string v1, "checkedPow"

    move-wide v2, p0

    .line 4
    invoke-static/range {v0 .. v5}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;JJ)V

    and-int/lit8 v0, v6, 0x1

    if-nez v0, :cond_67

    shl-long v0, v7, v6

    goto :goto_69

    :cond_67
    shl-long v0, v9, v6

    :goto_69
    return-wide v0

    :cond_6a
    move-wide v13, v2

    move-wide v2, v7

    move-wide v8, v13

    :goto_6d
    if-eqz v6, :cond_a4

    if-eq v6, v1, :cond_9f

    and-int/lit8 v4, v6, 0x1

    if-eqz v4, :cond_79

    .line 5
    invoke-static {v2, v3, v8, v9}, Lcom/google/common/math/LongMath;->checkedMultiply(JJ)J

    move-result-wide v2

    :cond_79
    move-wide v10, v2

    shr-int/lit8 v12, v6, 0x1

    if-lez v12, :cond_9c

    const-wide v2, -0xb504f333L

    cmp-long v4, v2, v8

    if-gtz v4, :cond_92

    const-wide v2, 0xb504f333L

    cmp-long v4, v8, v2

    if-gtz v4, :cond_92

    const/4 v2, 0x1

    goto :goto_93

    :cond_92
    const/4 v2, 0x0

    :goto_93
    int-to-long v6, v12

    const-string v3, "checkedPow"

    move-wide v4, v8

    .line 6
    invoke-static/range {v2 .. v7}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;JJ)V

    mul-long v8, v8, v8

    :cond_9c
    move-wide v2, v10

    move v6, v12

    goto :goto_6d

    .line 7
    :cond_9f
    invoke-static {v2, v3, v8, v9}, Lcom/google/common/math/LongMath;->checkedMultiply(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_a4
    return-wide v2
.end method

.method public static checkedSubtract(JJ)J
    .registers 15
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    sub-long v0, p0, p2

    xor-long v2, p0, p2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-ltz v8, :cond_e

    const/4 v2, 0x1

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    xor-long v8, p0, v0

    cmp-long v3, v8, v6

    if-ltz v3, :cond_16

    goto :goto_17

    :cond_16
    const/4 v4, 0x0

    :goto_17
    or-int v5, v2, v4

    const-string v6, "checkedSubtract"

    move-wide v7, p0

    move-wide v9, p2

    invoke-static/range {v5 .. v10}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;JJ)V

    return-wide v0
.end method

.method public static divide(JJLjava/math/RoundingMode;)J
    .registers 14
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 1
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    div-long v0, p0, p2

    mul-long v2, p2, v0

    sub-long v2, p0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_10

    return-wide v0

    :cond_10
    xor-long/2addr p0, p2

    const/16 v7, 0x3f

    shr-long/2addr p0, v7

    long-to-int p1, p0

    const/4 p0, 0x1

    or-int/2addr p1, p0

    .line 3
    sget-object v7, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/4 v8, 0x0

    packed-switch v7, :pswitch_data_68

    .line 4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 5
    :pswitch_29
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 6
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide p2

    sub-long/2addr p2, v2

    sub-long/2addr v2, p2

    cmp-long p2, v2, v4

    if-nez p2, :cond_51

    .line 7
    sget-object p2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    if-ne p4, p2, :cond_3d

    const/4 p2, 0x1

    goto :goto_3e

    :cond_3d
    const/4 p2, 0x0

    :goto_3e
    sget-object p3, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    if-ne p4, p3, :cond_44

    const/4 p3, 0x1

    goto :goto_45

    :cond_44
    const/4 p3, 0x0

    :goto_45
    const-wide/16 v2, 0x1

    and-long/2addr v2, v0

    cmp-long p4, v2, v4

    if-eqz p4, :cond_4d

    goto :goto_4e

    :cond_4d
    const/4 p0, 0x0

    :goto_4e
    and-int/2addr p0, p3

    or-int/2addr p0, p2

    goto :goto_62

    :cond_51
    if-lez p2, :cond_61

    goto :goto_62

    :pswitch_54
    if-lez p1, :cond_61

    goto :goto_62

    :pswitch_57
    if-gez p1, :cond_61

    goto :goto_62

    :pswitch_5a
    if-nez v6, :cond_5d

    goto :goto_5e

    :cond_5d
    const/4 p0, 0x0

    .line 8
    :goto_5e
    invoke-static {p0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    :cond_61
    :pswitch_61
    const/4 p0, 0x0

    :goto_62
    :pswitch_62
    if-eqz p0, :cond_66

    int-to-long p0, p1

    add-long/2addr v0, p0

    :cond_66
    return-wide v0

    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_5a
        :pswitch_61
        :pswitch_57
        :pswitch_62
        :pswitch_54
        :pswitch_29
        :pswitch_29
        :pswitch_29
    .end packed-switch
.end method

.method public static factorial(I)J
    .registers 4
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    const-string v0, "n"

    .line 1
    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 2
    sget-object v0, Lcom/google/common/math/LongMath;->factorials:[J

    const/16 v1, 0x15

    if-ge p0, v1, :cond_e

    aget-wide v1, v0, p0

    goto :goto_13

    :cond_e
    const-wide v1, 0x7fffffffffffffffL

    :goto_13
    return-wide v1
.end method

.method public static floorPowerOfTwo(J)J
    .registers 4
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/google/common/math/MathPreconditions;->checkPositive(J)J

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x3f

    const-wide/16 v0, 0x1

    shl-long p0, v0, p0

    return-wide p0
.end method

.method public static gcd(JJ)J
    .registers 8

    const-string v0, "a"

    .line 1
    invoke-static {v0, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;J)J

    const-string v0, "b"

    .line 2
    invoke-static {v0, p2, p3}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;J)J

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_11

    return-wide p2

    :cond_11
    cmp-long v2, p2, v0

    if-nez v2, :cond_16

    return-wide p0

    .line 3
    :cond_16
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    shr-long/2addr p0, v0

    .line 4
    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v1

    shr-long/2addr p2, v1

    :goto_20
    cmp-long v2, p0, p2

    if-eqz v2, :cond_33

    sub-long/2addr p0, p2

    const/16 v2, 0x3f

    shr-long v2, p0, v2

    and-long/2addr v2, p0

    sub-long/2addr p0, v2

    sub-long/2addr p0, v2

    add-long/2addr p2, v2

    .line 5
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v2

    shr-long/2addr p0, v2

    goto :goto_20

    .line 6
    :cond_33
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    shl-long/2addr p0, p2

    return-wide p0
.end method

.method public static isPowerOfTwo(J)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p0, v2

    if-lez v4, :cond_a

    const/4 v4, 0x1

    goto :goto_b

    :cond_a
    const/4 v4, 0x0

    :goto_b
    const-wide/16 v5, 0x1

    sub-long v5, p0, v5

    and-long/2addr p0, v5

    cmp-long v5, p0, v2

    if-nez v5, :cond_15

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    and-int p0, v4, v0

    return p0
.end method

.method public static isPrime(J)Z
    .registers 11
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x2

    cmp-long v3, p0, v1

    if-gez v3, :cond_d

    const-string v1, "n"

    .line 1
    invoke-static {v1, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;J)J

    return v0

    :cond_d
    const-wide/16 v1, 0x42

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    cmp-long v6, p0, v1

    if-gez v6, :cond_29

    const-wide v1, 0xa08228828228a2bL

    long-to-int p1, p0

    add-int/lit8 p1, p1, -0x2

    shr-long p0, v1, p1

    const-wide/16 v1, 0x1

    and-long/2addr p0, v1

    cmp-long v1, p0, v3

    if-eqz v1, :cond_28

    const/4 v0, 0x1

    :cond_28
    return v0

    :cond_29
    const v1, -0x208a2883

    const-wide/16 v6, 0x1e

    .line 2
    rem-long v6, p0, v6

    long-to-int v2, v6

    shl-int v2, v5, v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_37

    return v0

    :cond_37
    const-wide/16 v1, 0x7

    .line 3
    rem-long v1, p0, v1

    cmp-long v6, v1, v3

    if-eqz v6, :cond_7f

    const-wide/16 v1, 0xb

    rem-long v1, p0, v1

    cmp-long v6, v1, v3

    if-eqz v6, :cond_7f

    const-wide/16 v1, 0xd

    rem-long v1, p0, v1

    cmp-long v6, v1, v3

    if-nez v6, :cond_50

    goto :goto_7f

    :cond_50
    const-wide/16 v1, 0x121

    cmp-long v3, p0, v1

    if-gez v3, :cond_57

    return v5

    .line 4
    :cond_57
    sget-object v1, Lcom/google/common/math/LongMath;->millerRabinBaseSets:[[J

    array-length v2, v1

    const/4 v3, 0x0

    :goto_5b
    if-ge v3, v2, :cond_79

    aget-object v4, v1, v3

    .line 5
    aget-wide v6, v4, v0

    cmp-long v8, p0, v6

    if-gtz v8, :cond_76

    const/4 v1, 0x1

    .line 6
    :goto_66
    array-length v2, v4

    if-ge v1, v2, :cond_75

    .line 7
    aget-wide v2, v4, v1

    invoke-static {v2, v3, p0, p1}, Lcom/google/common/math/LongMath$MillerRabinTester;->test(JJ)Z

    move-result v2

    if-nez v2, :cond_72

    return v0

    :cond_72
    add-int/lit8 v1, v1, 0x1

    goto :goto_66

    :cond_75
    return v5

    :cond_76
    add-int/lit8 v3, v3, 0x1

    goto :goto_5b

    .line 8
    :cond_79
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_7f
    :goto_7f
    return v0
.end method

.method public static lessThanBranchFree(JJ)I
    .registers 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    sub-long/2addr p0, p2

    not-long p0, p0

    not-long p0, p0

    const/16 p2, 0x3f

    ushr-long/2addr p0, p2

    long-to-int p1, p0

    return p1
.end method

.method public static log10(JLjava/math/RoundingMode;)I
    .registers 7
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/google/common/math/MathPreconditions;->checkPositive(J)J

    .line 2
    sget-object v0, Lcom/google/common/math/LongMath;->maxLog10ForLeadingZeros:[B

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    aget-byte v0, v0, v1

    .line 3
    sget-object v1, Lcom/google/common/math/LongMath;->powersOf10:[J

    aget-wide v2, v1, v0

    invoke-static {p0, p1, v2, v3}, Lcom/google/common/math/LongMath;->lessThanBranchFree(JJ)I

    move-result v2

    sub-int/2addr v0, v2

    .line 4
    aget-wide v2, v1, v0

    .line 5
    sget-object v1, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    packed-switch p2, :pswitch_data_42

    .line 6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 7
    :pswitch_27
    sget-object p2, Lcom/google/common/math/LongMath;->halfPowersOf10:[J

    aget-wide v1, p2, v0

    invoke-static {v1, v2, p0, p1}, Lcom/google/common/math/LongMath;->lessThanBranchFree(JJ)I

    move-result p0

    goto :goto_34

    .line 8
    :pswitch_30
    invoke-static {v2, v3, p0, p1}, Lcom/google/common/math/LongMath;->lessThanBranchFree(JJ)I

    move-result p0

    :goto_34
    add-int/2addr p0, v0

    return p0

    :pswitch_36
    cmp-long p2, p0, v2

    if-nez p2, :cond_3c

    const/4 p0, 0x1

    goto :goto_3d

    :cond_3c
    const/4 p0, 0x0

    .line 9
    :goto_3d
    invoke-static {p0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    :pswitch_40
    return v0

    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_36
        :pswitch_40
        :pswitch_40
        :pswitch_30
        :pswitch_30
        :pswitch_27
        :pswitch_27
        :pswitch_27
    .end packed-switch
.end method

.method public static log2(JLjava/math/RoundingMode;)I
    .registers 5

    .line 1
    invoke-static {p0, p1}, Lcom/google/common/math/MathPreconditions;->checkPositive(J)J

    .line 2
    sget-object v0, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_40

    .line 3
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "impossible"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 4
    :pswitch_16
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p2

    const-wide v0, -0x4afb0ccc06219b7cL    # -2.734104117489491E-53

    ushr-long/2addr v0, p2

    rsub-int/lit8 p2, p2, 0x3f

    .line 5
    invoke-static {v0, v1, p0, p1}, Lcom/google/common/math/LongMath;->lessThanBranchFree(JJ)I

    move-result p0

    add-int/2addr p0, p2

    return p0

    :pswitch_28
    const-wide/16 v0, 0x1

    sub-long/2addr p0, v0

    .line 6
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x40

    return p0

    .line 7
    :pswitch_32
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->isPowerOfTwo(J)Z

    move-result p2

    invoke-static {p2}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 8
    :pswitch_39
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x3f

    return p0

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_32
        :pswitch_39
        :pswitch_39
        :pswitch_28
        :pswitch_28
        :pswitch_16
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method

.method public static mean(JJ)J
    .registers 6

    and-long v0, p0, p2

    xor-long/2addr p0, p2

    const/4 p2, 0x1

    shr-long/2addr p0, p2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static mod(JI)I
    .registers 5
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    int-to-long v0, p2

    .line 1
    invoke-static {p0, p1, v0, v1}, Lcom/google/common/math/LongMath;->mod(JJ)J

    move-result-wide p0

    long-to-int p1, p0

    return p1
.end method

.method public static mod(JJ)J
    .registers 7
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_e

    .line 2
    rem-long/2addr p0, p2

    cmp-long v2, p0, v0

    if-ltz v2, :cond_c

    goto :goto_d

    :cond_c
    add-long/2addr p0, p2

    :goto_d
    return-wide p0

    .line 3
    :cond_e
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "Modulus must be positive"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static pow(JI)J
    .registers 10
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    const-string v0, "exponent"

    .line 1
    invoke-static {v0, p2}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    const/4 v0, 0x1

    const-wide/16 v1, 0x1

    const-wide/16 v3, -0x2

    cmp-long v5, v3, p0

    if-gtz v5, :cond_4d

    const-wide/16 v3, 0x2

    cmp-long v5, p0, v3

    if-gtz v5, :cond_4d

    long-to-int p1, p0

    const/4 p0, -0x2

    const/16 v3, 0x40

    const-wide/16 v4, 0x0

    if-eq p1, p0, :cond_3f

    const/4 p0, -0x1

    if-eq p1, p0, :cond_37

    if-eqz p1, :cond_32

    if-eq p1, v0, :cond_31

    const/4 p0, 0x2

    if-ne p1, p0, :cond_2b

    if-ge p2, v3, :cond_2a

    shl-long v4, v1, p2

    :cond_2a
    return-wide v4

    .line 2
    :cond_2b
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_31
    return-wide v1

    :cond_32
    if-nez p2, :cond_35

    goto :goto_36

    :cond_35
    move-wide v1, v4

    :goto_36
    return-wide v1

    :cond_37
    and-int/lit8 p0, p2, 0x1

    if-nez p0, :cond_3c

    goto :goto_3e

    :cond_3c
    const-wide/16 v1, -0x1

    :goto_3e
    return-wide v1

    :cond_3f
    if-ge p2, v3, :cond_4c

    and-int/lit8 p0, p2, 0x1

    if-nez p0, :cond_48

    shl-long p0, v1, p2

    goto :goto_4b

    :cond_48
    shl-long p0, v1, p2

    neg-long p0, p0

    :goto_4b
    return-wide p0

    :cond_4c
    return-wide v4

    :cond_4d
    move-wide v3, v1

    :goto_4e
    if-eqz p2, :cond_62

    if-eq p2, v0, :cond_60

    and-int/lit8 v5, p2, 0x1

    if-nez v5, :cond_58

    move-wide v5, v1

    goto :goto_59

    :cond_58
    move-wide v5, p0

    :goto_59
    mul-long v3, v3, v5

    mul-long p0, p0, p0

    shr-int/lit8 p2, p2, 0x1

    goto :goto_4e

    :cond_60
    mul-long v3, v3, p0

    :cond_62
    return-wide v3
.end method

.method public static roundToDouble(JLjava/math/RoundingMode;)D
    .registers 25
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    move-wide/from16 v0, p0

    long-to-double v2, v0

    double-to-long v4, v2

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v8, v4, v6

    if-nez v8, :cond_f

    const/4 v8, -0x1

    goto :goto_13

    .line 1
    :cond_f
    invoke-static {v0, v1, v4, v5}, Lcom/google/common/primitives/Longs;->compare(JJ)I

    move-result v8

    .line 2
    :goto_13
    sget-object v9, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v10, v9, v10

    const-string v11, "impossible"

    packed-switch v10, :pswitch_data_d6

    .line 3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v11}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_26
    if-ltz v8, :cond_32

    .line 4
    invoke-static {v2, v3}, Ljava/lang/Math;->nextUp(D)D

    move-result-wide v14

    .line 5
    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-long v12, v12

    goto :goto_42

    .line 6
    :cond_32
    invoke-static {v2, v3}, Lcom/google/common/math/DoubleUtils;->nextDown(D)D

    move-result-wide v12

    .line 7
    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    double-to-long v14, v14

    move-wide/from16 v20, v4

    move-wide v4, v14

    move-wide v14, v2

    move-wide v2, v12

    move-wide/from16 v12, v20

    :goto_42
    sub-long v4, v0, v4

    sub-long v16, v12, v0

    const-wide/16 v18, 0x1

    cmp-long v8, v12, v6

    if-nez v8, :cond_4e

    add-long v16, v16, v18

    :cond_4e
    move-wide/from16 v6, v16

    .line 8
    invoke-static {v4, v5, v6, v7}, Lcom/google/common/primitives/Longs;->compare(JJ)I

    move-result v4

    if-gez v4, :cond_57

    return-wide v2

    :cond_57
    if-lez v4, :cond_5a

    return-wide v14

    .line 9
    :cond_5a
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v9, v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_87

    const/4 v5, 0x7

    if-eq v4, v5, :cond_7f

    const/16 v0, 0x8

    if-ne v4, v0, :cond_79

    .line 10
    invoke-static {v2, v3}, Lcom/google/common/math/DoubleUtils;->getSignificand(D)J

    move-result-wide v0

    and-long v0, v0, v18

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_77

    goto :goto_78

    :cond_77
    move-wide v2, v14

    :goto_78
    return-wide v2

    .line 11
    :cond_79
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v11}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_7f
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_86

    move-wide v2, v14

    :cond_86
    return-wide v2

    :cond_87
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_8e

    goto :goto_8f

    :cond_8e
    move-wide v2, v14

    :goto_8f
    return-wide v2

    :pswitch_90
    if-gtz v8, :cond_93

    goto :goto_97

    .line 12
    :cond_93
    invoke-static {v2, v3}, Ljava/lang/Math;->nextUp(D)D

    move-result-wide v2

    :goto_97
    return-wide v2

    :pswitch_98
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_a6

    if-gtz v8, :cond_a1

    goto :goto_a5

    .line 13
    :cond_a1
    invoke-static {v2, v3}, Ljava/lang/Math;->nextUp(D)D

    move-result-wide v2

    :goto_a5
    return-wide v2

    :cond_a6
    if-ltz v8, :cond_a9

    goto :goto_ad

    .line 14
    :cond_a9
    invoke-static {v2, v3}, Lcom/google/common/math/DoubleUtils;->nextDown(D)D

    move-result-wide v2

    :goto_ad
    return-wide v2

    :pswitch_ae
    if-ltz v8, :cond_b1

    goto :goto_b5

    .line 15
    :cond_b1
    invoke-static {v2, v3}, Lcom/google/common/math/DoubleUtils;->nextDown(D)D

    move-result-wide v2

    :goto_b5
    return-wide v2

    :pswitch_b6
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_c4

    if-ltz v8, :cond_bf

    goto :goto_c3

    .line 16
    :cond_bf
    invoke-static {v2, v3}, Lcom/google/common/math/DoubleUtils;->nextDown(D)D

    move-result-wide v2

    :goto_c3
    return-wide v2

    :cond_c4
    if-gtz v8, :cond_c7

    goto :goto_cb

    .line 17
    :cond_c7
    invoke-static {v2, v3}, Ljava/lang/Math;->nextUp(D)D

    move-result-wide v2

    :goto_cb
    return-wide v2

    :pswitch_cc
    if-nez v8, :cond_d0

    const/4 v0, 0x1

    goto :goto_d1

    :cond_d0
    const/4 v0, 0x0

    .line 18
    :goto_d1
    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    return-wide v2

    nop

    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_cc
        :pswitch_b6
        :pswitch_ae
        :pswitch_98
        :pswitch_90
        :pswitch_26
        :pswitch_26
        :pswitch_26
    .end packed-switch
.end method

.method public static saturatedAdd(JJ)J
    .registers 11
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    add-long v0, p0, p2

    xor-long/2addr p2, p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, p2, v4

    if-gez v6, :cond_d

    const/4 p2, 0x1

    goto :goto_e

    :cond_d
    const/4 p2, 0x0

    :goto_e
    xor-long/2addr p0, v0

    cmp-long p3, p0, v4

    if-ltz p3, :cond_14

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    or-int p0, p2, v2

    if-eqz p0, :cond_1a

    return-wide v0

    :cond_1a
    const-wide p0, 0x7fffffffffffffffL

    const/16 p2, 0x3f

    ushr-long p2, v0, p2

    const-wide/16 v0, 0x1

    xor-long/2addr p2, v0

    add-long/2addr p2, p0

    return-wide p2
.end method

.method public static saturatedMultiply(JJ)J
    .registers 14
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    not-long v1, p0

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    add-int/2addr v1, v0

    .line 3
    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    add-int/2addr v0, v1

    not-long v1, p2

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    add-int/2addr v1, v0

    const/16 v0, 0x41

    if-le v1, v0, :cond_1c

    mul-long p0, p0, p2

    return-wide p0

    :cond_1c
    const-wide v2, 0x7fffffffffffffffL

    xor-long v4, p0, p2

    const/16 v0, 0x3f

    ushr-long/2addr v4, v0

    add-long/2addr v4, v2

    const/16 v0, 0x40

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v1, v0, :cond_2f

    const/4 v0, 0x1

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    const-wide/16 v6, 0x0

    cmp-long v1, p0, v6

    if-gez v1, :cond_38

    const/4 v6, 0x1

    goto :goto_39

    :cond_38
    const/4 v6, 0x0

    :goto_39
    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v9, p2, v7

    if-nez v9, :cond_40

    goto :goto_41

    :cond_40
    const/4 v2, 0x0

    :goto_41
    and-int/2addr v2, v6

    or-int/2addr v0, v2

    if-eqz v0, :cond_46

    return-wide v4

    :cond_46
    mul-long v2, p0, p2

    if-eqz v1, :cond_52

    .line 5
    div-long p0, v2, p0

    cmp-long v0, p0, p2

    if-nez v0, :cond_51

    goto :goto_52

    :cond_51
    return-wide v4

    :cond_52
    :goto_52
    return-wide v2
.end method

.method public static saturatedPow(JI)J
    .registers 13
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    const-string v0, "exponent"

    .line 1
    invoke-static {v0, p2}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, -0x2

    cmp-long v4, p0, v2

    if-ltz v4, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    const-wide/16 v3, 0x2

    cmp-long v5, p0, v3

    if-gtz v5, :cond_18

    const/4 v3, 0x1

    goto :goto_19

    :cond_18
    const/4 v3, 0x0

    :goto_19
    and-int/2addr v2, v3

    const/16 v3, 0x3f

    const-wide v4, 0x7fffffffffffffffL

    const-wide/16 v6, 0x1

    if-eqz v2, :cond_62

    long-to-int p1, p0

    const/4 p0, -0x2

    const-wide/16 v8, -0x1

    if-eq p1, p0, :cond_4f

    const/4 p0, -0x1

    if-eq p1, p0, :cond_48

    if-eqz p1, :cond_42

    if-eq p1, v1, :cond_41

    const/4 p0, 0x2

    if-ne p1, p0, :cond_3b

    if-lt p2, v3, :cond_38

    return-wide v4

    :cond_38
    shl-long p0, v6, p2

    return-wide p0

    .line 2
    :cond_3b
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_41
    return-wide v6

    :cond_42
    if-nez p2, :cond_45

    goto :goto_47

    :cond_45
    const-wide/16 v6, 0x0

    :goto_47
    return-wide v6

    :cond_48
    and-int/lit8 p0, p2, 0x1

    if-nez p0, :cond_4d

    goto :goto_4e

    :cond_4d
    move-wide v6, v8

    :goto_4e
    return-wide v6

    :cond_4f
    const/16 p0, 0x40

    if-lt p2, p0, :cond_58

    and-int/lit8 p0, p2, 0x1

    int-to-long p0, p0

    add-long/2addr p0, v4

    return-wide p0

    :cond_58
    and-int/lit8 p0, p2, 0x1

    if-nez p0, :cond_5f

    shl-long p0, v6, p2

    goto :goto_61

    :cond_5f
    shl-long p0, v8, p2

    :goto_61
    return-wide p0

    :cond_62
    ushr-long v2, p0, v3

    and-int/lit8 v8, p2, 0x1

    int-to-long v8, v8

    and-long/2addr v2, v8

    add-long/2addr v2, v4

    :cond_69
    :goto_69
    if-eqz p2, :cond_9e

    if-eq p2, v1, :cond_99

    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_76

    .line 3
    invoke-static {v6, v7, p0, p1}, Lcom/google/common/math/LongMath;->saturatedMultiply(JJ)J

    move-result-wide v4

    move-wide v6, v4

    :cond_76
    shr-int/lit8 p2, p2, 0x1

    if-lez p2, :cond_69

    const-wide v4, -0xb504f333L

    cmp-long v8, v4, p0

    if-lez v8, :cond_85

    const/4 v4, 0x1

    goto :goto_86

    :cond_85
    const/4 v4, 0x0

    :goto_86
    const-wide v8, 0xb504f333L

    cmp-long v5, p0, v8

    if-lez v5, :cond_91

    const/4 v5, 0x1

    goto :goto_92

    :cond_91
    const/4 v5, 0x0

    :goto_92
    or-int/2addr v4, v5

    if-eqz v4, :cond_96

    return-wide v2

    :cond_96
    mul-long p0, p0, p0

    goto :goto_69

    .line 4
    :cond_99
    invoke-static {v6, v7, p0, p1}, Lcom/google/common/math/LongMath;->saturatedMultiply(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_9e
    return-wide v6
.end method

.method public static saturatedSubtract(JJ)J
    .registers 11
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    sub-long v0, p0, p2

    xor-long/2addr p2, p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, p2, v4

    if-ltz v6, :cond_d

    const/4 p2, 0x1

    goto :goto_e

    :cond_d
    const/4 p2, 0x0

    :goto_e
    xor-long/2addr p0, v0

    cmp-long p3, p0, v4

    if-ltz p3, :cond_14

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    or-int p0, p2, v2

    if-eqz p0, :cond_1a

    return-wide v0

    :cond_1a
    const-wide p0, 0x7fffffffffffffffL

    const/16 p2, 0x3f

    ushr-long p2, v0, p2

    const-wide/16 v0, 0x1

    xor-long/2addr p2, v0

    add-long/2addr p2, p0

    return-wide p2
.end method

.method public static sqrt(JLjava/math/RoundingMode;)J
    .registers 12
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    const-string v0, "x"

    .line 1
    invoke-static {v0, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;J)J

    long-to-int v0, p0

    int-to-long v1, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    cmp-long v5, v1, p0

    if-nez v5, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    if-eqz v1, :cond_18

    .line 2
    invoke-static {v0, p2}, Lcom/google/common/math/IntMath;->sqrt(ILjava/math/RoundingMode;)I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :cond_18
    long-to-double v0, p0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-long v0, v0

    mul-long v5, v0, v0

    .line 4
    sget-object v2, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v2, p2

    const-wide/16 v7, 0x1

    packed-switch p2, :pswitch_data_5c

    .line 5
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_33
    cmp-long p2, p0, v5

    if-gez p2, :cond_38

    goto :goto_39

    :cond_38
    const/4 v3, 0x0

    :goto_39
    int-to-long v2, v3

    sub-long/2addr v0, v2

    mul-long v2, v0, v0

    add-long/2addr v2, v0

    .line 6
    invoke-static {v2, v3, p0, p1}, Lcom/google/common/math/LongMath;->lessThanBranchFree(JJ)I

    move-result p0

    int-to-long p0, p0

    add-long/2addr v0, p0

    return-wide v0

    :pswitch_45
    cmp-long p2, p0, v5

    if-lez p2, :cond_4a

    add-long/2addr v0, v7

    :cond_4a
    return-wide v0

    :pswitch_4b
    cmp-long p2, p0, v5

    if-gez p2, :cond_50

    sub-long/2addr v0, v7

    :cond_50
    return-wide v0

    :pswitch_51
    cmp-long p2, v5, p0

    if-nez p2, :cond_56

    goto :goto_57

    :cond_56
    const/4 v3, 0x0

    .line 7
    :goto_57
    invoke-static {v3}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    return-wide v0

    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_51
        :pswitch_4b
        :pswitch_4b
        :pswitch_45
        :pswitch_45
        :pswitch_33
        :pswitch_33
        :pswitch_33
    .end packed-switch
.end method
