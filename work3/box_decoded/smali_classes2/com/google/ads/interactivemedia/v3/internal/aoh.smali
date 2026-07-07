.class final Lcom/google/ads/interactivemedia/v3/internal/aoh;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/internal/aoi;

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/aoi;)V
    .locals 1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoh;->a:Lcom/google/ads/interactivemedia/v3/internal/aoi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/aoi;->b:Lcom/google/ads/interactivemedia/v3/internal/aoj;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->a(Lcom/google/ads/interactivemedia/v3/internal/aoj;)I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoh;->b:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoh;->c:I

    .line 2
    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/aoi;->b:Lcom/google/ads/interactivemedia/v3/internal/aoj;

    iget v0, p1, Lcom/google/ads/interactivemedia/v3/internal/aoj;->d:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoh;->d:I

    .line 3
    iget p1, p1, Lcom/google/ads/interactivemedia/v3/internal/aoj;->c:I

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoh;->e:I

    return-void
.end method

.method private final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoh;->a:Lcom/google/ads/interactivemedia/v3/internal/aoi;

    .line 4
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/aoi;->b:Lcom/google/ads/interactivemedia/v3/internal/aoj;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->d:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoh;->d:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 5
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .line 6
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/aoh;->a()V

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoh;->b:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoh;->e:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    .line 7
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aoh;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoh;->a:Lcom/google/ads/interactivemedia/v3/internal/aoi;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoh;->b:I

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aoi;->a(I)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoh;->b:I

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoh;->c:I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoh;->a:Lcom/google/ads/interactivemedia/v3/internal/aoi;

    .line 10
    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/aoi;->b:Lcom/google/ads/interactivemedia/v3/internal/aoj;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->b(Lcom/google/ads/interactivemedia/v3/internal/aoj;)[I

    move-result-object v1

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aoh;->b:I

    aget v1, v1, v2

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoh;->b:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoh;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoh;->e:I

    return-object v0

    .line 7
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 8
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 4

    .line 11
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/aoh;->a()V

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoh;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/apn;->a(Z)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoh;->a:Lcom/google/ads/interactivemedia/v3/internal/aoi;

    .line 13
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/aoi;->b:Lcom/google/ads/interactivemedia/v3/internal/aoj;

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aoh;->c:I

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/aoj;->a:[Ljava/lang/Object;

    .line 14
    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/apn;->a(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->a(II)V

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoh;->b:I

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aoh;->a:Lcom/google/ads/interactivemedia/v3/internal/aoi;

    .line 15
    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/aoi;->b:Lcom/google/ads/interactivemedia/v3/internal/aoj;

    iget v3, v2, Lcom/google/ads/interactivemedia/v3/internal/aoj;->c:I

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoh;->c:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoh;->b:I

    :cond_1
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aoh;->c:I

    .line 16
    iget v0, v2, Lcom/google/ads/interactivemedia/v3/internal/aoj;->d:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aoh;->d:I

    return-void
.end method
