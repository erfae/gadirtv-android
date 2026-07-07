.class public final Lorg/bson/internal/UnsignedLongs;
.super Ljava/lang/Object;
.source "UnsignedLongs.java"


# static fields
.field private static final MAX_SAFE_DIGITS:[I

.field private static final MAX_VALUE:J = -0x1L

.field private static final MAX_VALUE_DIVS:[J

.field private static final MAX_VALUE_MODS:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    const/16 v0, 0x25

    new-array v1, v0, [J

    .line 1
    sput-object v1, Lorg/bson/internal/UnsignedLongs;->MAX_VALUE_DIVS:[J

    new-array v1, v0, [I

    .line 2
    sput-object v1, Lorg/bson/internal/UnsignedLongs;->MAX_VALUE_MODS:[I

    new-array v0, v0, [I

    .line 3
    sput-object v0, Lorg/bson/internal/UnsignedLongs;->MAX_SAFE_DIGITS:[I

    .line 4
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "10000000000000000"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x2

    :goto_18
    const/16 v2, 0x24

    if-gt v1, v2, :cond_41

    .line 5
    sget-object v2, Lorg/bson/internal/UnsignedLongs;->MAX_VALUE_DIVS:[J

    int-to-long v3, v1

    const-wide/16 v5, -0x1

    invoke-static {v5, v6, v3, v4}, Lorg/bson/internal/UnsignedLongs;->divide(JJ)J

    move-result-wide v7

    aput-wide v7, v2, v1

    .line 6
    sget-object v2, Lorg/bson/internal/UnsignedLongs;->MAX_VALUE_MODS:[I

    invoke-static {v5, v6, v3, v4}, Lorg/bson/internal/UnsignedLongs;->remainder(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    aput v4, v2, v1

    .line 7
    sget-object v2, Lorg/bson/internal/UnsignedLongs;->MAX_SAFE_DIGITS:[I

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_41
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(JJ)I
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    add-long/2addr p0, v0

    add-long/2addr p2, v0

    invoke-static {p0, p1, p2, p3}, Lorg/bson/internal/UnsignedLongs;->compareLongs(JJ)I

    move-result p0

    return p0
.end method

.method private static compareLongs(JJ)I
    .registers 5

    cmp-long v0, p0, p2

    if-gez v0, :cond_6

    const/4 p0, -0x1

    goto :goto_b

    :cond_6
    if-nez v0, :cond_a

    const/4 p0, 0x0

    goto :goto_b

    :cond_a
    const/4 p0, 0x1

    :goto_b
    return p0
.end method

.method private static divide(JJ)J
    .registers 9

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_10

    .line 1
    invoke-static {p0, p1, p2, p3}, Lorg/bson/internal/UnsignedLongs;->compare(JJ)I

    move-result p0

    if-gez p0, :cond_d

    return-wide v0

    :cond_d
    const-wide/16 p0, 0x1

    return-wide p0

    :cond_10
    cmp-long v2, p0, v0

    if-ltz v2, :cond_16

    .line 2
    div-long/2addr p0, p2

    return-wide p0

    :cond_16
    const/4 v0, 0x1

    ushr-long v1, p0, v0

    .line 3
    div-long/2addr v1, p2

    shl-long/2addr v1, v0

    mul-long v3, v1, p2

    sub-long/2addr p0, v3

    .line 4
    invoke-static {p0, p1, p2, p3}, Lorg/bson/internal/UnsignedLongs;->compare(JJ)I

    move-result p0

    if-ltz p0, :cond_25

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    int-to-long p0, v0

    add-long/2addr v1, p0

    return-wide v1
.end method

.method private static overflowInParse(JII)Z
    .registers 10

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-ltz v3, :cond_20

    .line 1
    sget-object v1, Lorg/bson/internal/UnsignedLongs;->MAX_VALUE_DIVS:[J

    aget-wide v2, v1, p3

    const/4 v4, 0x0

    cmp-long v5, p0, v2

    if-gez v5, :cond_11

    return v4

    .line 2
    :cond_11
    aget-wide v2, v1, p3

    cmp-long v1, p0, v2

    if-lez v1, :cond_18

    return v0

    .line 3
    :cond_18
    sget-object p0, Lorg/bson/internal/UnsignedLongs;->MAX_VALUE_MODS:[I

    aget p0, p0, p3

    if-le p2, p0, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :cond_20
    :goto_20
    return v0
.end method

.method public static parse(Ljava/lang/String;)J
    .registers 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_46

    const/16 v0, 0xa

    .line 2
    sget-object v1, Lorg/bson/internal/UnsignedLongs;->MAX_SAFE_DIGITS:[I

    aget v1, v1, v0

    add-int/lit8 v1, v1, -0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 3
    :goto_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_45

    .line 4
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3f

    if-le v4, v1, :cond_37

    .line 5
    invoke-static {v2, v3, v5, v0}, Lorg/bson/internal/UnsignedLongs;->overflowInParse(JII)Z

    move-result v6

    if-nez v6, :cond_2b

    goto :goto_37

    .line 6
    :cond_2b
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "Too large for unsigned long: "

    .line 7
    invoke-static {v1, p0}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    :goto_37
    int-to-long v6, v0

    mul-long v2, v2, v6

    int-to-long v5, v5

    add-long/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 9
    :cond_3f
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    return-wide v2

    .line 10
    :cond_46
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v0, "empty string"

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static remainder(JJ)J
    .registers 9

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_f

    .line 1
    invoke-static {p0, p1, p2, p3}, Lorg/bson/internal/UnsignedLongs;->compare(JJ)I

    move-result v0

    if-gez v0, :cond_d

    return-wide p0

    :cond_d
    sub-long/2addr p0, p2

    return-wide p0

    :cond_f
    cmp-long v2, p0, v0

    if-ltz v2, :cond_15

    .line 2
    rem-long/2addr p0, p2

    return-wide p0

    :cond_15
    const/4 v2, 0x1

    ushr-long v3, p0, v2

    .line 3
    div-long/2addr v3, p2

    shl-long v2, v3, v2

    mul-long v2, v2, p2

    sub-long/2addr p0, v2

    .line 4
    invoke-static {p0, p1, p2, p3}, Lorg/bson/internal/UnsignedLongs;->compare(JJ)I

    move-result v2

    if-ltz v2, :cond_25

    goto :goto_26

    :cond_25
    move-wide p2, v0

    :goto_26
    sub-long/2addr p0, p2

    return-wide p0
.end method

.method public static toString(J)Ljava/lang/String;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_b

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x5

    .line 2
    div-long/2addr v0, v2

    const-wide/16 v2, 0xa

    mul-long v2, v2, v0

    sub-long/2addr p0, v2

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
