.class public abstract Lcom/google/ads/interactivemedia/v3/internal/ts;
.super Lcom/google/ads/interactivemedia/v3/internal/tl;
.source "IMASDK"


# instance fields
.field private a:[B

.field private volatile b:Z


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zo;Lcom/google/ads/interactivemedia/v3/internal/zs;Lcom/google/ads/interactivemedia/v3/internal/cz;ILjava/lang/Object;[B)V
    .locals 11

    const/4 v3, 0x3

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    .line 1
    invoke-direct/range {v0 .. v10}, Lcom/google/ads/interactivemedia/v3/internal/tl;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zo;Lcom/google/ads/interactivemedia/v3/internal/zs;ILcom/google/ads/interactivemedia/v3/internal/cz;ILjava/lang/Object;JJ)V

    if-nez p6, :cond_0

    .line 2
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->f:[B

    move-object v1, p0

    goto :goto_0

    :cond_0
    move-object v1, p0

    move-object/from16 v0, p6

    :goto_0
    iput-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/ts;->a:[B

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ts;->b:Z

    return-void
.end method

.method protected abstract a([BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final b()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ts;->k:Lcom/google/ads/interactivemedia/v3/internal/aax;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ts;->d:Lcom/google/ads/interactivemedia/v3/internal/zs;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aax;->a(Lcom/google/ads/interactivemedia/v3/internal/zs;)J

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ts;->b:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ts;->a:[B

    .line 4
    array-length v3, v0

    add-int/lit16 v4, v1, 0x4000

    if-ge v3, v4, :cond_1

    add-int/lit16 v3, v3, 0x4000

    .line 5
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ts;->a:[B

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ts;->k:Lcom/google/ads/interactivemedia/v3/internal/aax;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ts;->a:[B

    const/16 v4, 0x4000

    .line 6
    invoke-virtual {v0, v3, v1, v4}, Lcom/google/ads/interactivemedia/v3/internal/aax;->a([BII)I

    move-result v0

    if-eq v0, v2, :cond_0

    add-int/2addr v1, v0

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ts;->b:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ts;->a:[B

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ts;->a([BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ts;->k:Lcom/google/ads/interactivemedia/v3/internal/aax;

    .line 8
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Lcom/google/ads/interactivemedia/v3/internal/zo;)V

    return-void

    :catchall_0
    move-exception v0

    .line 7
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ts;->k:Lcom/google/ads/interactivemedia/v3/internal/aax;

    .line 8
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Lcom/google/ads/interactivemedia/v3/internal/zo;)V

    .line 9
    throw v0
.end method

.method public final c()[B
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ts;->a:[B

    return-object v0
.end method
