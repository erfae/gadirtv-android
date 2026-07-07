.class final Lcom/google/ads/interactivemedia/v3/internal/afl;
.super Lcom/google/ads/interactivemedia/v3/internal/afn;
.source "IMASDK"


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/afm;)V
    .locals 0

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/afm;->a:Lcom/google/ads/interactivemedia/v3/internal/afp;

    .line 1
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/afn;-><init>(Lcom/google/ads/interactivemedia/v3/internal/afp;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/afn;->a()Lcom/google/ads/interactivemedia/v3/internal/afo;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/afo;->f:Ljava/lang/Object;

    return-object v0
.end method
