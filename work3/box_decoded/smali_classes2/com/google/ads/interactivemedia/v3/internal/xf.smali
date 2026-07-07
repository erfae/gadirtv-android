.class public final Lcom/google/ads/interactivemedia/v3/internal/xf;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/xo;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/xo;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/qj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/xo;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/xo;",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/qj;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xf;->a:Lcom/google/ads/interactivemedia/v3/internal/xo;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/xf;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/ads/interactivemedia/v3/internal/aat;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/ads/interactivemedia/v3/internal/aat<",
            "Lcom/google/ads/interactivemedia/v3/internal/xl;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/qh;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/xf;->a:Lcom/google/ads/interactivemedia/v3/internal/xo;

    .line 1
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/internal/xo;->a()Lcom/google/ads/interactivemedia/v3/internal/aat;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/xf;->b:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/qh;-><init>(Lcom/google/ads/interactivemedia/v3/internal/aat;Ljava/util/List;)V

    return-object v0
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/xi;)Lcom/google/ads/interactivemedia/v3/internal/aat;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/xi;",
            ")",
            "Lcom/google/ads/interactivemedia/v3/internal/aat<",
            "Lcom/google/ads/interactivemedia/v3/internal/xl;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/qh;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/xf;->a:Lcom/google/ads/interactivemedia/v3/internal/xo;

    .line 2
    invoke-interface {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/xo;->a(Lcom/google/ads/interactivemedia/v3/internal/xi;)Lcom/google/ads/interactivemedia/v3/internal/aat;

    move-result-object p1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/xf;->b:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/qh;-><init>(Lcom/google/ads/interactivemedia/v3/internal/aat;Ljava/util/List;)V

    return-object v0
.end method
