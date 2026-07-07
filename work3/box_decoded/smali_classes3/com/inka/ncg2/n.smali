.class Lcom/inka/ncg2/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:[B

.field b:[B


# direct methods
.method constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 6
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/inka/ncg2/n;->a:[B

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 7
    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/inka/ncg2/n;->b:[B

    return-void

    :array_0
    .array-data 1
        0x39t
        0x6dt
        0x42t
        0x35t
        0x4ct
        0x32t
        0x47t
        0x54t
        0x52t
        0x52t
        0x53t
        0x63t
        0x62t
        0x72t
        0x54t
        0x48t
        0x39t
        0x39t
        0x4ct
        0x31t
        0x4at
        0x52t
        0x6et
        0x4at
        0x4bt
        0x54t
        0x52t
        0x43t
        0x65t
        0x43t
        0x6bt
        0x42t
    .end array-data

    :array_1
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 3

    .line 12
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/inka/ncg2/n;->a:[B

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method b()Ljava/lang/String;
    .locals 3

    .line 24
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/inka/ncg2/n;->b:[B

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string v0, ""

    :goto_0
    return-object v0
.end method
