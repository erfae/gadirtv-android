.class public final Lcom/inka/ncg2/Base64Encoder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BASE64_CHARS:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

.field private static final BASE64_PADDING:C = '='


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_c

    .line 110
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 114
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    rem-int/2addr v1, v2

    if-nez v1, :cond_b

    const/4 v1, 0x0

    .line 118
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    const/4 v5, 0x2

    const/16 v6, 0x3d

    const/4 v7, 0x1

    if-ge v1, v3, :cond_4

    .line 119
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 122
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v7

    if-ne v1, v8, :cond_1

    if-ne v3, v6, :cond_1

    goto :goto_1

    .line 126
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v5

    if-ne v1, v8, :cond_2

    if-ne v3, v6, :cond_2

    add-int/lit8 v8, v1, 0x1

    .line 127
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v6, :cond_2

    goto :goto_1

    .line 131
    :cond_2
    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    :cond_3
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "An invalid character is found in the Base64 string."

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 138
    :cond_4
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/2addr v1, v2

    const/4 v3, 0x3

    mul-int/lit8 v1, v1, 0x3

    .line 139
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v7

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v6, :cond_5

    add-int/lit8 v1, v1, -0x1

    .line 142
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v6, :cond_6

    add-int/lit8 v1, v1, -0x1

    .line 146
    :cond_6
    new-array v1, v1, [B

    new-array v8, v2, [C

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 153
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v9, v12, :cond_a

    add-int/lit8 v12, v10, 0x1

    .line 155
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v13

    aput-char v13, v8, v10

    if-ne v12, v2, :cond_9

    .line 160
    aget-char v10, v8, v0

    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    shl-int/2addr v10, v5

    int-to-byte v10, v10

    .line 161
    aput-byte v10, v1, v11

    .line 163
    aget-char v10, v8, v7

    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    add-int/lit8 v12, v11, 0x1

    .line 164
    aget-byte v13, v1, v11

    ushr-int/lit8 v14, v10, 0x4

    or-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v1, v11

    .line 167
    aget-char v11, v8, v5

    if-ne v11, v6, :cond_7

    goto :goto_4

    :cond_7
    and-int/lit8 v10, v10, 0xf

    shl-int/2addr v10, v2

    int-to-byte v10, v10

    .line 170
    aput-byte v10, v1, v12

    .line 172
    aget-char v10, v8, v5

    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    add-int/lit8 v11, v12, 0x1

    .line 173
    aget-byte v13, v1, v12

    ushr-int/lit8 v14, v10, 0x2

    or-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v1, v12

    .line 176
    aget-char v12, v8, v3

    if-ne v12, v6, :cond_8

    goto :goto_4

    :cond_8
    and-int/lit8 v10, v10, 0x3

    shl-int/lit8 v10, v10, 0x6

    int-to-byte v10, v10

    .line 179
    aput-byte v10, v1, v11

    .line 181
    aget-char v10, v8, v3

    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    add-int/lit8 v12, v11, 0x1

    .line 182
    aget-byte v13, v1, v11

    or-int/2addr v10, v13

    int-to-byte v10, v10

    aput-byte v10, v1, v11

    move v11, v12

    const/4 v10, 0x0

    goto :goto_3

    :cond_9
    move v10, v12

    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_a
    :goto_4
    return-object v1

    .line 115
    :cond_b
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "The length of a Base64 string must be a multiple of 4."

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    :goto_5
    new-array p0, v0, [B

    return-object p0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 13

    if-eqz p0, :cond_8

    .line 48
    array-length v0, p0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 52
    :cond_0
    array-length v0, p0

    const/4 v1, 0x3

    div-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    .line 53
    array-length v2, p0

    rem-int/2addr v2, v1

    if-lez v2, :cond_1

    add-int/lit8 v0, v0, 0x4

    .line 57
    :cond_1
    new-array v0, v0, [C

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 64
    :goto_0
    array-length v7, p0

    if-ge v4, v7, :cond_7

    add-int/lit8 v7, v5, 0x1

    .line 66
    aget-byte v8, p0, v4

    and-int/lit16 v8, v8, 0xff

    aput v8, v2, v5

    const/4 v5, 0x1

    if-eq v7, v1, :cond_3

    .line 69
    array-length v8, p0

    sub-int/2addr v8, v5

    if-ne v4, v8, :cond_2

    goto :goto_1

    :cond_2
    move v5, v7

    goto :goto_4

    .line 71
    :cond_3
    :goto_1
    aget v8, v2, v3

    const/4 v9, 0x2

    ushr-int/2addr v8, v9

    add-int/lit8 v10, v6, 0x1

    const-string v11, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 72
    invoke-virtual {v11, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aput-char v8, v0, v6

    .line 75
    aget v6, v2, v3

    and-int/2addr v6, v1

    shl-int/lit8 v6, v6, 0x4

    aget v8, v2, v5

    ushr-int/lit8 v8, v8, 0x4

    or-int/2addr v6, v8

    add-int/lit8 v8, v10, 0x1

    .line 76
    invoke-virtual {v11, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v0, v10

    .line 79
    aget v6, v2, v5

    and-int/lit8 v6, v6, 0xf

    shl-int/2addr v6, v9

    aget v10, v2, v9

    ushr-int/lit8 v10, v10, 0x6

    or-int/2addr v6, v10

    add-int/lit8 v10, v8, 0x1

    const/16 v12, 0x3d

    if-le v7, v5, :cond_4

    .line 81
    invoke-virtual {v11, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_2

    :cond_4
    const/16 v5, 0x3d

    :goto_2
    aput-char v5, v0, v8

    .line 84
    aget v5, v2, v9

    and-int/lit8 v5, v5, 0x3f

    add-int/lit8 v6, v10, 0x1

    if-le v7, v9, :cond_5

    .line 86
    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v12

    :cond_5
    aput-char v12, v0, v10

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v1, :cond_6

    .line 91
    aput v3, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 96
    :cond_7
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_8
    :goto_5
    const-string p0, ""

    return-object p0
.end method
