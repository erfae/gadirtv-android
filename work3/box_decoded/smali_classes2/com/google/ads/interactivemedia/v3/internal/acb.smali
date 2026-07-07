.class public final Lcom/google/ads/interactivemedia/v3/internal/acb;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/abj;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/abb;

.field private b:Z

.field private c:J

.field private d:J

.field private e:F

.field private f:I


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/abb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acb;->a:Lcom/google/ads/interactivemedia/v3/internal/abb;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acb;->e:F

    .line 1
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/acb;->b(F)I

    move-result p1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acb;->f:I

    return-void
.end method

.method private static b(F)I
    .locals 1

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float p0, p0, v0

    .line 4
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acb;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acb;->a:Lcom/google/ads/interactivemedia/v3/internal/abb;

    .line 8
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/abb;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acb;->d:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acb;->b:Z

    :cond_0
    return-void
.end method

.method public final a(F)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acb;->b:Z

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/acb;->ad()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/acb;->a(J)V

    :cond_0
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acb;->e:F

    .line 7
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/acb;->b(F)I

    move-result p1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acb;->f:I

    return-void
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acb;->c:J

    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acb;->b:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acb;->a:Lcom/google/ads/interactivemedia/v3/internal/abb;

    .line 5
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/abb;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/acb;->d:J

    :cond_0
    return-void
.end method

.method public final ad()J
    .locals 6

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acb;->c:J

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/acb;->b:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/acb;->a:Lcom/google/ads/interactivemedia/v3/internal/abb;

    .line 2
    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/internal/abb;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/acb;->d:J

    sub-long/2addr v2, v4

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/acb;->e:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 3
    invoke-static {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/bk;->b(J)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/acb;->f:I

    int-to-long v4, v4

    mul-long v2, v2, v4

    :goto_0
    add-long/2addr v0, v2

    :cond_1
    return-wide v0
.end method

.method public final b()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acb;->b:Z

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/acb;->ad()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/acb;->a(J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acb;->b:Z

    :cond_0
    return-void
.end method

.method public final d()F
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/acb;->e:F

    return v0
.end method
