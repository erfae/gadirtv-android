.class public final Lcom/google/ads/interactivemedia/v3/internal/ajc;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdProgressInfo;


# instance fields
.field private final a:D

.field private final b:D

.field private final c:I

.field private final d:I

.field private final e:D

.field private final f:D


# direct methods
.method constructor <init>(DDIIDD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajc;->a:D

    iput-wide p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ajc;->b:D

    iput p5, p0, Lcom/google/ads/interactivemedia/v3/internal/ajc;->c:I

    iput p6, p0, Lcom/google/ads/interactivemedia/v3/internal/ajc;->d:I

    iput-wide p7, p0, Lcom/google/ads/interactivemedia/v3/internal/ajc;->e:D

    iput-wide p9, p0, Lcom/google/ads/interactivemedia/v3/internal/ajc;->f:D

    return-void
.end method


# virtual methods
.method public final getAdBreakDuration()D
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajc;->e:D

    return-wide v0
.end method

.method public final getAdPeriodDuration()D
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajc;->f:D

    return-wide v0
.end method

.method public final getAdPosition()I
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajc;->c:I

    return v0
.end method

.method public final getCurrentTime()D
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajc;->a:D

    return-wide v0
.end method

.method public final getDuration()D
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajc;->b:D

    return-wide v0
.end method

.method public final getTotalAds()I
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajc;->d:I

    return v0
.end method
