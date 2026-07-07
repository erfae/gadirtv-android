.class public final Lcom/google/ads/interactivemedia/v3/internal/gh;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:[Lcom/google/ads/interactivemedia/v3/internal/fj;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/gv;

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/gx;


# direct methods
.method public varargs constructor <init>([Lcom/google/ads/interactivemedia/v3/internal/fj;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/gv;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/gv;-><init>()V

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/gx;

    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/internal/gx;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/ads/interactivemedia/v3/internal/fj;

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/gh;->a:[Lcom/google/ads/interactivemedia/v3/internal/fj;

    const/4 v3, 0x0

    .line 2
    invoke-static {p1, v3, v2, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gh;->b:Lcom/google/ads/interactivemedia/v3/internal/gv;

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gh;->c:Lcom/google/ads/interactivemedia/v3/internal/gx;

    aput-object v0, v2, v3

    const/4 p1, 0x1

    aput-object v1, v2, p1

    return-void
.end method


# virtual methods
.method public final a(F)F
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gh;->c:Lcom/google/ads/interactivemedia/v3/internal/gx;

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/gx;->a(F)V

    return p1
.end method

.method public final a(J)J
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gh;->c:Lcom/google/ads/interactivemedia/v3/internal/gx;

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/gx;->a(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gh;->b:Lcom/google/ads/interactivemedia/v3/internal/gv;

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/gv;->a(Z)V

    return-void
.end method

.method public final a()[Lcom/google/ads/interactivemedia/v3/internal/fj;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gh;->a:[Lcom/google/ads/interactivemedia/v3/internal/fj;

    return-object v0
.end method

.method public final b()J
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gh;->b:Lcom/google/ads/interactivemedia/v3/internal/gv;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/gv;->k()J

    move-result-wide v0

    return-wide v0
.end method
