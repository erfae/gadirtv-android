.class final Lcom/google/ads/interactivemedia/v3/internal/aet;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/afq;


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/internal/adt;

.field final synthetic b:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/adt;Ljava/lang/reflect/Type;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aet;->a:Lcom/google/ads/interactivemedia/v3/internal/adt;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/aet;->b:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aet;->a:Lcom/google/ads/interactivemedia/v3/internal/adt;

    .line 1
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/adt;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
