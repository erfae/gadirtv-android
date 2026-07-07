.class final Lcom/google/ads/interactivemedia/v3/internal/dq;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/dm;


# instance fields
.field public final a:Lcom/google/ads/interactivemedia/v3/internal/rk;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/ro;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public e:Z


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/rq;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/rk;

    .line 1
    invoke-direct {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/rk;-><init>(Lcom/google/ads/interactivemedia/v3/internal/rq;Z)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dq;->a:Lcom/google/ads/interactivemedia/v3/internal/rk;

    new-instance p1, Ljava/util/ArrayList;

    .line 2
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dq;->c:Ljava/util/List;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dq;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dq;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dq;->d:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dq;->e:Z

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dq;->c:Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final b()Lcom/google/ads/interactivemedia/v3/internal/er;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dq;->a:Lcom/google/ads/interactivemedia/v3/internal/rk;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/rk;->i()Lcom/google/ads/interactivemedia/v3/internal/er;

    move-result-object v0

    return-object v0
.end method
