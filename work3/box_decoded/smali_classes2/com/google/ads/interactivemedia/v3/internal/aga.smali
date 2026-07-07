.class public final Lcom/google/ads/interactivemedia/v3/internal/aga;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/aeh;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/afc;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/afc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aga;->a:Lcom/google/ads/interactivemedia/v3/internal/afc;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/internal/adr;Lcom/google/ads/interactivemedia/v3/internal/aim;)Lcom/google/ads/interactivemedia/v3/internal/aeg;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/ads/interactivemedia/v3/internal/adr;",
            "Lcom/google/ads/interactivemedia/v3/internal/aim<",
            "TT;>;)",
            "Lcom/google/ads/interactivemedia/v3/internal/aeg<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/aim;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/aim;->a()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/Collection;

    .line 3
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aen;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/aim;->a(Ljava/lang/reflect/Type;)Lcom/google/ads/interactivemedia/v3/internal/aim;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/adr;->a(Lcom/google/ads/interactivemedia/v3/internal/aim;)Lcom/google/ads/interactivemedia/v3/internal/aeg;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aga;->a:Lcom/google/ads/interactivemedia/v3/internal/afc;

    .line 6
    invoke-virtual {v2, p2}, Lcom/google/ads/interactivemedia/v3/internal/afc;->a(Lcom/google/ads/interactivemedia/v3/internal/aim;)Lcom/google/ads/interactivemedia/v3/internal/afq;

    move-result-object p2

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/afz;

    .line 7
    invoke-direct {v2, p1, v0, v1, p2}, Lcom/google/ads/interactivemedia/v3/internal/afz;-><init>(Lcom/google/ads/interactivemedia/v3/internal/adr;Ljava/lang/reflect/Type;Lcom/google/ads/interactivemedia/v3/internal/aeg;Lcom/google/ads/interactivemedia/v3/internal/afq;)V

    return-object v2
.end method
