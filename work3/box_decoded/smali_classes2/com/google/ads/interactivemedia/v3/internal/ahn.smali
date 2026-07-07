.class final Lcom/google/ads/interactivemedia/v3/internal/ahn;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/aeh;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/internal/adr;Lcom/google/ads/interactivemedia/v3/internal/aim;)Lcom/google/ads/interactivemedia/v3/internal/aeg;
    .locals 1
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
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/aim;->a()Ljava/lang/Class;

    move-result-object p2

    const-class v0, Ljava/sql/Timestamp;

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-class p2, Ljava/util/Date;

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/adr;->a(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/internal/aeg;

    move-result-object p1

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/ahm;

    .line 3
    invoke-direct {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/ahm;-><init>(Lcom/google/ads/interactivemedia/v3/internal/aeg;)V

    return-object p2
.end method
