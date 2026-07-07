.class public abstract Lcom/google/ads/interactivemedia/v3/internal/ou;
.super Ljava/lang/Object;
.source "IMASDK"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/internal/he;)Lcom/google/ads/interactivemedia/v3/internal/ot;
    .locals 3

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/he;->b:Ljava/nio/ByteBuffer;

    .line 1
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v2, 0x1

    .line 3
    :cond_0
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Z)V

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/gz;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ou;->a(Ljava/nio/ByteBuffer;)Lcom/google/ads/interactivemedia/v3/internal/ot;

    move-result-object p1

    return-object p1
.end method

.method protected abstract a(Ljava/nio/ByteBuffer;)Lcom/google/ads/interactivemedia/v3/internal/ot;
.end method
