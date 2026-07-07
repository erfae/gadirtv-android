.class public final Lokio/internal/_Utf8Kt;
.super Ljava/lang/Object;
.source "-Utf8.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\n-Utf8.kt\nKotlin\n*S Kotlin\n*F\n+ 1 -Utf8.kt\nokio/internal/_Utf8Kt\n+ 2 Utf8.kt\nokio/Utf8\n+ 3 -Util.kt\nokio/-Util\n*L\n1#1,60:1\n259#2,16:61\n276#2:78\n396#2,9:79\n127#2:88\n405#2,20:90\n278#2,3:110\n439#2,4:113\n127#2:117\n445#2,10:118\n127#2:128\n455#2,5:129\n127#2:134\n460#2,24:135\n282#2,3:159\n499#2,3:162\n285#2,12:165\n502#2:177\n127#2:178\n505#2,2:179\n127#2:181\n509#2,10:182\n127#2:192\n519#2,5:193\n127#2:198\n524#2,5:199\n127#2:204\n529#2,28:205\n301#2,6:233\n138#2,67:239\n68#3:77\n74#3:89\n*E\n*S KotlinDebug\n*F\n+ 1 -Utf8.kt\nokio/internal/_Utf8Kt\n*L\n34#1,16:61\n34#1:78\n34#1,9:79\n34#1:88\n34#1,20:90\n34#1,3:110\n34#1,4:113\n34#1:117\n34#1,10:118\n34#1:128\n34#1,5:129\n34#1:134\n34#1,24:135\n34#1,3:159\n34#1,3:162\n34#1,12:165\n34#1:177\n34#1:178\n34#1,2:179\n34#1:181\n34#1,10:182\n34#1:192\n34#1,5:193\n34#1:198\n34#1,5:199\n34#1:204\n34#1,28:205\n34#1,6:233\n50#1,67:239\n34#1:77\n34#1:89\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0012\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\u001e\u0010\u0003\u001a\u00020\u0002*\u00020\u00012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "commonAsUtf8ToByteArray",
        "",
        "",
        "commonToUtf8String",
        "beginIndex",
        "",
        "endIndex",
        "okio"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method public static final commonAsUtf8ToByteArray(Ljava/lang/String;)[B
    .registers 13
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$commonAsUtf8ToByteArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_12
    const-string v3, "java.util.Arrays.copyOf(this, newSize)"

    if-ge v2, v1, :cond_f9

    .line 3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x80

    .line 4
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v6

    if-ltz v6, :cond_f2

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    move v4, v2

    :goto_27
    if-ge v2, v1, :cond_ea

    .line 6
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 7
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v7

    if-gez v7, :cond_56

    int-to-byte v6, v6

    add-int/lit8 v7, v4, 0x1

    .line 8
    aput-byte v6, v0, v4

    add-int/lit8 v2, v2, 0x1

    :goto_3a
    if-ge v2, v1, :cond_54

    .line 9
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v4

    if-gez v4, :cond_54

    add-int/lit8 v4, v2, 0x1

    .line 10
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    add-int/lit8 v6, v7, 0x1

    .line 11
    aput-byte v2, v0, v7

    move v2, v4

    move v7, v6

    goto :goto_3a

    :cond_54
    move v4, v7

    goto :goto_27

    :cond_56
    const/16 v7, 0x800

    .line 12
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v7

    if-gez v7, :cond_73

    shr-int/lit8 v7, v6, 0x6

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    add-int/lit8 v8, v4, 0x1

    .line 13
    aput-byte v7, v0, v4

    and-int/lit8 v4, v6, 0x3f

    or-int/2addr v4, v5

    int-to-byte v4, v4

    add-int/lit8 v6, v8, 0x1

    aput-byte v4, v0, v8

    :goto_6f
    add-int/lit8 v2, v2, 0x1

    :goto_71
    move v4, v6

    goto :goto_27

    :cond_73
    const v7, 0xd800

    const/16 v8, 0x3f

    if-gt v7, v6, :cond_cf

    const v7, 0xdfff

    if-ge v7, v6, :cond_80

    goto :goto_cf

    :cond_80
    const v9, 0xdbff

    .line 14
    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v9

    if-gtz v9, :cond_ca

    add-int/lit8 v9, v2, 0x1

    if-le v1, v9, :cond_ca

    const v10, 0xdc00

    .line 15
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-gt v10, v11, :cond_ca

    if-ge v7, v11, :cond_99

    goto :goto_ca

    :cond_99
    shl-int/lit8 v6, v6, 0xa

    .line 16
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/2addr v7, v6

    const v6, -0x35fdc00

    add-int/2addr v7, v6

    shr-int/lit8 v6, v7, 0x12

    or-int/lit16 v6, v6, 0xf0

    int-to-byte v6, v6

    add-int/lit8 v9, v4, 0x1

    .line 17
    aput-byte v6, v0, v4

    shr-int/lit8 v4, v7, 0xc

    and-int/2addr v4, v8

    or-int/2addr v4, v5

    int-to-byte v4, v4

    add-int/lit8 v6, v9, 0x1

    aput-byte v4, v0, v9

    shr-int/lit8 v4, v7, 0x6

    and-int/2addr v4, v8

    or-int/2addr v4, v5

    int-to-byte v4, v4

    add-int/lit8 v9, v6, 0x1

    aput-byte v4, v0, v6

    and-int/lit8 v4, v7, 0x3f

    or-int/2addr v4, v5

    int-to-byte v4, v4

    add-int/lit8 v6, v9, 0x1

    aput-byte v4, v0, v9

    add-int/lit8 v2, v2, 0x2

    goto :goto_71

    :cond_ca
    :goto_ca
    add-int/lit8 v6, v4, 0x1

    aput-byte v8, v0, v4

    goto :goto_6f

    :cond_cf
    :goto_cf
    shr-int/lit8 v7, v6, 0xc

    or-int/lit16 v7, v7, 0xe0

    int-to-byte v7, v7

    add-int/lit8 v9, v4, 0x1

    aput-byte v7, v0, v4

    shr-int/lit8 v4, v6, 0x6

    and-int/2addr v4, v8

    or-int/2addr v4, v5

    int-to-byte v4, v4

    add-int/lit8 v7, v9, 0x1

    aput-byte v4, v0, v9

    and-int/lit8 v4, v6, 0x3f

    or-int/2addr v4, v5

    int-to-byte v4, v4

    add-int/lit8 v6, v7, 0x1

    aput-byte v4, v0, v7

    goto :goto_6f

    .line 18
    :cond_ea
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_f2
    int-to-byte v3, v4

    .line 19
    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_12

    .line 20
    :cond_f9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final commonToUtf8String([BII)Ljava/lang/String;
    .registers 15
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$commonToUtf8String"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_1b3

    .line 1
    array-length v0, p0

    if-gt p2, v0, :cond_1b3

    if-gt p1, p2, :cond_1b3

    sub-int v0, p2, p1

    .line 2
    new-array v0, v0, [C

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_12
    if-ge p1, p2, :cond_1ad

    .line 3
    aget-byte v3, p0, p1

    if-ltz v3, :cond_33

    int-to-char v3, v3

    add-int/lit8 v4, v2, 0x1

    .line 4
    aput-char v3, v0, v2

    add-int/lit8 p1, p1, 0x1

    :goto_1f
    if-ge p1, p2, :cond_31

    .line 5
    aget-byte v2, p0, p1

    if-ltz v2, :cond_31

    add-int/lit8 v2, p1, 0x1

    .line 6
    aget-byte p1, p0, p1

    int-to-char p1, p1

    add-int/lit8 v3, v4, 0x1

    .line 7
    aput-char p1, v0, v4

    move p1, v2

    move v4, v3

    goto :goto_1f

    :cond_31
    :goto_31
    move v2, v4

    goto :goto_12

    :cond_33
    shr-int/lit8 v4, v3, 0x5

    const/4 v5, -0x2

    const/16 v6, 0x80

    const v7, 0xfffd

    if-ne v4, v5, :cond_71

    add-int/lit8 v3, p1, 0x1

    if-gt p2, v3, :cond_47

    int-to-char v3, v7

    add-int/lit8 v4, v2, 0x1

    aput-char v3, v0, v2

    goto :goto_59

    .line 8
    :cond_47
    aget-byte v4, p0, p1

    .line 9
    aget-byte v3, p0, v3

    and-int/lit16 v5, v3, 0xc0

    if-ne v5, v6, :cond_51

    const/4 v5, 0x1

    goto :goto_52

    :cond_51
    const/4 v5, 0x0

    :goto_52
    if-nez v5, :cond_5c

    int-to-char v3, v7

    add-int/lit8 v4, v2, 0x1

    .line 10
    aput-char v3, v0, v2

    .line 11
    :goto_59
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_ab

    :cond_5c
    xor-int/lit16 v3, v3, 0xf80

    shl-int/lit8 v4, v4, 0x6

    xor-int/2addr v3, v4

    if-ge v3, v6, :cond_69

    int-to-char v3, v7

    add-int/lit8 v4, v2, 0x1

    .line 12
    aput-char v3, v0, v2

    goto :goto_6e

    :cond_69
    int-to-char v3, v3

    add-int/lit8 v4, v2, 0x1

    aput-char v3, v0, v2

    .line 13
    :goto_6e
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_be

    :cond_71
    shr-int/lit8 v4, v3, 0x4

    const v8, 0xd800

    const v9, 0xdfff

    if-ne v4, v5, :cond_ea

    add-int/lit8 v3, p1, 0x2

    if-gt p2, v3, :cond_96

    int-to-char v3, v7

    add-int/lit8 v4, v2, 0x1

    .line 14
    aput-char v3, v0, v2

    .line 15
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    add-int/lit8 v2, p1, 0x1

    if-le p2, v2, :cond_ab

    .line 16
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xc0

    if-ne v2, v6, :cond_92

    const/4 v2, 0x1

    goto :goto_93

    :cond_92
    const/4 v2, 0x0

    :goto_93
    if-nez v2, :cond_be

    goto :goto_ab

    .line 17
    :cond_96
    aget-byte v4, p0, p1

    add-int/lit8 v5, p1, 0x1

    .line 18
    aget-byte v5, p0, v5

    and-int/lit16 v10, v5, 0xc0

    if-ne v10, v6, :cond_a2

    const/4 v10, 0x1

    goto :goto_a3

    :cond_a2
    const/4 v10, 0x0

    :goto_a3
    if-nez v10, :cond_ad

    int-to-char v3, v7

    add-int/lit8 v4, v2, 0x1

    .line 19
    aput-char v3, v0, v2

    goto :goto_59

    :cond_ab
    :goto_ab
    const/4 v2, 0x1

    goto :goto_e7

    .line 20
    :cond_ad
    aget-byte v3, p0, v3

    and-int/lit16 v10, v3, 0xc0

    if-ne v10, v6, :cond_b5

    const/4 v6, 0x1

    goto :goto_b6

    :cond_b5
    const/4 v6, 0x0

    :goto_b6
    if-nez v6, :cond_c0

    int-to-char v3, v7

    add-int/lit8 v4, v2, 0x1

    .line 21
    aput-char v3, v0, v2

    goto :goto_6e

    :cond_be
    :goto_be
    const/4 v2, 0x2

    goto :goto_e7

    :cond_c0
    const v6, -0x1e080

    xor-int/2addr v3, v6

    shl-int/lit8 v5, v5, 0x6

    xor-int/2addr v3, v5

    shl-int/lit8 v4, v4, 0xc

    xor-int/2addr v3, v4

    const/16 v4, 0x800

    if-ge v3, v4, :cond_d4

    int-to-char v3, v7

    add-int/lit8 v4, v2, 0x1

    aput-char v3, v0, v2

    goto :goto_e4

    :cond_d4
    if-le v8, v3, :cond_d7

    goto :goto_df

    :cond_d7
    if-lt v9, v3, :cond_df

    int-to-char v3, v7

    add-int/lit8 v4, v2, 0x1

    aput-char v3, v0, v2

    goto :goto_e4

    :cond_df
    :goto_df
    int-to-char v3, v3

    add-int/lit8 v4, v2, 0x1

    aput-char v3, v0, v2

    .line 22
    :goto_e4
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v2, 0x3

    :goto_e7
    add-int/2addr p1, v2

    goto/16 :goto_31

    :cond_ea
    shr-int/lit8 v3, v3, 0x3

    if-ne v3, v5, :cond_1a4

    add-int/lit8 v3, p1, 0x3

    if-gt p2, v3, :cond_118

    add-int/lit8 v3, v2, 0x1

    .line 23
    aput-char v7, v0, v2

    .line 24
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    add-int/lit8 v2, p1, 0x1

    if-le p2, v2, :cond_12d

    .line 25
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xc0

    if-ne v2, v6, :cond_104

    const/4 v2, 0x1

    goto :goto_105

    :cond_104
    const/4 v2, 0x0

    :goto_105
    if-nez v2, :cond_108

    goto :goto_12d

    :cond_108
    add-int/lit8 v2, p1, 0x2

    if-le p2, v2, :cond_143

    .line 26
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xc0

    if-ne v2, v6, :cond_114

    const/4 v2, 0x1

    goto :goto_115

    :cond_114
    const/4 v2, 0x0

    :goto_115
    if-nez v2, :cond_156

    goto :goto_143

    .line 27
    :cond_118
    aget-byte v4, p0, p1

    add-int/lit8 v5, p1, 0x1

    .line 28
    aget-byte v5, p0, v5

    and-int/lit16 v10, v5, 0xc0

    if-ne v10, v6, :cond_124

    const/4 v10, 0x1

    goto :goto_125

    :cond_124
    const/4 v10, 0x0

    :goto_125
    if-nez v10, :cond_130

    add-int/lit8 v3, v2, 0x1

    .line 29
    aput-char v7, v0, v2

    .line 30
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_12d
    :goto_12d
    const/4 v2, 0x1

    goto/16 :goto_1a2

    :cond_130
    add-int/lit8 v10, p1, 0x2

    .line 31
    aget-byte v10, p0, v10

    and-int/lit16 v11, v10, 0xc0

    if-ne v11, v6, :cond_13a

    const/4 v11, 0x1

    goto :goto_13b

    :cond_13a
    const/4 v11, 0x0

    :goto_13b
    if-nez v11, :cond_145

    add-int/lit8 v3, v2, 0x1

    .line 32
    aput-char v7, v0, v2

    .line 33
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_143
    :goto_143
    const/4 v2, 0x2

    goto :goto_1a2

    .line 34
    :cond_145
    aget-byte v3, p0, v3

    and-int/lit16 v11, v3, 0xc0

    if-ne v11, v6, :cond_14d

    const/4 v6, 0x1

    goto :goto_14e

    :cond_14d
    const/4 v6, 0x0

    :goto_14e
    if-nez v6, :cond_158

    add-int/lit8 v3, v2, 0x1

    .line 35
    aput-char v7, v0, v2

    .line 36
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_156
    const/4 v2, 0x3

    goto :goto_1a2

    :cond_158
    const v6, 0x381f80

    xor-int/2addr v3, v6

    shl-int/lit8 v6, v10, 0x6

    xor-int/2addr v3, v6

    shl-int/lit8 v5, v5, 0xc

    xor-int/2addr v3, v5

    shl-int/lit8 v4, v4, 0x12

    xor-int/2addr v3, v4

    const v4, 0x10ffff

    if-le v3, v4, :cond_16f

    add-int/lit8 v3, v2, 0x1

    .line 37
    aput-char v7, v0, v2

    goto :goto_19f

    :cond_16f
    if-le v8, v3, :cond_172

    goto :goto_179

    :cond_172
    if-lt v9, v3, :cond_179

    add-int/lit8 v3, v2, 0x1

    aput-char v7, v0, v2

    goto :goto_19f

    :cond_179
    :goto_179
    const/high16 v4, 0x10000

    if-ge v3, v4, :cond_182

    add-int/lit8 v3, v2, 0x1

    aput-char v7, v0, v2

    goto :goto_19f

    :cond_182
    if-eq v3, v7, :cond_19b

    ushr-int/lit8 v4, v3, 0xa

    const v5, 0xd7c0

    add-int/2addr v4, v5

    int-to-char v4, v4

    add-int/lit8 v5, v2, 0x1

    aput-char v4, v0, v2

    and-int/lit16 v2, v3, 0x3ff

    const v3, 0xdc00

    add-int/2addr v2, v3

    int-to-char v2, v2

    add-int/lit8 v3, v5, 0x1

    aput-char v2, v0, v5

    goto :goto_19f

    :cond_19b
    add-int/lit8 v3, v2, 0x1

    aput-char v7, v0, v2

    .line 38
    :goto_19f
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v2, 0x4

    :goto_1a2
    add-int/2addr p1, v2

    goto :goto_1aa

    :cond_1a4
    add-int/lit8 v3, v2, 0x1

    .line 39
    aput-char v7, v0, v2

    add-int/lit8 p1, p1, 0x1

    :goto_1aa
    move v2, v3

    goto/16 :goto_12

    .line 40
    :cond_1ad
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    .line 41
    :cond_1b3
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "size="

    .line 42
    invoke-static {v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 43
    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " beginIndex="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " endIndex="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic commonToUtf8String$default([BIIILjava/lang/Object;)Ljava/lang/String;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_5

    const/4 p1, 0x0

    :cond_5
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_a

    array-length p2, p0

    :cond_a
    invoke-static {p0, p1, p2}, Lokio/internal/_Utf8Kt;->commonToUtf8String([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
