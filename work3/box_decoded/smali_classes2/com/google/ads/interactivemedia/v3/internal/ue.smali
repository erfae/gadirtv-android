.class final Lcom/google/ads/interactivemedia/v3/internal/ue;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/abx;


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/internal/uo;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/uo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ue;->a:Lcom/google/ads/interactivemedia/v3/internal/uo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ue;->a:Lcom/google/ads/interactivemedia/v3/internal/uo;

    .line 2
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/aca;->b()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/uo;->a(Lcom/google/ads/interactivemedia/v3/internal/uo;J)V

    return-void
.end method

.method public final a(Ljava/io/IOException;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ue;->a:Lcom/google/ads/interactivemedia/v3/internal/uo;

    .line 1
    invoke-static {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/uo;->a(Lcom/google/ads/interactivemedia/v3/internal/uo;Ljava/io/IOException;)V

    return-void
.end method
