.class public abstract Lcom/google/ads/interactivemedia/v3/internal/gd;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/fj;


# instance fields
.field protected b:Lcom/google/ads/interactivemedia/v3/internal/fh;

.field protected c:Lcom/google/ads/interactivemedia/v3/internal/fh;

.field private d:Lcom/google/ads/interactivemedia/v3/internal/fh;

.field private e:Lcom/google/ads/interactivemedia/v3/internal/fh;

.field private f:Ljava/nio/ByteBuffer;

.field private g:Ljava/nio/ByteBuffer;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/gd;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gd;->f:Ljava/nio/ByteBuffer;

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/gd;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gd;->g:Ljava/nio/ByteBuffer;

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/fh;->a:Lcom/google/ads/interactivemedia/v3/internal/fh;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gd;->d:Lcom/google/ads/interactivemedia/v3/internal/fh;

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/fh;->a:Lcom/google/ads/interactivemedia/v3/internal/fh;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gd;->e:Lcom/google/ads/interactivemedia/v3/internal/fh;

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/fh;->a:Lcom/google/ads/interactivemedia/v3/internal/fh;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gd;->b:Lcom/google/ads/interactivemedia/v3/internal/fh;

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/fh;->a:Lcom/google/ads/interactivemedia/v3/internal/fh;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gd;->c:Lcom/google/ads/interactivemedia/v3/internal/fh;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/internal/fh;)Lcom/google/ads/interactivemedia/v3/internal/fh;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/fi;
        }
    .end annotation

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gd;->d:Lcom/google/ads/interactivemedia/v3/internal/fh;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/gd;->b(Lcom/google/ads/interactivemedia/v3/internal/fh;)Lcom/google/ads/interactivemedia/v3/internal/fh;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gd;->e:Lcom/google/ads/interactivemedia/v3/internal/fh;

    .line 3
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/gd;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gd;->e:Lcom/google/ads/interactivemedia/v3/internal/fh;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/fh;->a:Lcom/google/ads/interactivemedia/v3/internal/fh;

    :goto_0
    return-object p1
.end method

.method protected final a(I)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gd;->f:Ljava/nio/ByteBuffer;

    .line 8
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 9
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gd;->f:Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gd;->f:Ljava/nio/ByteBuffer;

    .line 10
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gd;->f:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gd;->g:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public a()Z
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gd;->e:Lcom/google/ads/interactivemedia/v3/internal/fh;

    .line 6
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/fh;->a:Lcom/google/ads/interactivemedia/v3/internal/fh;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected b(Lcom/google/ads/interactivemedia/v3/internal/fh;)Lcom/google/ads/interactivemedia/v3/internal/fh;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/fi;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gd;->h:Z

    .line 7
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/gd;->h()V

    return-void
.end method

.method public c()Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gd;->g:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/gd;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gd;->g:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public d()Z
    .locals 2

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gd;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gd;->g:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/gd;->a:Ljava/nio/ByteBuffer;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()V
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/gd;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gd;->g:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gd;->h:Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gd;->d:Lcom/google/ads/interactivemedia/v3/internal/fh;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gd;->b:Lcom/google/ads/interactivemedia/v3/internal/fh;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gd;->e:Lcom/google/ads/interactivemedia/v3/internal/fh;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gd;->c:Lcom/google/ads/interactivemedia/v3/internal/fh;

    .line 4
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/gd;->i()V

    return-void
.end method

.method public final f()V
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/gd;->e()V

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/gd;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gd;->f:Ljava/nio/ByteBuffer;

    .line 12
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/fh;->a:Lcom/google/ads/interactivemedia/v3/internal/fh;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gd;->d:Lcom/google/ads/interactivemedia/v3/internal/fh;

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/fh;->a:Lcom/google/ads/interactivemedia/v3/internal/fh;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gd;->e:Lcom/google/ads/interactivemedia/v3/internal/fh;

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/fh;->a:Lcom/google/ads/interactivemedia/v3/internal/fh;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gd;->b:Lcom/google/ads/interactivemedia/v3/internal/fh;

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/fh;->a:Lcom/google/ads/interactivemedia/v3/internal/fh;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gd;->c:Lcom/google/ads/interactivemedia/v3/internal/fh;

    .line 13
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/gd;->j()V

    return-void
.end method

.method protected final g()Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gd;->g:Ljava/nio/ByteBuffer;

    .line 5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    return v0
.end method

.method protected h()V
    .locals 0

    return-void
.end method

.method protected i()V
    .locals 0

    return-void
.end method

.method protected j()V
    .locals 0

    return-void
.end method
