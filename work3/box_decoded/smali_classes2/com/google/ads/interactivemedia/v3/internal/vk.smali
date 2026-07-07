.class public final Lcom/google/ads/interactivemedia/v3/internal/vk;
.super Lcom/google/ads/interactivemedia/v3/internal/vl;
.source "IMASDK"


# instance fields
.field private final e:Lcom/google/ads/interactivemedia/v3/internal/vi;

.field private final f:Lcom/google/ads/interactivemedia/v3/internal/vs;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/cz;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/vq;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/cz;",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/internal/vq;",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/ve;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/vl;-><init>(Lcom/google/ads/interactivemedia/v3/internal/cz;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/vr;Ljava/util/List;)V

    .line 2
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    iget-wide v4, p3, Lcom/google/ads/interactivemedia/v3/internal/vq;->b:J

    const/4 p1, 0x0

    const-wide/16 v0, 0x0

    cmp-long p2, v4, v0

    if-gtz p2, :cond_0

    move-object p2, p1

    goto :goto_0

    .line 4
    :cond_0
    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/vi;

    const/4 v1, 0x0

    iget-wide v2, p3, Lcom/google/ads/interactivemedia/v3/internal/vq;->a:J

    move-object v0, p2

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/vi;-><init>(Ljava/lang/String;JJ)V

    .line 2
    :goto_0
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/vk;->e:Lcom/google/ads/interactivemedia/v3/internal/vi;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/vs;

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/vi;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    move-object v0, p2

    .line 4
    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/vi;-><init>(Ljava/lang/String;JJ)V

    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/vs;-><init>(Lcom/google/ads/interactivemedia/v3/internal/vi;)V

    .line 2
    :goto_1
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/vk;->f:Lcom/google/ads/interactivemedia/v3/internal/vs;

    return-void
.end method


# virtual methods
.method public final c()Lcom/google/ads/interactivemedia/v3/internal/vi;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/vk;->e:Lcom/google/ads/interactivemedia/v3/internal/vi;

    return-object v0
.end method

.method public final d()Lcom/google/ads/interactivemedia/v3/internal/up;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/vk;->f:Lcom/google/ads/interactivemedia/v3/internal/vs;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
