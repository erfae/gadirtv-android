.class public final Lcom/google/common/math/BigIntegerMath;
.super Ljava/lang/Object;
.source "BigIntegerMath.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation runtime Lcom/google/common/math/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/math/BigIntegerMath$BigIntegerToDoubleRounder;
    }
.end annotation


# static fields
.field private static final LN_10:D

.field private static final LN_2:D

.field public static final SQRT2_PRECOMPUTED_BITS:Ljava/math/BigInteger;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "16a09e667f3bcc908b2fb1366ea957d3e3adec17512775099da2f590b0667322a"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/math/BigIntegerMath;->SQRT2_PRECOMPUTED_BITS:Ljava/math/BigInteger;

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/google/common/math/BigIntegerMath;->LN_10:D

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/google/common/math/BigIntegerMath;->LN_2:D

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binomial(II)Ljava/math/BigInteger;
    .registers 12

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

    .line 4
    :cond_1b
    sget-object v1, Lcom/google/common/math/LongMath;->biggestBinomials:[I

    const/16 v2, 0x22

    if-ge p1, v2, :cond_2e

    aget v1, v1, p1

    if-gt p0, v1, :cond_2e

    .line 5
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->binomial(II)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 6
    :cond_2e
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    int-to-long v2, p0

    const-wide/16 v4, 0x1

    .line 7
    sget-object v6, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v2, v3, v6}, Lcom/google/common/math/LongMath;->log2(JLjava/math/RoundingMode;)I

    move-result v6

    :goto_39
    move v7, v6

    :goto_3a
    if-ge v0, p1, :cond_5f

    sub-int v8, p0, v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v7, v6

    const/16 v9, 0x3f

    if-lt v7, v9, :cond_58

    .line 8
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 9
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    int-to-long v2, v8

    int-to-long v4, v0

    goto :goto_39

    :cond_58
    int-to-long v8, v8

    mul-long v2, v2, v8

    int-to-long v8, v0

    mul-long v4, v4, v8

    goto :goto_3a

    .line 10
    :cond_5f
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 11
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static ceilingPowerOfTwo(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 3
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    sget-object v1, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {p0, v1}, Lcom/google/common/math/BigIntegerMath;->log2(Ljava/math/BigInteger;Ljava/math/RoundingMode;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static divide(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/RoundingMode;)Ljava/math/BigInteger;
    .registers 4
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 1
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 2
    new-instance p0, Ljava/math/BigDecimal;

    invoke-direct {p0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p0, p1, p2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigIntegerExact()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static factorial(I)Ljava/math/BigInteger;
    .registers 20

    move/from16 v0, p0

    const-string v1, "n"

    .line 1
    invoke-static {v1, v0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 2
    sget-object v1, Lcom/google/common/math/LongMath;->factorials:[J

    const/16 v2, 0x15

    if-ge v0, v2, :cond_14

    .line 3
    aget-wide v0, v1, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 4
    :cond_14
    sget-object v3, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v0, v3}, Lcom/google/common/math/IntMath;->log2(ILjava/math/RoundingMode;)I

    move-result v3

    mul-int v3, v3, v0

    sget-object v4, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    const/16 v5, 0x40

    invoke-static {v3, v5, v4}, Lcom/google/common/math/IntMath;->divide(IILjava/math/RoundingMode;)I

    move-result v3

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/16 v3, 0x14

    .line 6
    aget-wide v6, v1, v3

    .line 7
    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v1

    shr-long/2addr v6, v1

    .line 8
    sget-object v3, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-static {v6, v7, v3}, Lcom/google/common/math/LongMath;->log2(JLjava/math/RoundingMode;)I

    move-result v3

    const/4 v8, 0x1

    add-int/2addr v3, v8

    int-to-long v9, v2

    .line 9
    sget-object v2, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-static {v9, v10, v2}, Lcom/google/common/math/LongMath;->log2(JLjava/math/RoundingMode;)I

    move-result v2

    add-int/2addr v2, v8

    add-int/lit8 v11, v2, -0x1

    shl-int v11, v8, v11

    :goto_46
    int-to-long v12, v0

    const-wide/16 v14, 0x1

    cmp-long v16, v9, v12

    if-gtz v16, :cond_78

    int-to-long v12, v11

    and-long/2addr v12, v9

    const-wide/16 v16, 0x0

    cmp-long v18, v12, v16

    if-eqz v18, :cond_59

    shl-int/lit8 v11, v11, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 10
    :cond_59
    invoke-static {v9, v10}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v12

    shr-long v16, v9, v12

    add-int/2addr v1, v12

    sub-int v12, v2, v12

    add-int/2addr v12, v3

    if-lt v12, v5, :cond_6d

    .line 11
    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide v6, v14

    :cond_6d
    mul-long v6, v6, v16

    .line 12
    sget-object v3, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-static {v6, v7, v3}, Lcom/google/common/math/LongMath;->log2(JLjava/math/RoundingMode;)I

    move-result v3

    add-int/2addr v3, v8

    add-long/2addr v9, v14

    goto :goto_46

    :cond_78
    cmp-long v0, v6, v14

    if-lez v0, :cond_83

    .line 13
    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_83
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v4, v2, v0}, Lcom/google/common/math/BigIntegerMath;->listProduct(Ljava/util/List;II)Ljava/math/BigInteger;

    move-result-object v0

    .line 15
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static floorPowerOfTwo(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 3
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    sget-object v1, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-static {p0, v1}, Lcom/google/common/math/BigIntegerMath;->log2(Ljava/math/BigInteger;Ljava/math/RoundingMode;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static isPowerOfTwo(Ljava/math/BigInteger;)Z
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_16

    invoke-virtual {p0}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    sub-int/2addr p0, v1

    if-ne v0, p0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method

.method public static listProduct(Ljava/util/List;II)Ljava/math/BigInteger;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/math/BigInteger;",
            ">;II)",
            "Ljava/math/BigInteger;"
        }
    .end annotation

    sub-int v0, p2, p1

    if-eqz v0, :cond_54

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4d

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3b

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1d

    add-int v0, p2, p1

    ushr-int/2addr v0, v1

    .line 1
    invoke-static {p0, p1, v0}, Lcom/google/common/math/BigIntegerMath;->listProduct(Ljava/util/List;II)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p0, v0, p2}, Lcom/google/common/math/BigIntegerMath;->listProduct(Ljava/util/List;II)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 2
    :cond_1d
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/math/BigInteger;

    add-int/lit8 v0, p1, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    add-int/2addr p1, v2

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/math/BigInteger;

    invoke-virtual {p2, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 3
    :cond_3b
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/math/BigInteger;

    add-int/2addr p1, v1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/math/BigInteger;

    invoke-virtual {p2, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 4
    :cond_4d
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/math/BigInteger;

    return-object p0

    .line 5
    :cond_54
    sget-object p0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    return-object p0
.end method

.method public static log10(Ljava/math/BigInteger;Ljava/math/RoundingMode;)I
    .registers 11
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 2
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x3f

    if-gt v0, v3, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-eqz v0, :cond_1b

    .line 3
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/common/math/LongMath;->log10(JLjava/math/RoundingMode;)I

    move-result p0

    return p0

    .line 4
    :cond_1b
    sget-object v0, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-static {p0, v0}, Lcom/google/common/math/BigIntegerMath;->log2(Ljava/math/BigInteger;Ljava/math/RoundingMode;)I

    move-result v0

    int-to-double v3, v0

    sget-wide v5, Lcom/google/common/math/BigIntegerMath;->LN_2:D

    mul-double v3, v3, v5

    sget-wide v5, Lcom/google/common/math/BigIntegerMath;->LN_10:D

    div-double/2addr v3, v5

    double-to-int v0, v3

    .line 5
    sget-object v3, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 6
    invoke-virtual {v3, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-lez v4, :cond_45

    :cond_36
    add-int/lit8 v0, v0, -0x1

    .line 7
    sget-object v4, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 8
    invoke-virtual {v3, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-gtz v4, :cond_36

    goto :goto_6a

    .line 9
    :cond_45
    sget-object v5, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v5, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 10
    invoke-virtual {v5, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    move v7, v4

    move-object v4, v3

    move-object v3, v5

    move v5, v7

    :goto_53
    if-gtz v6, :cond_68

    add-int/lit8 v0, v0, 0x1

    .line 11
    sget-object v4, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 12
    invoke-virtual {v4, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    move v8, v6

    move v6, v5

    move v5, v8

    goto :goto_53

    :cond_68
    move-object v3, v4

    move v4, v5

    .line 13
    :goto_6a
    sget-object v5, Lcom/google/common/math/BigIntegerMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v5, p1

    packed-switch p1, :pswitch_data_a6

    .line 14
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_7b
    const/4 p1, 0x2

    .line 15
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object p0

    .line 16
    invoke-virtual {v3, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object p1

    sget-object v1, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gtz p0, :cond_91

    goto :goto_93

    :cond_91
    add-int/lit8 v0, v0, 0x1

    :goto_93
    return v0

    .line 18
    :pswitch_94
    invoke-virtual {v3, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9b

    goto :goto_9d

    :cond_9b
    add-int/lit8 v0, v0, 0x1

    :goto_9d
    return v0

    :pswitch_9e
    if-nez v4, :cond_a1

    const/4 v1, 0x1

    .line 19
    :cond_a1
    invoke-static {v1}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    :pswitch_a4
    return v0

    nop

    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_9e
        :pswitch_a4
        :pswitch_a4
        :pswitch_94
        :pswitch_94
        :pswitch_7b
        :pswitch_7b
        :pswitch_7b
    .end packed-switch
.end method

.method public static log2(Ljava/math/BigInteger;Ljava/math/RoundingMode;)I
    .registers 4

    .line 1
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 2
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 3
    sget-object v1, Lcom/google/common/math/BigIntegerMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_5e

    .line 4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_20
    const/16 p1, 0x100

    if-ge v0, p1, :cond_36

    .line 5
    sget-object p1, Lcom/google/common/math/BigIntegerMath;->SQRT2_PRECOMPUTED_BITS:Ljava/math/BigInteger;

    rsub-int v1, v0, 0x100

    .line 6
    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gtz p0, :cond_33

    return v0

    :cond_33
    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_36
    const/4 p1, 0x2

    .line 8
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    mul-int/lit8 p1, v0, 0x2

    add-int/lit8 p1, p1, 0x1

    if-ge p0, p1, :cond_48

    goto :goto_4a

    :cond_48
    add-int/lit8 v0, v0, 0x1

    :goto_4a
    return v0

    .line 10
    :pswitch_4b
    invoke-static {p0}, Lcom/google/common/math/BigIntegerMath;->isPowerOfTwo(Ljava/math/BigInteger;)Z

    move-result p0

    if-eqz p0, :cond_52

    goto :goto_54

    :cond_52
    add-int/lit8 v0, v0, 0x1

    :goto_54
    return v0

    .line 11
    :pswitch_55
    invoke-static {p0}, Lcom/google/common/math/BigIntegerMath;->isPowerOfTwo(Ljava/math/BigInteger;)Z

    move-result p0

    invoke-static {p0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    :pswitch_5c
    return v0

    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_55
        :pswitch_5c
        :pswitch_5c
        :pswitch_4b
        :pswitch_4b
        :pswitch_20
        :pswitch_20
        :pswitch_20
    .end packed-switch
.end method

.method public static roundToDouble(Ljava/math/BigInteger;Ljava/math/RoundingMode;)D
    .registers 3
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    sget-object v0, Lcom/google/common/math/BigIntegerMath$BigIntegerToDoubleRounder;->INSTANCE:Lcom/google/common/math/BigIntegerMath$BigIntegerToDoubleRounder;

    invoke-virtual {v0, p0, p1}, Lcom/google/common/math/ToDoubleRounder;->roundToDouble(Ljava/lang/Number;Ljava/math/RoundingMode;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static sqrt(Ljava/math/BigInteger;Ljava/math/RoundingMode;)Ljava/math/BigInteger;
    .registers 6
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_7b

    .line 2
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x3f

    const/4 v2, 0x1

    if-gt v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_21

    .line 3
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/common/math/LongMath;->sqrt(JLjava/math/RoundingMode;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 4
    :cond_21
    invoke-static {p0}, Lcom/google/common/math/BigIntegerMath;->sqrtFloor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 5
    sget-object v1, Lcom/google/common/math/BigIntegerMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x2

    packed-switch p1, :pswitch_data_9a

    .line 6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 7
    :pswitch_37
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 8
    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-ltz p0, :cond_46

    goto :goto_4c

    :cond_46
    sget-object p0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    :goto_4c
    return-object v0

    .line 9
    :pswitch_4d
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    mul-int p1, p1, p1

    .line 10
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    if-ne p1, v3, :cond_64

    .line 11
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_64

    goto :goto_65

    :cond_64
    const/4 v2, 0x0

    :goto_65
    if-eqz v2, :cond_68

    goto :goto_6e

    .line 12
    :cond_68
    sget-object p0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    :goto_6e
    return-object v0

    .line 13
    :pswitch_6f
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    :pswitch_7a
    return-object v0

    .line 14
    :cond_7b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "x"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    const-string v1, " ("

    const-string v3, ") must be >= 0"

    .line 15
    invoke-static {v2, v0, v1, p0, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 16
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_6f
        :pswitch_7a
        :pswitch_7a
        :pswitch_4d
        :pswitch_4d
        :pswitch_37
        :pswitch_37
        :pswitch_37
    .end packed-switch
.end method

.method private static sqrtApproxWithDoubles(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 3
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    invoke-static {p0}, Lcom/google/common/math/DoubleUtils;->bigToDouble(Ljava/math/BigInteger;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sget-object p0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-static {v0, v1, p0}, Lcom/google/common/math/DoubleMath;->roundToBigInteger(DLjava/math/RoundingMode;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method private static sqrtFloor(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 5
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 1
    sget-object v0, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-static {p0, v0}, Lcom/google/common/math/BigIntegerMath;->log2(Ljava/math/BigInteger;Ljava/math/RoundingMode;)I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x3ff

    if-ge v0, v2, :cond_10

    .line 2
    invoke-static {p0}, Lcom/google/common/math/BigIntegerMath;->sqrtApproxWithDoubles(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_21

    :cond_10
    add-int/lit8 v0, v0, -0x34

    and-int/lit8 v0, v0, -0x2

    .line 3
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/math/BigIntegerMath;->sqrtApproxWithDoubles(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    shr-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 4
    :goto_21
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    return-object v0

    .line 6
    :cond_34
    :goto_34
    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-ltz v3, :cond_47

    return-object v2

    :cond_47
    move-object v2, v0

    goto :goto_34
.end method
