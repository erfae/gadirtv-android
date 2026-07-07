.class final Lcom/google/ads/interactivemedia/v3/internal/xx;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/zh;

.field private final b:F

.field private final c:J

.field private d:[[J


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zh;FJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xx;->a:Lcom/google/ads/interactivemedia/v3/internal/zh;

    const p1, 0x3f333333    # 0.7f

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xx;->b:F

    iput-wide p3, p0, Lcom/google/ads/interactivemedia/v3/internal/xx;->c:J

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 11

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xx;->a:Lcom/google/ads/interactivemedia/v3/internal/zh;

    .line 2
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/zh;->a()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x3f333333    # 0.7f

    mul-float v0, v0, v1

    float-to-long v0, v0

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/xx;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    .line 3
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/xx;->d:[[J

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_0
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/xx;->d:[[J

    .line 4
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    if-ge v3, v5, :cond_0

    aget-object v5, v4, v3

    aget-wide v7, v5, v6

    cmp-long v5, v7, v0

    if-gez v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v5, v3, -0x1

    .line 5
    aget-object v5, v4, v5

    .line 6
    aget-object v3, v4, v3

    .line 7
    aget-wide v7, v5, v6

    aget-wide v9, v3, v6

    .line 8
    aget-wide v4, v5, v2

    sub-long/2addr v0, v7

    long-to-float v0, v0

    sub-long/2addr v9, v7

    long-to-float v1, v9

    div-float/2addr v0, v1

    aget-wide v1, v3, v2

    sub-long/2addr v1, v4

    long-to-float v1, v1

    mul-float v0, v0, v1

    float-to-long v0, v0

    add-long/2addr v4, v0

    return-wide v4

    :cond_1
    return-wide v0
.end method

.method final a([[J)V
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Z)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xx;->d:[[J

    return-void
.end method
