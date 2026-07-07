.class final Lcom/google/ads/interactivemedia/v3/internal/so;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field public final a:J

.field public final b:J

.field public c:Z

.field public d:Lcom/google/ads/interactivemedia/v3/internal/za;

.field public e:Lcom/google/ads/interactivemedia/v3/internal/so;


# direct methods
.method public constructor <init>(JI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/so;->a:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/so;->b:J

    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 3

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/so;->a:J

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/so;->d:Lcom/google/ads/interactivemedia/v3/internal/za;

    .line 1
    iget v2, v2, Lcom/google/ads/interactivemedia/v3/internal/za;->b:I

    sub-long/2addr p1, v0

    long-to-int p2, p1

    return p2
.end method

.method public final a()Lcom/google/ads/interactivemedia/v3/internal/so;
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/so;->d:Lcom/google/ads/interactivemedia/v3/internal/za;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/so;->e:Lcom/google/ads/interactivemedia/v3/internal/so;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/so;->e:Lcom/google/ads/interactivemedia/v3/internal/so;

    return-object v1
.end method
