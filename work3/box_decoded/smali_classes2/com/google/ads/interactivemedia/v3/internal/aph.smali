.class final Lcom/google/ads/interactivemedia/v3/internal/aph;
.super Lcom/google/ads/interactivemedia/v3/internal/aoz;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/ads/interactivemedia/v3/internal/aoz<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private final transient a:Lcom/google/ads/interactivemedia/v3/internal/aou;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/aou<",
            "TK;*>;"
        }
    .end annotation
.end field

.field private final transient b:Lcom/google/ads/interactivemedia/v3/internal/aop;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/aop<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/aou;Lcom/google/ads/interactivemedia/v3/internal/aop;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/aou<",
            "TK;*>;",
            "Lcom/google/ads/interactivemedia/v3/internal/aop<",
            "TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/aoz;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aph;->a:Lcom/google/ads/interactivemedia/v3/internal/aou;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/aph;->b:Lcom/google/ads/interactivemedia/v3/internal/aop;

    return-void
.end method


# virtual methods
.method final a([Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aph;->b:Lcom/google/ads/interactivemedia/v3/internal/aop;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/aol;->a([Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final a()Lcom/google/ads/interactivemedia/v3/internal/apr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/ads/interactivemedia/v3/internal/apr<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aph;->b:Lcom/google/ads/interactivemedia/v3/internal/aop;

    .line 4
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/aop;->h()Lcom/google/ads/interactivemedia/v3/internal/aps;

    move-result-object v0

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aph;->a:Lcom/google/ads/interactivemedia/v3/internal/aou;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/aou;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final e()Lcom/google/ads/interactivemedia/v3/internal/aop;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/ads/interactivemedia/v3/internal/aop<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aph;->b:Lcom/google/ads/interactivemedia/v3/internal/aop;

    return-object v0
.end method

.method final f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aph;->a()Lcom/google/ads/interactivemedia/v3/internal/apr;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aph;->a:Lcom/google/ads/interactivemedia/v3/internal/aou;

    .line 5
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/aou;->size()I

    move-result v0

    return v0
.end method
