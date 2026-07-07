.class public Lcom/nettv/livestore/utils/EnigmaUtils;
.super Ljava/lang/Object;
.source "EnigmaUtils.java"


# static fields
.field private static final HEX:Ljava/lang/String; = "0123456789abcdef"

.field private static final HEX_ARRAY:[C

.field private static final data:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x20

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_12

    sput-object v0, Lcom/nettv/livestore/utils/EnigmaUtils;->data:[I

    const-string v0, "0123456789abcdef"

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/nettv/livestore/utils/EnigmaUtils;->HEX_ARRAY:[C

    return-void

    :array_12
    .array-data 4
        0x41
        0x43
        0x7a
        0x50
        0x6f
        0x4f
        0x4e
        0x73
        0x4c
        0x44
        0x4b
        0x64
        0x68
        0x77
        0x78
        0x35
        0x4d
        0x77
        0x63
        0x7a
        0x3f
        0x54
        0x54
        0x49
        0x65
        0x4a
        0x4b
        0x68
        0x46
        0x7a
        0x41
        0x47
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .registers 8

    .line 1
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_7
    array-length v3, p0

    if-ge v2, v3, :cond_23

    .line 3
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v2, 0x2

    .line 4
    sget-object v5, Lcom/nettv/livestore/utils/EnigmaUtils;->HEX_ARRAY:[C

    ushr-int/lit8 v6, v3, 0x4

    aget-char v6, v5, v6

    aput-char v6, v0, v4

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v3, v3, 0xf

    .line 5
    aget-char v3, v5, v3

    aput-char v3, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 6
    :cond_23
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    const/16 v0, 0xe

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static enigmatization([B)Ljava/lang/String;
    .registers 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/nettv/livestore/utils/EnigmaUtils;->data:[I

    invoke-static {v0}, Lcom/nettv/livestore/utils/EnigmaUtils;->keyToBytes([I)[B

    move-result-object v0

    .line 2
    invoke-static {v0, p0}, Lcom/nettv/livestore/utils/Security;->decrypt([B[B)[B

    move-result-object p0

    .line 3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    return-object v0

    :catch_10
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static keyToBytes([I)[B
    .registers 5

    .line 1
    array-length v0, p0

    div-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x10

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_16

    .line 3
    aget v3, p0, v2

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 4
    :cond_16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method
