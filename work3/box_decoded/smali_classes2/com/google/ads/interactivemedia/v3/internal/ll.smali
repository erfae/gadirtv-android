.class final Lcom/google/ads/interactivemedia/v3/internal/ll;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/lm;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/abr;

.field private c:I

.field private d:I

.field private e:Z


# direct methods
.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/lm;

    .line 1
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/lm;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ll;->a:Lcom/google/ads/interactivemedia/v3/internal/lm;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/abr;

    const v1, 0xfe01

    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 2
    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>([BI)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ll;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ll;->c:I

    return-void
.end method

.method private final a(I)I
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ll;->d:I

    :cond_0
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ll;->d:I

    add-int v2, p1, v1

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ll;->a:Lcom/google/ads/interactivemedia/v3/internal/lm;

    iget v4, v3, Lcom/google/ads/interactivemedia/v3/internal/lm;->d:I

    if-ge v2, v4, :cond_1

    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/internal/lm;->g:[I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ll;->d:I

    .line 3
    aget v1, v3, v2

    add-int/2addr v0, v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    :cond_1
    return v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ll;->a:Lcom/google/ads/interactivemedia/v3/internal/lm;

    .line 15
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/lm;->a()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ll;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ll;->c:I

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ll;->e:Z

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ie;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 4
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ll;->e:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ll;->e:Z

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ll;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a(I)V

    .line 4
    :goto_0
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ll;->e:Z

    if-nez v1, :cond_9

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ll;->c:I

    if-gez v1, :cond_4

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ll;->a:Lcom/google/ads/interactivemedia/v3/internal/lm;

    .line 6
    invoke-virtual {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/lm;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ll;->a:Lcom/google/ads/interactivemedia/v3/internal/lm;

    invoke-virtual {v1, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/lm;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;Z)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ll;->a:Lcom/google/ads/interactivemedia/v3/internal/lm;

    iget v3, v1, Lcom/google/ads/interactivemedia/v3/internal/lm;->e:I

    iget v1, v1, Lcom/google/ads/interactivemedia/v3/internal/lm;->b:I

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ll;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result v1

    if-nez v1, :cond_2

    .line 7
    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/ll;->a(I)I

    move-result v1

    add-int/2addr v3, v1

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ll;->d:I

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 8
    :goto_1
    invoke-virtual {p1, v3}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a(I)V

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ll;->c:I

    goto :goto_3

    :cond_3
    :goto_2
    return v2

    .line 9
    :cond_4
    :goto_3
    invoke-direct {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ll;->a(I)I

    move-result v1

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ll;->c:I

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ll;->d:I

    add-int/2addr v3, v4

    if-lez v1, :cond_7

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ll;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 10
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/abr;->e()I

    move-result v4

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/ll;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result v5

    add-int/2addr v5, v1

    if-ge v4, v5, :cond_5

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ll;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v5

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/ll;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result v6

    add-int/2addr v6, v1

    .line 11
    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a([B)V

    :cond_5
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ll;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v4

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/ll;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result v5

    .line 12
    invoke-virtual {p1, v4, v5, v1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b([BII)V

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ll;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result v5

    add-int/2addr v5, v1

    .line 13
    invoke-virtual {v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b(I)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ll;->a:Lcom/google/ads/interactivemedia/v3/internal/lm;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/lm;->g:[I

    add-int/lit8 v4, v3, -0x1

    .line 14
    aget v1, v1, v4

    const/16 v4, 0xff

    if-eq v1, v4, :cond_6

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :goto_4
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ll;->e:Z

    :cond_7
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ll;->a:Lcom/google/ads/interactivemedia/v3/internal/lm;

    iget v1, v1, Lcom/google/ads/interactivemedia/v3/internal/lm;->d:I

    if-ne v3, v1, :cond_8

    const/4 v3, -0x1

    :cond_8
    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ll;->c:I

    goto/16 :goto_0

    :cond_9
    return v0
.end method

.method public final b()Lcom/google/ads/interactivemedia/v3/internal/lm;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ll;->a:Lcom/google/ads/interactivemedia/v3/internal/lm;

    return-object v0
.end method

.method public final c()Lcom/google/ads/interactivemedia/v3/internal/abr;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ll;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    return-object v0
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ll;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v0

    .line 17
    array-length v0, v0

    const v1, 0xfe01

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ll;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v2

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ll;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result v3

    .line 18
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 19
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a([B)V

    return-void
.end method
