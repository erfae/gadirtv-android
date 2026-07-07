.class public final Lcom/google/vr/sdk/widgets/video/deps/nu;
.super Ljava/io/InputStream;
.source "DataSourceInputStream.java"


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/nr;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/nv;

.field private final c:[B

.field private d:Z

.field private e:Z

.field private f:J


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/nr;Lcom/google/vr/sdk/widgets/video/deps/nv;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nu;->d:Z

    .line 3
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nu;->e:Z

    .line 4
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/nu;->a:Lcom/google/vr/sdk/widgets/video/deps/nr;

    .line 5
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/nu;->b:Lcom/google/vr/sdk/widgets/video/deps/nv;

    const/4 p1, 0x1

    new-array p1, p1, [B

    .line 6
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/nu;->c:[B

    return-void
.end method

.method private b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nu;->d:Z

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nu;->a:Lcom/google/vr/sdk/widgets/video/deps/nr;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/nu;->b:Lcom/google/vr/sdk/widgets/video/deps/nv;

    invoke-interface {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/nr;->a(Lcom/google/vr/sdk/widgets/video/deps/nv;)J

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nu;->d:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/nu;->b()V

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nu;->e:Z

    if-nez v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nu;->a:Lcom/google/vr/sdk/widgets/video/deps/nr;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/nr;->c()V

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nu;->e:Z

    :cond_0
    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nu;->c:[B

    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/nu;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nu;->c:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xff

    :goto_0
    return v1
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/nu;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nu;->e:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 14
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/nu;->b()V

    .line 15
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nu;->a:Lcom/google/vr/sdk/widgets/video/deps/nr;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/nr;->a([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    .line 18
    :cond_0
    iget-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/nu;->f:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/nu;->f:J

    return p1
.end method
