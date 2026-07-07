.class public abstract Lcom/google/ads/interactivemedia/v3/impl/data/bo;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation runtime Lcom/google/ads/interactivemedia/v3/internal/amz;
    a = Lcom/google/ads/interactivemedia/v3/impl/data/ao;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/ads/interactivemedia/v3/impl/data/bn;
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/an;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/an;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract volume()F
.end method
