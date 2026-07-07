.class final Lcom/google/ads/interactivemedia/v3/internal/js;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:[B

.field private b:Z

.field private c:I

.field private d:J

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/js;->a:[B

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/js;->b:Z

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/js;->c:I

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ie;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/js;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/js;->a:[B

    const/4 v1, 0x0

    const/16 v2, 0xa

    .line 3
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ie;->d([BII)V

    .line 4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a()V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/js;->a:[B

    .line 5
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/fb;->a:I

    const/4 v0, 0x4

    .line 6
    aget-byte v0, p1, v0

    const/4 v1, -0x8

    if-ne v0, v1, :cond_3

    const/4 v0, 0x5

    aget-byte v0, p1, v0

    const/16 v1, 0x72

    if-ne v0, v1, :cond_3

    const/4 v0, 0x6

    aget-byte v0, p1, v0

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_3

    const/4 v0, 0x7

    aget-byte v0, p1, v0

    and-int/lit16 v1, v0, 0xfe

    const/16 v2, 0xba

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xbb

    if-ne v0, v1, :cond_2

    const/16 v0, 0x9

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    .line 7
    :goto_0
    aget-byte p1, p1, v0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/js;->b:Z

    :cond_3
    :goto_1
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/jr;)V
    .locals 8

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/js;->c:I

    if-lez v0, :cond_0

    .line 1
    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->U:Lcom/google/ads/interactivemedia/v3/internal/ix;

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/js;->d:J

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/js;->e:I

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/internal/js;->f:I

    iget v6, p0, Lcom/google/ads/interactivemedia/v3/internal/js;->g:I

    iget-object v7, p1, Lcom/google/ads/interactivemedia/v3/internal/jr;->i:Lcom/google/ads/interactivemedia/v3/internal/iw;

    invoke-interface/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(JIIILcom/google/ads/interactivemedia/v3/internal/iw;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/js;->c:I

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/jr;JIII)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/js;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/js;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/js;->c:I

    if-nez v0, :cond_1

    iput-wide p2, p0, Lcom/google/ads/interactivemedia/v3/internal/js;->d:J

    iput p4, p0, Lcom/google/ads/interactivemedia/v3/internal/js;->e:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/js;->f:I

    :cond_1
    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/js;->f:I

    add-int/2addr p2, p5

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/js;->f:I

    iput p6, p0, Lcom/google/ads/interactivemedia/v3/internal/js;->g:I

    const/16 p2, 0x10

    if-lt v1, p2, :cond_2

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/js;->a(Lcom/google/ads/interactivemedia/v3/internal/jr;)V

    :cond_2
    return-void
.end method
