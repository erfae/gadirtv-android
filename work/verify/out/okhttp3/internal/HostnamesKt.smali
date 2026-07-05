.class public final Lokhttp3/internal/HostnamesKt;
.super Ljava/lang/Object;
.source "hostnames.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a0\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0005H\u0002\u001a\"\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u001a\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0002\u001a\u000c\u0010\r\u001a\u00020\u0001*\u00020\u0003H\u0002\u001a\u000c\u0010\u000e\u001a\u0004\u0018\u00010\u0003*\u00020\u0003\u00a8\u0006\u000f"
    }
    d2 = {
        "decodeIpv4Suffix",
        "",
        "input",
        "",
        "pos",
        "",
        "limit",
        "address",
        "",
        "addressOffset",
        "decodeIpv6",
        "Ljava/net/InetAddress;",
        "inet6AddressToAscii",
        "containsInvalidHostnameAsciiCodes",
        "toCanonicalHost",
        "okhttp"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method private static final containsInvalidHostnameAsciiCodes(Ljava/lang/String;)Z
    .registers 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_2d

    .line 2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x1f

    .line 3
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v4

    const/4 v5, 0x1

    if-lez v4, :cond_2c

    const/16 v4, 0x7f

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v4

    if-ltz v4, :cond_1e

    goto :goto_2c

    :cond_1e
    const/4 v4, 0x6

    const-string v6, " #%/:?@[\\]"

    .line 4
    invoke-static {v6, v3, v1, v4}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_29

    return v5

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_2c
    :goto_2c
    return v5

    :cond_2d
    return v1
.end method

.method private static final decodeIpv4Suffix(Ljava/lang/String;II[BI)Z
    .registers 12

    move v0, p4

    :goto_1
    const/4 v1, 0x0

    if-ge p1, p2, :cond_4c

    .line 1
    array-length v2, p3

    if-ne v0, v2, :cond_8

    return v1

    :cond_8
    if-eq v0, p4, :cond_15

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_13

    return v1

    :cond_13
    add-int/lit8 p1, p1, 0x1

    :cond_15
    move v2, p1

    const/4 v3, 0x0

    :goto_17
    if-ge v2, p2, :cond_3f

    .line 3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    .line 4
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v6

    if-ltz v6, :cond_3f

    const/16 v6, 0x39

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v6

    if-lez v6, :cond_2e

    goto :goto_3f

    :cond_2e
    if-nez v3, :cond_33

    if-eq p1, v2, :cond_33

    return v1

    :cond_33
    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v4

    sub-int/2addr v3, v5

    const/16 v4, 0xff

    if-le v3, v4, :cond_3c

    return v1

    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_3f
    :goto_3f
    sub-int p1, v2, p1

    if-nez p1, :cond_44

    return v1

    :cond_44
    add-int/lit8 p1, v0, 0x1

    int-to-byte v1, v3

    .line 5
    aput-byte v1, p3, v0

    move v0, p1

    move p1, v2

    goto :goto_1

    :cond_4c
    add-int/lit8 p4, p4, 0x4

    if-ne v0, p4, :cond_51

    const/4 v1, 0x1

    :cond_51
    return v1
.end method

.method private static final decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;
    .registers 14

    const/16 v0, 0x10

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    :goto_9
    const/4 v7, 0x0

    if-ge p1, p2, :cond_78

    if-ne v4, v0, :cond_f

    return-object v7

    :cond_f
    add-int/lit8 v8, p1, 0x2

    if-gt v8, p2, :cond_26

    const-string v9, "::"

    .line 1
    invoke-static {p0, v9, p1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_26

    if-eq v5, v3, :cond_1e

    return-object v7

    :cond_1e
    add-int/lit8 v4, v4, 0x2

    move v5, v4

    if-ne v8, p2, :cond_24

    goto :goto_78

    :cond_24
    move v6, v8

    goto :goto_49

    :cond_26
    if-eqz v4, :cond_48

    const-string v8, ":"

    .line 2
    invoke-static {p0, v8, p1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_33

    add-int/lit8 p1, p1, 0x1

    goto :goto_48

    :cond_33
    const-string v8, "."

    .line 3
    invoke-static {p0, v8, p1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_47

    add-int/lit8 p1, v4, -0x2

    .line 4
    invoke-static {p0, v6, p2, v1, p1}, Lokhttp3/internal/HostnamesKt;->decodeIpv4Suffix(Ljava/lang/String;II[BI)Z

    move-result p0

    if-nez p0, :cond_44

    return-object v7

    :cond_44
    add-int/lit8 v4, v4, 0x2

    goto :goto_78

    :cond_47
    return-object v7

    :cond_48
    :goto_48
    move v6, p1

    :goto_49
    move p1, v6

    const/4 v8, 0x0

    :goto_4b
    if-ge p1, p2, :cond_5e

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lokhttp3/internal/Util;->parseHexDigit(C)I

    move-result v9

    if-ne v9, v3, :cond_58

    goto :goto_5e

    :cond_58
    shl-int/lit8 v8, v8, 0x4

    add-int/2addr v8, v9

    add-int/lit8 p1, p1, 0x1

    goto :goto_4b

    :cond_5e
    :goto_5e
    sub-int v9, p1, v6

    if-eqz v9, :cond_77

    const/4 v10, 0x4

    if-le v9, v10, :cond_66

    goto :goto_77

    :cond_66
    add-int/lit8 v7, v4, 0x1

    ushr-int/lit8 v9, v8, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    .line 6
    aput-byte v9, v1, v4

    add-int/lit8 v4, v7, 0x1

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    .line 7
    aput-byte v8, v1, v7

    goto :goto_9

    :cond_77
    :goto_77
    return-object v7

    :cond_78
    :goto_78
    if-eq v4, v0, :cond_8a

    if-ne v5, v3, :cond_7d

    return-object v7

    :cond_7d
    sub-int p0, v4, v5

    rsub-int/lit8 p1, p0, 0x10

    .line 8
    invoke-static {v1, v5, v1, p1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v4

    add-int/2addr v0, v5

    int-to-byte p0, v2

    .line 9
    invoke-static {v1, v5, v0, p0}, Ljava/util/Arrays;->fill([BIIB)V

    .line 10
    :cond_8a
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p0

    return-object p0
.end method

.method private static final inet6AddressToAscii([B)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1
    :goto_4
    array-length v4, p0

    const/16 v5, 0x10

    if-ge v2, v4, :cond_25

    move v4, v2

    :goto_a
    if-ge v4, v5, :cond_19

    .line 2
    aget-byte v6, p0, v4

    if-nez v6, :cond_19

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, p0, v6

    if-nez v6, :cond_19

    add-int/lit8 v4, v4, 0x2

    goto :goto_a

    :cond_19
    sub-int v5, v4, v2

    if-le v5, v3, :cond_22

    const/4 v6, 0x4

    if-lt v5, v6, :cond_22

    move v1, v2

    move v3, v5

    :cond_22
    add-int/lit8 v2, v4, 0x2

    goto :goto_4

    .line 3
    :cond_25
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    .line 4
    :cond_2a
    :goto_2a
    array-length v4, p0

    if-ge v0, v4, :cond_5a

    const/16 v4, 0x3a

    if-ne v0, v1, :cond_3b

    .line 5
    invoke-virtual {v2, v4}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    add-int/2addr v0, v3

    if-ne v0, v5, :cond_2a

    .line 6
    invoke-virtual {v2, v4}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_2a

    :cond_3b
    if-lez v0, :cond_40

    .line 7
    invoke-virtual {v2, v4}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 8
    :cond_40
    aget-byte v4, p0, v0

    const/16 v6, 0xff

    invoke-static {v4, v6}, Lokhttp3/internal/Util;->and(BI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, p0, v7

    invoke-static {v7, v6}, Lokhttp3/internal/Util;->and(BI)I

    move-result v6

    or-int/2addr v4, v6

    int-to-long v6, v4

    .line 9
    invoke-virtual {v2, v6, v7}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    add-int/lit8 v0, v0, 0x2

    goto :goto_2a

    .line 10
    :cond_5a
    invoke-virtual {v2}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toCanonicalHost(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "$this$toCanonicalHost"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ":"

    .line 1
    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_6d

    const-string v0, "["

    .line 2
    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "]"

    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {p0, v1, v0}, Lokhttp3/internal/HostnamesKt;->decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_32

    .line 4
    :cond_2a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0, v2, v0}, Lokhttp3/internal/HostnamesKt;->decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v0

    :goto_32
    if-eqz v0, :cond_6c

    .line 5
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 6
    array-length v2, v1

    const/16 v3, 0x10

    if-ne v2, v3, :cond_47

    const-string p0, "address"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lokhttp3/internal/HostnamesKt;->inet6AddressToAscii([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_47
    array-length v1, v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_50

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_50
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid IPv6 address: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_6c
    return-object v3

    .line 9
    :cond_6d
    :try_start_6d
    invoke-static {p0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "IDN.toASCII(host)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Locale.US"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_9c

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8f

    goto :goto_90

    :cond_8f
    const/4 v1, 0x0

    :goto_90
    if-eqz v1, :cond_93

    return-object v3

    .line 11
    :cond_93
    invoke-static {p0}, Lokhttp3/internal/HostnamesKt;->containsInvalidHostnameAsciiCodes(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9a

    goto :goto_9b

    :cond_9a
    move-object v3, p0

    :goto_9b
    return-object v3

    .line 12
    :cond_9c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_a4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6d .. :try_end_a4} :catch_a4

    :catch_a4
    return-object v3
.end method
