.class public abstract Lcom/google/ads/interactivemedia/v3/impl/data/bh;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation runtime Lcom/google/ads/interactivemedia/v3/internal/amz;
    a = Lcom/google/ads/interactivemedia/v3/impl/data/ac;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/ads/interactivemedia/v3/impl/data/be;
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/ab;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/ab;-><init>()V

    return-object v0
.end method


# virtual methods
.method abstract obstructions()Lcom/google/ads/interactivemedia/v3/internal/aop;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/ads/interactivemedia/v3/internal/aop<",
            "Lcom/google/ads/interactivemedia/v3/impl/data/bg;",
            ">;"
        }
    .end annotation
.end method
