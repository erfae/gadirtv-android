.class public final Lcom/google/ads/interactivemedia/v3/internal/aom;
.super Lcom/google/ads/interactivemedia/v3/internal/aok;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/ads/interactivemedia/v3/internal/aok;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/aok;-><init>([B)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/ads/interactivemedia/v3/internal/aop;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/ads/interactivemedia/v3/internal/aop<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aom;->c:Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aom;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aom;->b:I

    .line 3
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aop;->a([Ljava/lang/Object;I)Lcom/google/ads/interactivemedia/v3/internal/aop;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/aok;->a(Ljava/lang/Object;)V

    return-void
.end method
