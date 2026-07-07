.class final Lcom/google/ads/interactivemedia/v3/internal/co;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/dq;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:J

.field private final d:Lcom/google/ads/interactivemedia/v3/internal/sw;


# direct methods
.method synthetic constructor <init>(Ljava/util/List;Lcom/google/ads/interactivemedia/v3/internal/sw;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/co;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/co;->d:Lcom/google/ads/interactivemedia/v3/internal/sw;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/co;->b:I

    iput-wide p4, p0, Lcom/google/ads/interactivemedia/v3/internal/co;->c:J

    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/co;)I
    .locals 0

    iget p0, p0, Lcom/google/ads/interactivemedia/v3/internal/co;->b:I

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/internal/co;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/co;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/google/ads/interactivemedia/v3/internal/co;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/co;->c:J

    return-wide v0
.end method

.method static synthetic d(Lcom/google/ads/interactivemedia/v3/internal/co;)Lcom/google/ads/interactivemedia/v3/internal/sw;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/co;->d:Lcom/google/ads/interactivemedia/v3/internal/sw;

    return-object p0
.end method
