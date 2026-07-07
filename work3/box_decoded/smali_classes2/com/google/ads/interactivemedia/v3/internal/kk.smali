.class final Lcom/google/ads/interactivemedia/v3/internal/kk;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/kh;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/abr;

.field private final b:I

.field private final c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/ke;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/ke;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/kk;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/16 v0, 0xc

    .line 1
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->t()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/kk;->c:I

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->t()I

    move-result p1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/kk;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/kk;->b:I

    return v0
.end method

.method public final b()I
    .locals 2

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/kk;->c:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/kk;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 4
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v0

    return v0

    :cond_0
    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/kk;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 5
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->g()I

    move-result v0

    return v0

    :cond_1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/kk;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/kk;->d:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/kk;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 6
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/kk;->e:I

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    return v0

    :cond_2
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/kk;->e:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
