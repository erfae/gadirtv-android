.class final Lcom/google/ads/interactivemedia/v3/internal/aht;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/aeh;


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/internal/aim;

.field final synthetic b:Lcom/google/ads/interactivemedia/v3/internal/aeg;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/aim;Lcom/google/ads/interactivemedia/v3/internal/aeg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aht;->a:Lcom/google/ads/interactivemedia/v3/internal/aim;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/aht;->b:Lcom/google/ads/interactivemedia/v3/internal/aeg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/internal/adr;Lcom/google/ads/interactivemedia/v3/internal/aim;)Lcom/google/ads/interactivemedia/v3/internal/aeg;
    .locals 0
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

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aht;->a:Lcom/google/ads/interactivemedia/v3/internal/aim;

    .line 1
    invoke-virtual {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/aim;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aht;->b:Lcom/google/ads/interactivemedia/v3/internal/aeg;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
