.class final Lorg/bson/codecs/UuidCodecHelper;
.super Ljava/lang/Object;
.source "UuidCodecHelper.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reverseByteArray([BII)V
    .registers 5

    add-int/2addr p2, p1

    add-int/lit8 p2, p2, -0x1

    :goto_3
    if-ge p1, p2, :cond_12

    .line 1
    aget-byte v0, p0, p1

    .line 2
    aget-byte v1, p0, p2

    aput-byte v1, p0, p1

    .line 3
    aput-byte v0, p0, p2

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    :cond_12
    return-void
.end method
