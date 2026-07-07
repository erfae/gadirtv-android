.class abstract Lcom/google/common/math/ToDoubleRounder;
.super Ljava/lang/Object;
.source "ToDoubleRounder.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation runtime Lcom/google/common/math/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Number;",
        ":",
        "Ljava/lang/Comparable<",
        "TX;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract minus(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;TX;)TX;"
        }
    .end annotation
.end method

.method public final roundToDouble(Ljava/lang/Number;Ljava/math/RoundingMode;)D
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;",
            "Ljava/math/RoundingMode;",
            ")D"
        }
    .end annotation

    const-string v0, "x"

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mode"

    .line 2
    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/common/math/ToDoubleRounder;->roundToDoubleArbitrarily(Ljava/lang/Number;)D

    move-result-wide v0

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    const-wide/high16 v3, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v5, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    if-eqz v2, :cond_59

    .line 5
    sget-object v2, Lcom/google/common/math/ToDoubleRounder$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v2, v2, v7

    const-wide v7, 0x7fefffffffffffffL    # Double.MAX_VALUE

    packed-switch v2, :pswitch_data_12e

    goto :goto_59

    .line 6
    :pswitch_29
    new-instance p2, Ljava/lang/ArithmeticException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2c

    const-string v1, " cannot be represented precisely as a double"

    .line 7
    invoke-static {v0, p1, v1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-direct {p2, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_3f
    return-wide v0

    :pswitch_40
    cmpl-double p1, v0, v5

    if-nez p1, :cond_45

    goto :goto_4a

    :cond_45
    const-wide v5, -0x10000000000001L

    :goto_4a
    return-wide v5

    :pswitch_4b
    cmpl-double p1, v0, v5

    if-nez p1, :cond_50

    move-wide v3, v7

    :cond_50
    return-wide v3

    .line 9
    :pswitch_51
    invoke-virtual {p0, p1}, Lcom/google/common/math/ToDoubleRounder;->sign(Ljava/lang/Number;)I

    move-result p1

    int-to-double p1, p1

    mul-double p1, p1, v7

    return-wide p1

    .line 10
    :cond_59
    :goto_59
    sget-object v2, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/math/ToDoubleRounder;->toX(DLjava/math/RoundingMode;)Ljava/lang/Number;

    move-result-object v2

    .line 11
    move-object v7, p1

    check-cast v7, Ljava/lang/Comparable;

    invoke-interface {v7, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v7

    .line 12
    sget-object v8, Lcom/google/common/math/ToDoubleRounder$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v9, v8, v9

    const-string v10, "impossible"

    packed-switch v9, :pswitch_data_142

    .line 13
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :pswitch_79
    if-nez v7, :cond_7d

    const/4 p1, 0x1

    goto :goto_7e

    :cond_7d
    const/4 p1, 0x0

    .line 14
    :goto_7e
    invoke-static {p1}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    return-wide v0

    .line 15
    :pswitch_82
    invoke-virtual {p0, p1}, Lcom/google/common/math/ToDoubleRounder;->sign(Ljava/lang/Number;)I

    move-result p1

    if-ltz p1, :cond_90

    if-gtz v7, :cond_8b

    goto :goto_8f

    .line 16
    :cond_8b
    invoke-static {v0, v1}, Ljava/lang/Math;->nextUp(D)D

    move-result-wide v0

    :goto_8f
    return-wide v0

    :cond_90
    if-ltz v7, :cond_93

    goto :goto_97

    .line 17
    :cond_93
    invoke-static {v0, v1}, Lcom/google/common/math/DoubleUtils;->nextDown(D)D

    move-result-wide v0

    :goto_97
    return-wide v0

    :pswitch_98
    if-gtz v7, :cond_9b

    goto :goto_9f

    .line 18
    :cond_9b
    invoke-static {v0, v1}, Ljava/lang/Math;->nextUp(D)D

    move-result-wide v0

    :goto_9f
    return-wide v0

    :pswitch_a0
    if-ltz v7, :cond_a3

    goto :goto_a7

    .line 19
    :cond_a3
    invoke-static {v0, v1}, Lcom/google/common/math/DoubleUtils;->nextDown(D)D

    move-result-wide v0

    :goto_a7
    return-wide v0

    :pswitch_a8
    if-ltz v7, :cond_ba

    .line 20
    invoke-static {v0, v1}, Ljava/lang/Math;->nextUp(D)D

    move-result-wide v3

    cmpl-double v7, v3, v5

    if-nez v7, :cond_b3

    return-wide v0

    .line 21
    :cond_b3
    sget-object v5, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-virtual {p0, v3, v4, v5}, Lcom/google/common/math/ToDoubleRounder;->toX(DLjava/math/RoundingMode;)Ljava/lang/Number;

    move-result-object v5

    goto :goto_ce

    .line 22
    :cond_ba
    invoke-static {v0, v1}, Lcom/google/common/math/DoubleUtils;->nextDown(D)D

    move-result-wide v5

    cmpl-double v7, v5, v3

    if-nez v7, :cond_c3

    return-wide v0

    .line 23
    :cond_c3
    sget-object v3, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {p0, v5, v6, v3}, Lcom/google/common/math/ToDoubleRounder;->toX(DLjava/math/RoundingMode;)Ljava/lang/Number;

    move-result-object v3

    move-wide v11, v5

    move-object v5, v2

    move-object v2, v3

    move-wide v3, v0

    move-wide v0, v11

    .line 24
    :goto_ce
    invoke-virtual {p0, p1, v2}, Lcom/google/common/math/ToDoubleRounder;->minus(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v2

    .line 25
    invoke-virtual {p0, v5, p1}, Lcom/google/common/math/ToDoubleRounder;->minus(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v5

    .line 26
    check-cast v2, Ljava/lang/Comparable;

    invoke-interface {v2, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_df

    return-wide v0

    :cond_df
    if-lez v2, :cond_e2

    return-wide v3

    .line 27
    :cond_e2
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v8, p2

    const/4 v2, 0x2

    if-eq p2, v2, :cond_108

    const/4 v2, 0x3

    if-eq p2, v2, :cond_ff

    const/4 v2, 0x4

    if-ne p2, v2, :cond_f9

    .line 28
    invoke-virtual {p0, p1}, Lcom/google/common/math/ToDoubleRounder;->sign(Ljava/lang/Number;)I

    move-result p1

    if-ltz p1, :cond_f8

    move-wide v0, v3

    :cond_f8
    return-wide v0

    .line 29
    :cond_f9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 30
    :cond_ff
    invoke-virtual {p0, p1}, Lcom/google/common/math/ToDoubleRounder;->sign(Ljava/lang/Number;)I

    move-result p1

    if-ltz p1, :cond_106

    goto :goto_107

    :cond_106
    move-wide v0, v3

    :goto_107
    return-wide v0

    .line 31
    :cond_108
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    const-wide/16 v5, 0x1

    and-long/2addr p1, v5

    const-wide/16 v5, 0x0

    cmp-long v2, p1, v5

    if-nez v2, :cond_116

    goto :goto_117

    :cond_116
    move-wide v0, v3

    :goto_117
    return-wide v0

    .line 32
    :pswitch_118
    invoke-virtual {p0, p1}, Lcom/google/common/math/ToDoubleRounder;->sign(Ljava/lang/Number;)I

    move-result p1

    if-ltz p1, :cond_126

    if-ltz v7, :cond_121

    goto :goto_125

    .line 33
    :cond_121
    invoke-static {v0, v1}, Lcom/google/common/math/DoubleUtils;->nextDown(D)D

    move-result-wide v0

    :goto_125
    return-wide v0

    :cond_126
    if-gtz v7, :cond_129

    goto :goto_12d

    .line 34
    :cond_129
    invoke-static {v0, v1}, Ljava/lang/Math;->nextUp(D)D

    move-result-wide v0

    :goto_12d
    return-wide v0

    :pswitch_data_12e
    .packed-switch 0x1
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_4b
        :pswitch_40
        :pswitch_3f
        :pswitch_29
    .end packed-switch

    :pswitch_data_142
    .packed-switch 0x1
        :pswitch_118
        :pswitch_a8
        :pswitch_a8
        :pswitch_a8
        :pswitch_a0
        :pswitch_98
        :pswitch_82
        :pswitch_79
    .end packed-switch
.end method

.method public abstract roundToDoubleArbitrarily(Ljava/lang/Number;)D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;)D"
        }
    .end annotation
.end method

.method public abstract sign(Ljava/lang/Number;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;)I"
        }
    .end annotation
.end method

.method public abstract toX(DLjava/math/RoundingMode;)Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/math/RoundingMode;",
            ")TX;"
        }
    .end annotation
.end method
