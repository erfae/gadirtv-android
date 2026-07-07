.class final Lcom/google/ads/interactivemedia/v3/internal/cq;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/ads/interactivemedia/v3/internal/cq;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/ads/interactivemedia/v3/internal/ea;

.field public b:I

.field public c:J

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/ea;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cq;->a:Lcom/google/ads/interactivemedia/v3/internal/ea;

    return-void
.end method


# virtual methods
.method public final a(IJLjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cq;->b:I

    iput-wide p2, p0, Lcom/google/ads/interactivemedia/v3/internal/cq;->c:J

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/cq;->d:Ljava/lang/Object;

    return-void
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 5

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/cq;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cq;->d:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    iget-object v4, p1, Lcom/google/ads/interactivemedia/v3/internal/cq;->d:Ljava/lang/Object;

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    :goto_1
    if-eq v3, v4, :cond_3

    if-nez v0, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, -0x1

    return p1

    :cond_3
    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cq;->b:I

    iget v1, p1, Lcom/google/ads/interactivemedia/v3/internal/cq;->b:I

    sub-int v1, v0, v1

    if-eqz v1, :cond_5

    :goto_2
    return v1

    :cond_5
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cq;->c:J

    iget-wide v2, p1, Lcom/google/ads/interactivemedia/v3/internal/cq;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ach;->b(JJ)I

    move-result p1

    return p1
.end method
