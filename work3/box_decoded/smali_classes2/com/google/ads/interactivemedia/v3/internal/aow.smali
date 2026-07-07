.class final Lcom/google/ads/interactivemedia/v3/internal/aow;
.super Ljava/lang/Object;
.source "IMASDK"


# static fields
.field static final a:Lcom/google/ads/interactivemedia/v3/internal/apo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/apo<",
            "Lcom/google/ads/interactivemedia/v3/internal/aox;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Lcom/google/ads/interactivemedia/v3/internal/apo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/apo<",
            "Lcom/google/ads/interactivemedia/v3/internal/aox;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/google/ads/interactivemedia/v3/internal/aox;

    const-string v1, "map"

    .line 1
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/apo;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/aow;->a:Lcom/google/ads/interactivemedia/v3/internal/apo;

    const-class v0, Lcom/google/ads/interactivemedia/v3/internal/aox;

    const-string v1, "size"

    .line 2
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/apo;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/aow;->b:Lcom/google/ads/interactivemedia/v3/internal/apo;

    return-void
.end method
