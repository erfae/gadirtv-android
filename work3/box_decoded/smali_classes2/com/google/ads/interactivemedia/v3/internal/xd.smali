.class final Lcom/google/ads/interactivemedia/v3/internal/xd;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/google/ads/interactivemedia/v3/internal/aak;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Lcom/google/ads/interactivemedia/v3/internal/aak;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/internal/xe;

.field private final b:Landroid/net/Uri;

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/aar;

.field private final d:Lcom/google/ads/interactivemedia/v3/internal/aau;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/aau<",
            "Lcom/google/ads/interactivemedia/v3/internal/xl;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/google/ads/interactivemedia/v3/internal/xk;

.field private f:J

.field private g:J

.field private h:J

.field private i:J

.field private j:Z

.field private k:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/xe;Landroid/net/Uri;)V
    .locals 3

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->a:Lcom/google/ads/interactivemedia/v3/internal/xe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->b:Landroid/net/Uri;

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aar;

    const-string v1, "DefaultHlsPlaylistTracker:MediaPlaylist"

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aar;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->c:Lcom/google/ads/interactivemedia/v3/internal/aar;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aau;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/xe;->g(Lcom/google/ads/interactivemedia/v3/internal/xe;)Lcom/google/ads/interactivemedia/v3/internal/vx;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/vx;->a()Lcom/google/ads/interactivemedia/v3/internal/zo;

    move-result-object v1

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/xe;->a(Lcom/google/ads/interactivemedia/v3/internal/xe;)Lcom/google/ads/interactivemedia/v3/internal/aat;

    move-result-object p1

    const/4 v2, 0x4

    .line 3
    invoke-direct {v0, v1, p2, v2, p1}, Lcom/google/ads/interactivemedia/v3/internal/aau;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zo;Landroid/net/Uri;ILcom/google/ads/interactivemedia/v3/internal/aat;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->d:Lcom/google/ads/interactivemedia/v3/internal/aau;

    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/xd;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->i:J

    return-wide v0
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/xd;Lcom/google/ads/interactivemedia/v3/internal/xk;Lcom/google/ads/interactivemedia/v3/internal/rg;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/xd;->a(Lcom/google/ads/interactivemedia/v3/internal/xk;Lcom/google/ads/interactivemedia/v3/internal/rg;)V

    return-void
.end method

.method private final a(Lcom/google/ads/interactivemedia/v3/internal/xk;Lcom/google/ads/interactivemedia/v3/internal/rg;)V
    .locals 11

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->e:Lcom/google/ads/interactivemedia/v3/internal/xk;

    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->f:J

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->a:Lcom/google/ads/interactivemedia/v3/internal/xe;

    .line 18
    invoke-static {v2, p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/xe;->a(Lcom/google/ads/interactivemedia/v3/internal/xe;Lcom/google/ads/interactivemedia/v3/internal/xk;Lcom/google/ads/interactivemedia/v3/internal/xk;)Lcom/google/ads/interactivemedia/v3/internal/xk;

    move-result-object v2

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->e:Lcom/google/ads/interactivemedia/v3/internal/xk;

    if-eq v2, p2, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->k:Ljava/io/IOException;

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->g:J

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->a:Lcom/google/ads/interactivemedia/v3/internal/xe;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->b:Landroid/net/Uri;

    .line 19
    invoke-static {p1, v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/xe;->a(Lcom/google/ads/interactivemedia/v3/internal/xe;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/internal/xk;)V

    goto :goto_0

    .line 20
    :cond_0
    iget-boolean v2, v2, Lcom/google/ads/interactivemedia/v3/internal/xk;->i:Z

    if-nez v2, :cond_2

    .line 21
    iget-wide v2, p1, Lcom/google/ads/interactivemedia/v3/internal/xk;->f:J

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/xk;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->e:Lcom/google/ads/interactivemedia/v3/internal/xk;

    int-to-long v5, p1

    add-long/2addr v2, v5

    iget-wide v5, v4, Lcom/google/ads/interactivemedia/v3/internal/xk;->f:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v2, v5

    if-gez p1, :cond_1

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/xr;

    .line 22
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/xr;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->k:Ljava/io/IOException;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->a:Lcom/google/ads/interactivemedia/v3/internal/xe;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->b:Landroid/net/Uri;

    .line 23
    invoke-static {p1, v2, v7, v8}, Lcom/google/ads/interactivemedia/v3/internal/xe;->a(Lcom/google/ads/interactivemedia/v3/internal/xe;Landroid/net/Uri;J)Z

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->g:J

    sub-long v2, v0, v2

    long-to-double v2, v2

    .line 24
    iget-wide v4, v4, Lcom/google/ads/interactivemedia/v3/internal/xk;->h:J

    .line 25
    invoke-static {v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/bk;->a(J)J

    move-result-wide v4

    long-to-double v4, v4

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->a:Lcom/google/ads/interactivemedia/v3/internal/xe;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/xe;->d(Lcom/google/ads/interactivemedia/v3/internal/xe;)D

    move-result-wide v9

    mul-double v4, v4, v9

    cmpl-double p1, v2, v4

    if-lez p1, :cond_2

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/xs;

    .line 26
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/xs;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->k:Ljava/io/IOException;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/aai;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/rl;

    const/4 v3, 0x4

    .line 27
    invoke-direct {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/rl;-><init>(I)V

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->k:Ljava/io/IOException;

    const/4 v3, 0x1

    invoke-direct {p1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/aai;-><init>(Ljava/io/IOException;I)V

    .line 28
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/aaa;->a(Lcom/google/ads/interactivemedia/v3/internal/aai;)J

    move-result-wide v2

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->a:Lcom/google/ads/interactivemedia/v3/internal/xe;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->b:Landroid/net/Uri;

    .line 29
    invoke-static {p1, v4, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/xe;->a(Lcom/google/ads/interactivemedia/v3/internal/xe;Landroid/net/Uri;J)Z

    cmp-long p1, v2, v7

    if-eqz p1, :cond_2

    .line 30
    invoke-direct {p0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/xd;->a(J)Z

    .line 19
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->e:Lcom/google/ads/interactivemedia/v3/internal/xk;

    if-eq p1, p2, :cond_3

    .line 31
    iget-wide p1, p1, Lcom/google/ads/interactivemedia/v3/internal/xk;->h:J

    goto :goto_1

    .line 32
    :cond_3
    iget-wide p1, p1, Lcom/google/ads/interactivemedia/v3/internal/xk;->h:J

    const-wide/16 v2, 0x2

    div-long/2addr p1, v2

    .line 33
    :goto_1
    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/bk;->a(J)J

    move-result-wide p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->h:J

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->b:Landroid/net/Uri;

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->a:Lcom/google/ads/interactivemedia/v3/internal/xe;

    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/xe;->e(Lcom/google/ads/interactivemedia/v3/internal/xe;)Landroid/net/Uri;

    move-result-object p2

    .line 34
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->e:Lcom/google/ads/interactivemedia/v3/internal/xk;

    iget-boolean p1, p1, Lcom/google/ads/interactivemedia/v3/internal/xk;->i:Z

    if-nez p1, :cond_4

    .line 35
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/xd;->d()V

    :cond_4
    return-void
.end method

.method private final a(J)Z
    .locals 2

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->i:J

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->b:Landroid/net/Uri;

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->a:Lcom/google/ads/interactivemedia/v3/internal/xe;

    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/xe;->e(Lcom/google/ads/interactivemedia/v3/internal/xe;)Landroid/net/Uri;

    move-result-object p2

    .line 5
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->a:Lcom/google/ads/interactivemedia/v3/internal/xe;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/xe;->f(Lcom/google/ads/interactivemedia/v3/internal/xe;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/internal/xd;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->b:Landroid/net/Uri;

    return-object p0
.end method

.method private final f()V
    .locals 4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->c:Lcom/google/ads/interactivemedia/v3/internal/aar;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->d:Lcom/google/ads/interactivemedia/v3/internal/aau;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->a:Lcom/google/ads/interactivemedia/v3/internal/xe;

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/xe;->h(Lcom/google/ads/interactivemedia/v3/internal/xe;)Lcom/google/ads/interactivemedia/v3/internal/aaa;

    move-result-object v2

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->d:Lcom/google/ads/interactivemedia/v3/internal/aau;

    iget v3, v3, Lcom/google/ads/interactivemedia/v3/internal/aau;->c:I

    .line 12
    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/aaa;->a(I)I

    move-result v2

    .line 13
    invoke-virtual {v0, v1, p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/aar;->a(Lcom/google/ads/interactivemedia/v3/internal/aan;Lcom/google/ads/interactivemedia/v3/internal/aak;I)J

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->a:Lcom/google/ads/interactivemedia/v3/internal/xe;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/xe;->c(Lcom/google/ads/interactivemedia/v3/internal/xe;)Lcom/google/ads/interactivemedia/v3/internal/ry;

    move-result-object v0

    .line 14
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/rg;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->d:Lcom/google/ads/interactivemedia/v3/internal/aau;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/aau;->b:Lcom/google/ads/interactivemedia/v3/internal/zs;

    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/rg;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zs;)V

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->d:Lcom/google/ads/interactivemedia/v3/internal/aau;

    iget v2, v2, Lcom/google/ads/interactivemedia/v3/internal/aau;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(Lcom/google/ads/interactivemedia/v3/internal/rg;I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/ads/interactivemedia/v3/internal/aan;JJLjava/io/IOException;I)Lcom/google/ads/interactivemedia/v3/internal/aal;
    .locals 5

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/aau;

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/rg;

    iget-wide p3, p1, Lcom/google/ads/interactivemedia/v3/internal/aau;->a:J

    iget-object p3, p1, Lcom/google/ads/interactivemedia/v3/internal/aau;->b:Lcom/google/ads/interactivemedia/v3/internal/zs;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aau;->e()Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aau;->f()Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aau;->d()J

    invoke-direct {p2}, Lcom/google/ads/interactivemedia/v3/internal/rg;-><init>()V

    new-instance p3, Lcom/google/ads/interactivemedia/v3/internal/rl;

    iget p4, p1, Lcom/google/ads/interactivemedia/v3/internal/aau;->c:I

    invoke-direct {p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/rl;-><init>(I)V

    new-instance p3, Lcom/google/ads/interactivemedia/v3/internal/aai;

    invoke-direct {p3, p6, p7}, Lcom/google/ads/interactivemedia/v3/internal/aai;-><init>(Ljava/io/IOException;I)V

    invoke-static {p3}, Lcom/google/ads/interactivemedia/v3/internal/aaa;->a(Lcom/google/ads/interactivemedia/v3/internal/aai;)J

    move-result-wide p4

    iget-object p7, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->a:Lcom/google/ads/interactivemedia/v3/internal/xe;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->b:Landroid/net/Uri;

    invoke-static {p7, v0, p4, p5}, Lcom/google/ads/interactivemedia/v3/internal/xe;->a(Lcom/google/ads/interactivemedia/v3/internal/xe;Landroid/net/Uri;J)Z

    move-result p7

    const/4 v0, 0x0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x1

    if-nez p7, :cond_1

    cmp-long p7, p4, v1

    if-nez p7, :cond_0

    goto :goto_0

    :cond_0
    const/4 p7, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p7, 0x1

    :goto_1
    cmp-long v4, p4, v1

    if-eqz v4, :cond_2

    invoke-direct {p0, p4, p5}, Lcom/google/ads/interactivemedia/v3/internal/xd;->a(J)Z

    move-result p4

    or-int/2addr p7, p4

    :cond_2
    if-eqz p7, :cond_4

    invoke-static {p3}, Lcom/google/ads/interactivemedia/v3/internal/aaa;->b(Lcom/google/ads/interactivemedia/v3/internal/aai;)J

    move-result-wide p3

    cmp-long p5, p3, v1

    if-eqz p5, :cond_3

    invoke-static {v0, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/aar;->a(ZJ)Lcom/google/ads/interactivemedia/v3/internal/aal;

    move-result-object p3

    goto :goto_2

    :cond_3
    sget-object p3, Lcom/google/ads/interactivemedia/v3/internal/aar;->b:Lcom/google/ads/interactivemedia/v3/internal/aal;

    goto :goto_2

    :cond_4
    sget-object p3, Lcom/google/ads/interactivemedia/v3/internal/aar;->a:Lcom/google/ads/interactivemedia/v3/internal/aal;

    :goto_2
    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/internal/aal;->a()Z

    move-result p4

    xor-int/2addr p4, v3

    iget-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->a:Lcom/google/ads/interactivemedia/v3/internal/xe;

    invoke-static {p5}, Lcom/google/ads/interactivemedia/v3/internal/xe;->c(Lcom/google/ads/interactivemedia/v3/internal/xe;)Lcom/google/ads/interactivemedia/v3/internal/ry;

    move-result-object p5

    iget p7, p1, Lcom/google/ads/interactivemedia/v3/internal/aau;->c:I

    invoke-virtual {p5, p2, p7, p6, p4}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(Lcom/google/ads/interactivemedia/v3/internal/rg;ILjava/io/IOException;Z)V

    if-eqz p4, :cond_5

    iget-wide p1, p1, Lcom/google/ads/interactivemedia/v3/internal/aau;->a:J

    :cond_5
    return-object p3
.end method

.method public final a()Lcom/google/ads/interactivemedia/v3/internal/xk;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->e:Lcom/google/ads/interactivemedia/v3/internal/xk;

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/google/ads/interactivemedia/v3/internal/aan;JJ)V
    .locals 1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/aau;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aau;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/ads/interactivemedia/v3/internal/xl;

    new-instance p3, Lcom/google/ads/interactivemedia/v3/internal/rg;

    iget-wide p4, p1, Lcom/google/ads/interactivemedia/v3/internal/aau;->a:J

    iget-object p4, p1, Lcom/google/ads/interactivemedia/v3/internal/aau;->b:Lcom/google/ads/interactivemedia/v3/internal/zs;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aau;->e()Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aau;->f()Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aau;->d()J

    invoke-direct {p3}, Lcom/google/ads/interactivemedia/v3/internal/rg;-><init>()V

    instance-of p4, p2, Lcom/google/ads/interactivemedia/v3/internal/xk;

    const/4 p5, 0x4

    if-eqz p4, :cond_0

    check-cast p2, Lcom/google/ads/interactivemedia/v3/internal/xk;

    invoke-direct {p0, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/xd;->a(Lcom/google/ads/interactivemedia/v3/internal/xk;Lcom/google/ads/interactivemedia/v3/internal/rg;)V

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->a:Lcom/google/ads/interactivemedia/v3/internal/xe;

    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/xe;->c(Lcom/google/ads/interactivemedia/v3/internal/xe;)Lcom/google/ads/interactivemedia/v3/internal/ry;

    move-result-object p2

    invoke-virtual {p2, p3, p5}, Lcom/google/ads/interactivemedia/v3/internal/ry;->b(Lcom/google/ads/interactivemedia/v3/internal/rg;I)V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/dt;

    const-string p4, "Loaded playlist has unexpected type."

    invoke-direct {p2, p4}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->k:Ljava/io/IOException;

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->a:Lcom/google/ads/interactivemedia/v3/internal/xe;

    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/xe;->c(Lcom/google/ads/interactivemedia/v3/internal/xe;)Lcom/google/ads/interactivemedia/v3/internal/ry;

    move-result-object p2

    iget-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->k:Ljava/io/IOException;

    const/4 v0, 0x1

    invoke-virtual {p2, p3, p5, p4, v0}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(Lcom/google/ads/interactivemedia/v3/internal/rg;ILjava/io/IOException;Z)V

    :goto_0
    iget-wide p1, p1, Lcom/google/ads/interactivemedia/v3/internal/aau;->a:J

    return-void
.end method

.method public final bridge synthetic a(Lcom/google/ads/interactivemedia/v3/internal/aan;JJZ)V
    .locals 0

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/aau;

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/rg;

    iget-wide p3, p1, Lcom/google/ads/interactivemedia/v3/internal/aau;->a:J

    iget-object p3, p1, Lcom/google/ads/interactivemedia/v3/internal/aau;->b:Lcom/google/ads/interactivemedia/v3/internal/zs;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aau;->e()Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aau;->f()Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aau;->d()J

    invoke-direct {p2}, Lcom/google/ads/interactivemedia/v3/internal/rg;-><init>()V

    iget-wide p3, p1, Lcom/google/ads/interactivemedia/v3/internal/aau;->a:J

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->a:Lcom/google/ads/interactivemedia/v3/internal/xe;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/xe;->c(Lcom/google/ads/interactivemedia/v3/internal/xe;)Lcom/google/ads/interactivemedia/v3/internal/ry;

    move-result-object p1

    const/4 p3, 0x4

    invoke-virtual {p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/ry;->c(Lcom/google/ads/interactivemedia/v3/internal/rg;I)V

    return-void
.end method

.method public final b()Z
    .locals 10

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->e:Lcom/google/ads/interactivemedia/v3/internal/xk;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 6
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->e:Lcom/google/ads/interactivemedia/v3/internal/xk;

    .line 7
    iget-wide v6, v0, Lcom/google/ads/interactivemedia/v3/internal/xk;->m:J

    invoke-static {v6, v7}, Lcom/google/ads/interactivemedia/v3/internal/bk;->a(J)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->e:Lcom/google/ads/interactivemedia/v3/internal/xk;

    .line 8
    iget-boolean v6, v0, Lcom/google/ads/interactivemedia/v3/internal/xk;->i:Z

    const/4 v7, 0x1

    if-nez v6, :cond_2

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/xk;->a:I

    const/4 v6, 0x2

    if-eq v0, v6, :cond_2

    if-eq v0, v7, :cond_2

    iget-wide v8, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->f:J

    add-long/2addr v8, v4

    cmp-long v0, v8, v2

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v7
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->c:Lcom/google/ads/interactivemedia/v3/internal/aar;

    .line 36
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/aar;->f()V

    return-void
.end method

.method public final d()V
    .locals 5

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->i:J

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->j:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->c:Lcom/google/ads/interactivemedia/v3/internal/aar;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/aar;->d()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->c:Lcom/google/ads/interactivemedia/v3/internal/aar;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/aar;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->h:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->j:Z

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->a:Lcom/google/ads/interactivemedia/v3/internal/xe;

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/xe;->b(Lcom/google/ads/interactivemedia/v3/internal/xe;)Landroid/os/Handler;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->h:J

    sub-long/2addr v3, v0

    .line 10
    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 11
    :cond_1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/xd;->f()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->c:Lcom/google/ads/interactivemedia/v3/internal/aar;

    .line 15
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/aar;->a()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->k:Ljava/io/IOException;

    if-nez v0, :cond_0

    return-void

    .line 16
    :cond_0
    throw v0
.end method

.method public final run()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xd;->j:Z

    .line 37
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/xd;->f()V

    return-void
.end method
