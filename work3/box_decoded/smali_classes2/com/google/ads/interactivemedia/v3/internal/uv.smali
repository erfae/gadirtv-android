.class final Lcom/google/ads/interactivemedia/v3/internal/uv;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/st;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/cz;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/oy;

.field private c:[J

.field private d:Z

.field private e:Lcom/google/ads/interactivemedia/v3/internal/vf;

.field private f:Z

.field private g:I

.field private h:J


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/vf;Lcom/google/ads/interactivemedia/v3/internal/cz;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/uv;->a:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uv;->e:Lcom/google/ads/interactivemedia/v3/internal/vf;

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/oy;

    .line 1
    invoke-direct {p2}, Lcom/google/ads/interactivemedia/v3/internal/oy;-><init>()V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/uv;->b:Lcom/google/ads/interactivemedia/v3/internal/oy;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uv;->h:J

    .line 2
    iget-object p2, p1, Lcom/google/ads/interactivemedia/v3/internal/vf;->b:[J

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/uv;->c:[J

    .line 3
    invoke-virtual {p0, p1, p3}, Lcom/google/ads/interactivemedia/v3/internal/uv;->a(Lcom/google/ads/interactivemedia/v3/internal/vf;Z)V

    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 3

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uv;->g:I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/uv;->c:[J

    const/4 v2, 0x1

    .line 14
    invoke-static {v1, p1, p2, v2}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a([JJZ)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/uv;->g:I

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uv;->g:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/da;Lcom/google/ads/interactivemedia/v3/internal/he;Z)I
    .locals 4

    const/4 v0, 0x1

    if-nez p3, :cond_3

    iget-boolean p3, p0, Lcom/google/ads/interactivemedia/v3/internal/uv;->f:Z

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uv;->g:I

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/uv;->c:[J

    .line 5
    array-length p3, p3

    const/4 v1, -0x4

    if-ne p1, p3, :cond_2

    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uv;->d:Z

    if-nez p1, :cond_1

    const/4 p1, 0x4

    .line 6
    invoke-virtual {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/gz;->a(I)V

    return v1

    :cond_1
    const/4 p1, -0x3

    return p1

    :cond_2
    add-int/lit8 p3, p1, 0x1

    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/uv;->g:I

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/uv;->b:Lcom/google/ads/interactivemedia/v3/internal/oy;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/uv;->e:Lcom/google/ads/interactivemedia/v3/internal/vf;

    .line 7
    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/vf;->a:[Lcom/google/ads/interactivemedia/v3/internal/ow;

    aget-object v2, v2, p1

    invoke-virtual {p3, v2}, Lcom/google/ads/interactivemedia/v3/internal/oy;->a(Lcom/google/ads/interactivemedia/v3/internal/ow;)[B

    move-result-object p3

    .line 8
    array-length v2, p3

    invoke-virtual {p2, v2}, Lcom/google/ads/interactivemedia/v3/internal/he;->d(I)V

    .line 9
    iget-object v2, p2, Lcom/google/ads/interactivemedia/v3/internal/he;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/uv;->c:[J

    .line 10
    aget-wide v2, p3, p1

    iput-wide v2, p2, Lcom/google/ads/interactivemedia/v3/internal/he;->d:J

    .line 11
    invoke-virtual {p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/gz;->a(I)V

    return v1

    .line 0
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/uv;->a:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iput-object p2, p1, Lcom/google/ads/interactivemedia/v3/internal/da;->a:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uv;->f:Z

    const/4 p1, -0x5

    return p1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uv;->e:Lcom/google/ads/interactivemedia/v3/internal/vf;

    .line 4
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/vf;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/vf;Z)V
    .locals 8

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uv;->g:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_0

    move-wide v4, v1

    goto :goto_0

    .line 18
    :cond_0
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/uv;->c:[J

    add-int/lit8 v0, v0, -0x1

    .line 15
    aget-wide v4, v3, v0

    .line 0
    :goto_0
    iput-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/internal/uv;->d:Z

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uv;->e:Lcom/google/ads/interactivemedia/v3/internal/vf;

    .line 16
    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/vf;->b:[J

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uv;->c:[J

    iget-wide v6, p0, Lcom/google/ads/interactivemedia/v3/internal/uv;->h:J

    cmp-long p2, v6, v1

    if-eqz p2, :cond_1

    .line 17
    invoke-virtual {p0, v6, v7}, Lcom/google/ads/interactivemedia/v3/internal/uv;->b(J)V

    return-void

    :cond_1
    cmp-long p2, v4, v1

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    .line 18
    invoke-static {p1, v4, v5, p2}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a([JJZ)I

    move-result p1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uv;->g:I

    :cond_2
    return-void
.end method

.method public final b(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uv;->c:[J

    const/4 v1, 0x1

    .line 12
    invoke-static {v0, p1, p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a([JJZ)I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uv;->g:I

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/uv;->d:Z

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/uv;->c:[J

    .line 13
    array-length v1, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-wide p1, v2

    :goto_0
    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uv;->h:J

    return-void
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final c()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
