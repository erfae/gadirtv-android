.class final Lcom/google/ads/interactivemedia/v3/internal/li;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/ln;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/io;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/in;

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/io;Lcom/google/ads/interactivemedia/v3/internal/in;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/li;->a:Lcom/google/ads/interactivemedia/v3/internal/io;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/li;->b:Lcom/google/ads/interactivemedia/v3/internal/in;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/li;->c:J

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/li;->d:J

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ie;)J
    .locals 6

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/li;->d:J

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-ltz p1, :cond_0

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/li;->d:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    neg-long v0, v0

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method public final a()Lcom/google/ads/interactivemedia/v3/internal/iu;
    .locals 5

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/li;->c:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/im;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/li;->a:Lcom/google/ads/interactivemedia/v3/internal/io;

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/li;->c:J

    .line 2
    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/im;-><init>(Lcom/google/ads/interactivemedia/v3/internal/io;J)V

    return-object v0
.end method

.method public final a(J)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/li;->b:Lcom/google/ads/interactivemedia/v3/internal/in;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/in;->a:[J

    const/4 v1, 0x1

    .line 3
    invoke-static {v0, p1, p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/ach;->b([JJZ)I

    move-result p1

    .line 4
    aget-wide p1, v0, p1

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/li;->d:J

    return-void
.end method

.method public final b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/li;->c:J

    return-void
.end method
