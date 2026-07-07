.class final Lcom/google/ads/interactivemedia/v3/internal/sj;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field public final a:Lcom/google/ads/interactivemedia/v3/internal/tb;

.field public final b:[Z

.field public final c:[Z

.field public final d:[Z


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/tb;[Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/sj;->a:Lcom/google/ads/interactivemedia/v3/internal/tb;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/sj;->b:[Z

    iget p1, p1, Lcom/google/ads/interactivemedia/v3/internal/tb;->b:I

    .line 1
    new-array p2, p1, [Z

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/sj;->c:[Z

    .line 2
    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/sj;->d:[Z

    return-void
.end method
