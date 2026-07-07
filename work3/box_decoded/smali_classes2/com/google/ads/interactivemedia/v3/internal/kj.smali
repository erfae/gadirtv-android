.class final Lcom/google/ads/interactivemedia/v3/internal/kj;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/kh;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/abr;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/ke;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/ke;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/kj;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/16 v0, 0xc

    .line 1
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->t()I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/kj;->a:I

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->t()I

    move-result p1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/kj;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/kj;->b:I

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/kj;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/kj;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 4
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->t()I

    move-result v0

    :cond_0
    return v0
.end method

.method public final c()Z
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/kj;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
