.class final Lcom/google/ads/interactivemedia/v3/internal/ws;
.super Lcom/google/ads/interactivemedia/v3/internal/ss;
.source "IMASDK"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/internal/hk;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/google/ads/interactivemedia/v3/internal/hk;


# direct methods
.method synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zt;Landroid/os/Looper;Lcom/google/ads/interactivemedia/v3/internal/hq;Lcom/google/ads/interactivemedia/v3/internal/hn;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/ss;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zt;Landroid/os/Looper;Lcom/google/ads/interactivemedia/v3/internal/hq;Lcom/google/ads/interactivemedia/v3/internal/hn;)V

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/ws;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/internal/hk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ws;->b:Lcom/google/ads/interactivemedia/v3/internal/hk;

    .line 15
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/ss;->p()V

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/wh;)V
    .locals 0

    iget p1, p1, Lcom/google/ads/interactivemedia/v3/internal/wh;->a:I

    .line 16
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ss;->a(I)V

    return-void
.end method

.method public final b(Lcom/google/ads/interactivemedia/v3/internal/cz;)Lcom/google/ads/interactivemedia/v3/internal/cz;
    .locals 9

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ws;->b:Lcom/google/ads/interactivemedia/v3/internal/hk;

    if-nez v0, :cond_0

    .line 1
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->o:Lcom/google/ads/interactivemedia/v3/internal/hk;

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ws;->a:Ljava/util/Map;

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/hk;->a:Ljava/lang/String;

    .line 2
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/hk;

    if-eqz v1, :cond_1

    move-object v0, v1

    .line 3
    :cond_1
    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->j:Lcom/google/ads/interactivemedia/v3/internal/ot;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    :goto_0
    move-object v1, v2

    goto :goto_4

    .line 4
    :cond_2
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/ot;->a()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    const/4 v6, -0x1

    if-ge v5, v3, :cond_4

    .line 5
    invoke-virtual {v1, v5}, Lcom/google/ads/interactivemedia/v3/internal/ot;->a(I)Lcom/google/ads/interactivemedia/v3/internal/os;

    move-result-object v7

    .line 6
    instance-of v8, v7, Lcom/google/ads/interactivemedia/v3/internal/qb;

    if-eqz v8, :cond_3

    .line 7
    check-cast v7, Lcom/google/ads/interactivemedia/v3/internal/qb;

    .line 8
    iget-object v7, v7, Lcom/google/ads/interactivemedia/v3/internal/qb;->a:Ljava/lang/String;

    const-string v8, "com.apple.streaming.transportStreamTimestamp"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    const/4 v5, -0x1

    :cond_5
    if-ne v5, v6, :cond_6

    goto :goto_4

    :cond_6
    const/4 v6, 0x1

    if-ne v3, v6, :cond_7

    goto :goto_0

    :cond_7
    add-int/lit8 v2, v3, -0x1

    .line 9
    new-array v2, v2, [Lcom/google/ads/interactivemedia/v3/internal/os;

    :goto_2
    if-ge v4, v3, :cond_a

    if-eq v4, v5, :cond_9

    if-ge v4, v5, :cond_8

    move v6, v4

    goto :goto_3

    :cond_8
    add-int/lit8 v6, v4, -0x1

    .line 10
    :goto_3
    invoke-virtual {v1, v4}, Lcom/google/ads/interactivemedia/v3/internal/ot;->a(I)Lcom/google/ads/interactivemedia/v3/internal/os;

    move-result-object v7

    aput-object v7, v2, v6

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_a
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/ot;

    .line 11
    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ot;-><init>([Lcom/google/ads/interactivemedia/v3/internal/os;)V

    .line 12
    :goto_4
    iget-object v2, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->o:Lcom/google/ads/interactivemedia/v3/internal/hk;

    if-ne v0, v2, :cond_b

    iget-object v2, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->j:Lcom/google/ads/interactivemedia/v3/internal/ot;

    if-eq v1, v2, :cond_c

    .line 13
    :cond_b
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/cz;->a()Lcom/google/ads/interactivemedia/v3/internal/cy;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a(Lcom/google/ads/interactivemedia/v3/internal/hk;)V

    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a(Lcom/google/ads/interactivemedia/v3/internal/ot;)V

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object p1

    .line 14
    :cond_c
    invoke-super {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ss;->b(Lcom/google/ads/interactivemedia/v3/internal/cz;)Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object p1

    return-object p1
.end method
