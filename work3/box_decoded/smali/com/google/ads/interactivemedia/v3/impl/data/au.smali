.class public abstract Lcom/google/ads/interactivemedia/v3/impl/data/au;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation runtime Lcom/google/ads/interactivemedia/v3/internal/amz;
    a = Lcom/google/ads/interactivemedia/v3/impl/data/t;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(IZ)Lcom/google/ads/interactivemedia/v3/impl/data/au;
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/t;

    .line 1
    invoke-direct {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/data/t;-><init>(IZ)V

    return-object v0
.end method


# virtual methods
.method public abstract experimentId()I
.end method

.method public abstract shouldReport()Z
.end method
