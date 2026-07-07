.class public final Lcom/google/ads/interactivemedia/v3/internal/iq;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/abr;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/16 v1, 0xa

    .line 1
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/iq;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ie;Lcom/google/ads/interactivemedia/v3/internal/ps;)Lcom/google/ads/interactivemedia/v3/internal/ot;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/iq;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v3

    const/16 v4, 0xa

    .line 2
    invoke-virtual {p1, v3, v0, v4}, Lcom/google/ads/interactivemedia/v3/internal/ie;->d([BII)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/iq;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 3
    invoke-virtual {v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/iq;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 4
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->j()I

    move-result v3

    const v5, 0x494433

    if-eq v3, v5, :cond_0

    goto :goto_2

    .line 12
    :cond_0
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/iq;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/4 v5, 0x3

    .line 5
    invoke-virtual {v3, v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d(I)V

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/iq;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 6
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->s()I

    move-result v3

    add-int/lit8 v5, v3, 0xa

    if-nez v1, :cond_1

    new-array v1, v5, [B

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/iq;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v6

    .line 7
    invoke-static {v6, v0, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    invoke-virtual {p1, v1, v4, v3}, Lcom/google/ads/interactivemedia/v3/internal/ie;->d([BII)V

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/pu;

    .line 9
    invoke-direct {v3, p2}, Lcom/google/ads/interactivemedia/v3/internal/pu;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ps;)V

    invoke-virtual {v3, v1, v5}, Lcom/google/ads/interactivemedia/v3/internal/pu;->a([BI)Lcom/google/ads/interactivemedia/v3/internal/ot;

    move-result-object v1

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p1, v3}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b(I)V

    :goto_1
    add-int/2addr v2, v5

    goto :goto_0

    .line 11
    :catch_0
    :goto_2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a()V

    .line 12
    invoke-virtual {p1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b(I)V

    return-object v1
.end method
