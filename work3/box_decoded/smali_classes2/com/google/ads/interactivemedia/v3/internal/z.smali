.class public final Lcom/google/ads/interactivemedia/v3/internal/z;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/ab;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/aa;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ab;

    .line 1
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/ab;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/z;->a:Lcom/google/ads/interactivemedia/v3/internal/ab;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/aa;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/aa;-><init>(Lcom/google/ads/interactivemedia/v3/internal/y;)V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/z;->b:Lcom/google/ads/interactivemedia/v3/internal/aa;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/ads/interactivemedia/v3/internal/y;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/z;->b:Lcom/google/ads/interactivemedia/v3/internal/aa;

    return-object v0
.end method

.method public final b()Lcom/google/ads/interactivemedia/v3/internal/y;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/z;->a:Lcom/google/ads/interactivemedia/v3/internal/ab;

    return-object v0
.end method
