.class public Lcom/verimatrix/vdc/KDA;
.super Ljava/lang/Object;
.source "KDA.java"


# static fields
.field private static final AESIV:[B

.field private static final IV:[B

.field private static final TAG:Ljava/lang/String; = "KDA"

.field private static final block_len:I = 0x10

.field private static final key_len:I = 0x10

.field private static final mShift:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 12
    fill-array-data v1, :array_0

    sput-object v1, Lcom/verimatrix/vdc/KDA;->IV:[B

    new-array v1, v0, [B

    .line 13
    fill-array-data v1, :array_1

    sput-object v1, Lcom/verimatrix/vdc/KDA;->mShift:[B

    new-array v0, v0, [B

    .line 14
    fill-array-data v0, :array_2

    sput-object v0, Lcom/verimatrix/vdc/KDA;->AESIV:[B

    return-void

    :array_0
    .array-data 1
        -0x5t
        0x6dt
        0x1ft
        0x55t
        0x18t
        -0x30t
        0x5ft
        0x20t
        0x2ct
        -0x74t
        0x18t
        0x13t
        0x0t
        -0x24t
        0x10t
        -0x32t
    .end array-data

    :array_1
    .array-data 1
        0x35t
        -0xet
        -0x5bt
        0x68t
        0xdt
        0x66t
        -0x26t
        0x5bt
        -0x15t
        -0x2ct
        0x77t
        0x75t
        -0x68t
        -0x3ct
        -0x2ft
        0x6ct
    .end array-data

    :array_2
    .array-data 1
        -0x40t
        -0x15t
        -0x10t
        -0x1ft
        -0x39t
        -0x39t
        -0x67t
        -0x37t
        -0x24t
        -0x7ft
        0x79t
        0x76t
        0x5at
        0x3ct
        0x53t
        0x15t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static DeriveKey(Ljava/lang/String;)[B
    .locals 13

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 24
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    rem-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 28
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    sub-int/2addr v3, v1

    .line 29
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 36
    :goto_0
    array-length v1, p0

    div-int/2addr v1, v2

    add-int/lit8 v3, v1, 0x1

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x1

    aput v2, v4, v5

    const/4 v6, 0x0

    aput v3, v4, v6

    .line 37
    const-class v7, B

    invoke-static {v7, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[B

    new-array v7, v2, [B

    new-array v8, v2, [B

    .line 40
    sget-object v9, Lcom/verimatrix/vdc/KDA;->IV:[B

    aput-object v9, v4, v6

    :goto_1
    if-ge v5, v3, :cond_4

    add-int/lit8 v9, v5, -0x1

    mul-int/lit8 v10, v9, 0x10

    .line 42
    aget-object v11, v4, v5

    invoke-static {p0, v10, v11, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v2, :cond_2

    .line 44
    aget-object v11, v4, v9

    aget-byte v11, v11, v10

    sget-object v12, Lcom/verimatrix/vdc/KDA;->mShift:[B

    aget-byte v12, v12, v10

    xor-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 48
    :cond_2
    :try_start_0
    new-instance v10, Lcom/verimatrix/vdc/AESCryptoUtils;

    aget-object v11, v4, v5

    sget-object v12, Lcom/verimatrix/vdc/KDA;->AESIV:[B

    invoke-direct {v10, v11, v12}, Lcom/verimatrix/vdc/AESCryptoUtils;-><init>([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    invoke-virtual {v10, v7}, Lcom/verimatrix/vdc/AESCryptoUtils;->encode([B)Ljava/lang/String;

    move-result-object v7

    .line 55
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v2, :cond_3

    .line 57
    aget-object v11, v4, v9

    aget-byte v11, v11, v10

    aget-byte v12, v7, v10

    xor-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 59
    :cond_3
    aput-object v8, v4, v5

    new-array v7, v2, [B

    new-array v8, v2, [B

    new-array v10, v2, [B

    .line 63
    aput-object v10, v4, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 51
    :catch_0
    sget-object p0, Lcom/verimatrix/vdc/KDA;->TAG:Ljava/lang/String;

    const-string v1, "Error constructing AESCryptoUtils"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 66
    :cond_4
    aget-object p0, v4, v1

    return-object p0

    .line 20
    :cond_5
    :goto_4
    sget-object p0, Lcom/verimatrix/vdc/KDA;->TAG:Ljava/lang/String;

    const-string v1, "DeriveKey input string is null or empty."

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
