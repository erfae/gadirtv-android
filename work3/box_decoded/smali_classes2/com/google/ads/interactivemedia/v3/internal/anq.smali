.class abstract Lcom/google/ads/interactivemedia/v3/internal/anq;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field b:I

.field c:I

.field d:I

.field final synthetic e:Lcom/google/ads/interactivemedia/v3/internal/anu;


# direct methods
.method synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/anu;)V
    .locals 1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/anq;->e:Lcom/google/ads/interactivemedia/v3/internal/anu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/anu;->a(Lcom/google/ads/interactivemedia/v3/internal/anu;)I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/anq;->b:I

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/anu;->e()I

    move-result p1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/anq;->c:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/anq;->d:I

    return-void
.end method

.method private final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/anq;->e:Lcom/google/ads/interactivemedia/v3/internal/anu;

    .line 1
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/anu;->a(Lcom/google/ads/interactivemedia/v3/internal/anu;)I

    move-result v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/anq;->b:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 2
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method abstract a(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/anq;->c:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/anq;->a()V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/anq;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/anq;->c:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/anq;->d:I

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/anq;->a(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/anq;->e:Lcom/google/ads/interactivemedia/v3/internal/anu;

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/anq;->c:I

    .line 6
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/anu;->b(I)I

    move-result v1

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/anq;->c:I

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 4
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 3

    .line 7
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/anq;->a()V

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/anq;->d:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/apn;->a(Z)V

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/anq;->b:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/anq;->b:I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/anq;->e:Lcom/google/ads/interactivemedia/v3/internal/anu;

    .line 9
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/anu;->b:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/anq;->d:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/anu;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/anq;->c:I

    const/4 v1, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/anq;->c:I

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/anq;->d:I

    return-void
.end method
