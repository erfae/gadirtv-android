.class public final Lcom/google/ads/interactivemedia/v3/internal/wj;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/sa;


# instance fields
.field private a:Lcom/google/ads/interactivemedia/v3/internal/wg;

.field private b:Lcom/google/ads/interactivemedia/v3/internal/xo;

.field private c:Lcom/google/ads/interactivemedia/v3/internal/xp;

.field private d:Lcom/google/ads/interactivemedia/v3/internal/hq;

.field private e:I

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/qj;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/ads/interactivemedia/v3/internal/vx;

.field private h:Lcom/google/ads/interactivemedia/v3/internal/aaa;

.field private i:Lcom/google/ads/interactivemedia/v3/internal/aaj;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/vx;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wj;->g:Lcom/google/ads/interactivemedia/v3/internal/vx;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/xb;

    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/xb;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wj;->b:Lcom/google/ads/interactivemedia/v3/internal/xo;

    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/xe;->a:Lcom/google/ads/interactivemedia/v3/internal/xp;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wj;->c:Lcom/google/ads/interactivemedia/v3/internal/xp;

    .line 2
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/wg;->a:Lcom/google/ads/interactivemedia/v3/internal/wg;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wj;->a:Lcom/google/ads/interactivemedia/v3/internal/wg;

    .line 3
    sget p1, Lcom/google/ads/interactivemedia/v3/internal/wk;->a:I

    .line 4
    sget p1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/4 v0, 0x0

    const/16 v1, 0x1e

    if-ge p1, v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string p1, "com.google.ads.interactivemedia.v3.exoplayer2.source.MediaParserHlsMediaChunkExtractor"

    .line 5
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v1, "FACTORY"

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/wg;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wj;->a:Lcom/google/ads/interactivemedia/v3/internal/wg;

    .line 7
    :cond_1
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/hq;->a:Lcom/google/ads/interactivemedia/v3/internal/hq;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wj;->d:Lcom/google/ads/interactivemedia/v3/internal/hq;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/aaa;

    .line 8
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/aaa;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wj;->h:Lcom/google/ads/interactivemedia/v3/internal/aaa;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/aaj;

    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/aaj;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wj;->i:Lcom/google/ads/interactivemedia/v3/internal/aaj;

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wj;->e:I

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wj;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Lcom/google/ads/interactivemedia/v3/internal/wk;
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/dc;

    .line 10
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/dc;-><init>()V

    .line 11
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/dc;->a(Landroid/net/Uri;)V

    const-string p1, "application/x-mpegURL"

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/dc;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/dc;->a()Lcom/google/ads/interactivemedia/v3/internal/dg;

    move-result-object p1

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/dg;->b:Lcom/google/ads/interactivemedia/v3/internal/df;

    .line 12
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wj;->b:Lcom/google/ads/interactivemedia/v3/internal/xo;

    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/internal/dg;->b:Lcom/google/ads/interactivemedia/v3/internal/df;

    .line 13
    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/df;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/wj;->f:Ljava/util/List;

    goto :goto_0

    .line 22
    :cond_0
    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/internal/dg;->b:Lcom/google/ads/interactivemedia/v3/internal/df;

    .line 14
    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/df;->d:Ljava/util/List;

    .line 15
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/xf;

    .line 16
    invoke-direct {v2, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/xf;-><init>(Lcom/google/ads/interactivemedia/v3/internal/xo;Ljava/util/List;)V

    move-object v0, v2

    :cond_1
    iget-object v2, p1, Lcom/google/ads/interactivemedia/v3/internal/dg;->b:Lcom/google/ads/interactivemedia/v3/internal/df;

    .line 17
    iget-object v3, v2, Lcom/google/ads/interactivemedia/v3/internal/df;->h:Ljava/lang/Object;

    .line 18
    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/df;->d:Ljava/util/List;

    .line 19
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 20
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/dg;->a()Lcom/google/ads/interactivemedia/v3/internal/dc;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/dc;->a(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/dc;->a()Lcom/google/ads/interactivemedia/v3/internal/dg;

    move-result-object p1

    :cond_2
    move-object v2, p1

    .line 21
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/wk;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/wj;->g:Lcom/google/ads/interactivemedia/v3/internal/vx;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/wj;->a:Lcom/google/ads/interactivemedia/v3/internal/wg;

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/wj;->i:Lcom/google/ads/interactivemedia/v3/internal/aaj;

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/wj;->d:Lcom/google/ads/interactivemedia/v3/internal/hq;

    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/internal/wj;->h:Lcom/google/ads/interactivemedia/v3/internal/aaa;

    new-instance v8, Lcom/google/ads/interactivemedia/v3/internal/xe;

    invoke-direct {v8, v3, v7, v0}, Lcom/google/ads/interactivemedia/v3/internal/xe;-><init>(Lcom/google/ads/interactivemedia/v3/internal/vx;Lcom/google/ads/interactivemedia/v3/internal/aaa;Lcom/google/ads/interactivemedia/v3/internal/xo;)V

    iget v9, p0, Lcom/google/ads/interactivemedia/v3/internal/wj;->e:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p1

    .line 22
    invoke-direct/range {v1 .. v11}, Lcom/google/ads/interactivemedia/v3/internal/wk;-><init>(Lcom/google/ads/interactivemedia/v3/internal/dg;Lcom/google/ads/interactivemedia/v3/internal/vx;Lcom/google/ads/interactivemedia/v3/internal/wg;Lcom/google/ads/interactivemedia/v3/internal/aaj;Lcom/google/ads/interactivemedia/v3/internal/hq;Lcom/google/ads/interactivemedia/v3/internal/aaa;Lcom/google/ads/interactivemedia/v3/internal/xu;I[B[B)V

    return-object p1
.end method
