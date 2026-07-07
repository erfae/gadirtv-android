.class abstract Lcom/google/ads/interactivemedia/v3/internal/afn;
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
.field a:Lcom/google/ads/interactivemedia/v3/internal/afo;

.field b:Lcom/google/ads/interactivemedia/v3/internal/afo;

.field c:I

.field final synthetic d:Lcom/google/ads/interactivemedia/v3/internal/afp;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/afp;)V
    .locals 1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/afn;->d:Lcom/google/ads/interactivemedia/v3/internal/afp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/afp;->e:Lcom/google/ads/interactivemedia/v3/internal/afo;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/afo;->d:Lcom/google/ads/interactivemedia/v3/internal/afo;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/afn;->a:Lcom/google/ads/interactivemedia/v3/internal/afo;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/afn;->b:Lcom/google/ads/interactivemedia/v3/internal/afo;

    .line 2
    iget p1, p1, Lcom/google/ads/interactivemedia/v3/internal/afp;->d:I

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/afn;->c:I

    return-void
.end method


# virtual methods
.method final a()Lcom/google/ads/interactivemedia/v3/internal/afo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/ads/interactivemedia/v3/internal/afo;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/afn;->a:Lcom/google/ads/interactivemedia/v3/internal/afo;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/afn;->d:Lcom/google/ads/interactivemedia/v3/internal/afp;

    .line 4
    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/afp;->e:Lcom/google/ads/interactivemedia/v3/internal/afo;

    if-eq v0, v2, :cond_1

    .line 6
    iget v1, v1, Lcom/google/ads/interactivemedia/v3/internal/afp;->d:I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/afn;->c:I

    if-ne v1, v2, :cond_0

    .line 8
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/afo;->d:Lcom/google/ads/interactivemedia/v3/internal/afo;

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/afn;->a:Lcom/google/ads/interactivemedia/v3/internal/afo;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/afn;->b:Lcom/google/ads/interactivemedia/v3/internal/afo;

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 7
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 4
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 5
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/afn;->a:Lcom/google/ads/interactivemedia/v3/internal/afo;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/afn;->d:Lcom/google/ads/interactivemedia/v3/internal/afp;

    .line 3
    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/afp;->e:Lcom/google/ads/interactivemedia/v3/internal/afo;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/afn;->b:Lcom/google/ads/interactivemedia/v3/internal/afo;

    if-eqz v0, :cond_0

    .line 9
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/afn;->d:Lcom/google/ads/interactivemedia/v3/internal/afp;

    const/4 v2, 0x1

    .line 10
    invoke-virtual {v1, v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/afp;->a(Lcom/google/ads/interactivemedia/v3/internal/afo;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/afn;->b:Lcom/google/ads/interactivemedia/v3/internal/afo;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/afn;->d:Lcom/google/ads/interactivemedia/v3/internal/afp;

    .line 11
    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/afp;->d:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/afn;->c:I

    return-void

    .line 0
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
