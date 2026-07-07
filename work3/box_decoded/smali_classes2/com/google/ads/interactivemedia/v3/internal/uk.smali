.class final Lcom/google/ads/interactivemedia/v3/internal/uk;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/aas;


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/internal/uo;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/uo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uk;->a:Lcom/google/ads/interactivemedia/v3/internal/uo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uk;->a:Lcom/google/ads/interactivemedia/v3/internal/uo;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/uo;->a(Lcom/google/ads/interactivemedia/v3/internal/uo;)Lcom/google/ads/interactivemedia/v3/internal/aar;

    move-result-object v0

    .line 1
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/aar;->a()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uk;->a:Lcom/google/ads/interactivemedia/v3/internal/uo;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/uo;->b(Lcom/google/ads/interactivemedia/v3/internal/uo;)Ljava/io/IOException;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uk;->a:Lcom/google/ads/interactivemedia/v3/internal/uo;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/uo;->b(Lcom/google/ads/interactivemedia/v3/internal/uo;)Ljava/io/IOException;

    move-result-object v0

    .line 2
    throw v0
.end method
