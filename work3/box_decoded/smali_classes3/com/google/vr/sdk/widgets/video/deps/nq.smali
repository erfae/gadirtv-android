.class public final Lcom/google/vr/sdk/widgets/video/deps/nq;
.super Lcom/google/vr/sdk/widgets/video/deps/no;
.source "DataSchemeDataSource.java"


# instance fields
.field private a:Lcom/google/vr/sdk/widgets/video/deps/nv;

.field private b:I

.field private c:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/no;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 2

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nq;->c:[B

    array-length v0, v0

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/nq;->b:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 26
    :cond_1
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 27
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nq;->c:[B

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/nq;->b:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/nq;->b:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/nq;->b:I

    .line 29
    invoke-virtual {p0, p3}, Lcom/google/vr/sdk/widgets/video/deps/nq;->a(I)V

    return p3
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/nv;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/nq;->b(Lcom/google/vr/sdk/widgets/video/deps/nv;)V

    .line 4
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/nq;->a:Lcom/google/vr/sdk/widgets/video/deps/nv;

    .line 5
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/nv;->a:Landroid/net/Uri;

    .line 6
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "data"

    .line 7
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/s;

    const-string v0, "Unsupported scheme: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-static {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 10
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    const/4 v0, 0x1

    .line 12
    aget-object v0, v1, v0

    const/4 v2, 0x0

    .line 13
    aget-object v1, v1, v2

    const-string v3, ";base64"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    :try_start_0
    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/nq;->c:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 17
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/s;

    const-string v2, "Error while parsing Base64 encoded string: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v1, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    const-string v1, "US-ASCII"

    .line 18
    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nq;->c:[B

    .line 19
    :goto_2
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/nq;->c(Lcom/google/vr/sdk/widgets/video/deps/nv;)V

    .line 20
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/nq;->c:[B

    array-length p1, p1

    int-to-long v0, p1

    return-wide v0

    .line 11
    :cond_4
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/s;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x17

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected URI format: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Landroid/net/Uri;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nq;->a:Lcom/google/vr/sdk/widgets/video/deps/nv;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/nv;->a:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nq;->c:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 33
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/nq;->c:[B

    .line 34
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/nq;->d()V

    .line 35
    :cond_0
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/nq;->a:Lcom/google/vr/sdk/widgets/video/deps/nv;

    return-void
.end method
