.class final Lcom/google/ads/interactivemedia/v3/internal/hp;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/hq;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/internal/cz;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/cz;",
            ")",
            "Ljava/lang/Class<",
            "Lcom/google/ads/interactivemedia/v3/internal/hu;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->o:Lcom/google/ads/interactivemedia/v3/internal/hk;

    if-eqz p1, :cond_0

    const-class p1, Lcom/google/ads/interactivemedia/v3/internal/hu;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a()V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()Lcom/google/ads/interactivemedia/v3/internal/hr;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()Lcom/google/ads/interactivemedia/v3/internal/hr;
    .locals 3

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/hr;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/hl;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/ht;

    .line 1
    invoke-direct {v2}, Lcom/google/ads/interactivemedia/v3/internal/ht;-><init>()V

    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/hl;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/hr;-><init>(Lcom/google/ads/interactivemedia/v3/internal/hl;)V

    return-object v0
.end method
