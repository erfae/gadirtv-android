.class public final Lcom/google/ads/interactivemedia/v3/internal/dd;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field public final a:J

.field public final b:J

.field public final c:Z

.field public final d:Z

.field public final e:Z


# direct methods
.method synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dd;->a:J

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dd;->b:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dd;->c:Z

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dd;->d:Z

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dd;->e:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/ads/interactivemedia/v3/internal/dd;

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/dd;

    .line 3
    iget-wide v1, p1, Lcom/google/ads/interactivemedia/v3/internal/dd;->a:J

    iget-wide v1, p1, Lcom/google/ads/interactivemedia/v3/internal/dd;->b:J

    iget-boolean v1, p1, Lcom/google/ads/interactivemedia/v3/internal/dd;->c:Z

    iget-boolean v1, p1, Lcom/google/ads/interactivemedia/v3/internal/dd;->d:Z

    iget-boolean p1, p1, Lcom/google/ads/interactivemedia/v3/internal/dd;->e:Z

    return v0
.end method

.method public final hashCode()I
    .locals 3

    const-wide/16 v0, 0x0

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    const-wide/high16 v1, -0x8000000000000000L

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x745f

    return v0
.end method
