.class public final Lcom/google/ads/interactivemedia/v3/internal/vn;
.super Lcom/google/ads/interactivemedia/v3/internal/vm;
.source "IMASDK"


# instance fields
.field final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/vi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/vi;JJJJLjava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/vi;",
            "JJJJ",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/vp;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/vi;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p10}, Lcom/google/ads/interactivemedia/v3/internal/vm;-><init>(Lcom/google/ads/interactivemedia/v3/internal/vi;JJJJLjava/util/List;)V

    iput-object p11, p0, Lcom/google/ads/interactivemedia/v3/internal/vn;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/internal/vl;J)Lcom/google/ads/interactivemedia/v3/internal/vi;
    .locals 2

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/vn;->d:Ljava/util/List;

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/vn;->a:J

    sub-long/2addr p2, v0

    long-to-int p3, p2

    .line 3
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/vi;

    return-object p1
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b(J)I
    .locals 0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/vn;->d:Ljava/util/List;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method
