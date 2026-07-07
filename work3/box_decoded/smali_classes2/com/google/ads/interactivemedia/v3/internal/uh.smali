.class public final Lcom/google/ads/interactivemedia/v3/internal/uh;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/sa;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/zn;

.field private b:Lcom/google/ads/interactivemedia/v3/internal/hq;

.field private c:J

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/qj;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/ads/interactivemedia/v3/internal/ur;

.field private f:Lcom/google/ads/interactivemedia/v3/internal/aaa;

.field private g:Lcom/google/ads/interactivemedia/v3/internal/aaj;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/ur;Lcom/google/ads/interactivemedia/v3/internal/zn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uh;->e:Lcom/google/ads/interactivemedia/v3/internal/ur;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/uh;->a:Lcom/google/ads/interactivemedia/v3/internal/zn;

    .line 2
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/hq;->a:Lcom/google/ads/interactivemedia/v3/internal/hq;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uh;->b:Lcom/google/ads/interactivemedia/v3/internal/hq;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/aaa;

    .line 3
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/aaa;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uh;->f:Lcom/google/ads/interactivemedia/v3/internal/aaa;

    const-wide/16 p1, 0x7530

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uh;->c:J

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/aaj;

    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/aaj;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uh;->g:Lcom/google/ads/interactivemedia/v3/internal/aaj;

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uh;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Lcom/google/ads/interactivemedia/v3/internal/uo;
    .locals 17
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/dc;

    .line 5
    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/internal/dc;-><init>()V

    move-object/from16 v2, p1

    .line 6
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/dc;->a(Landroid/net/Uri;)V

    const-string v2, "application/dash+xml"

    .line 7
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/dc;->b(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/dc;->a()Lcom/google/ads/interactivemedia/v3/internal/dg;

    move-result-object v1

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/dg;->b:Lcom/google/ads/interactivemedia/v3/internal/df;

    .line 9
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/vd;

    invoke-direct {v2}, Lcom/google/ads/interactivemedia/v3/internal/vd;-><init>()V

    iget-object v3, v1, Lcom/google/ads/interactivemedia/v3/internal/dg;->b:Lcom/google/ads/interactivemedia/v3/internal/df;

    .line 11
    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/internal/df;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/uh;->d:Ljava/util/List;

    goto :goto_0

    .line 19
    :cond_0
    iget-object v3, v1, Lcom/google/ads/interactivemedia/v3/internal/dg;->b:Lcom/google/ads/interactivemedia/v3/internal/df;

    .line 12
    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/internal/df;->d:Ljava/util/List;

    .line 13
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/qh;

    .line 14
    invoke-direct {v4, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/qh;-><init>(Lcom/google/ads/interactivemedia/v3/internal/aat;Ljava/util/List;)V

    move-object v8, v4

    goto :goto_1

    :cond_1
    move-object v8, v2

    :goto_1
    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/dg;->b:Lcom/google/ads/interactivemedia/v3/internal/df;

    .line 15
    iget-object v4, v2, Lcom/google/ads/interactivemedia/v3/internal/df;->h:Ljava/lang/Object;

    .line 16
    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/df;->d:Ljava/util/List;

    .line 17
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 18
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/dg;->a()Lcom/google/ads/interactivemedia/v3/internal/dc;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/dc;->a(Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/dc;->a()Lcom/google/ads/interactivemedia/v3/internal/dg;

    move-result-object v1

    :cond_2
    move-object v6, v1

    .line 19
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/uo;

    iget-object v7, v0, Lcom/google/ads/interactivemedia/v3/internal/uh;->a:Lcom/google/ads/interactivemedia/v3/internal/zn;

    iget-object v9, v0, Lcom/google/ads/interactivemedia/v3/internal/uh;->e:Lcom/google/ads/interactivemedia/v3/internal/ur;

    iget-object v10, v0, Lcom/google/ads/interactivemedia/v3/internal/uh;->g:Lcom/google/ads/interactivemedia/v3/internal/aaj;

    iget-object v11, v0, Lcom/google/ads/interactivemedia/v3/internal/uh;->b:Lcom/google/ads/interactivemedia/v3/internal/hq;

    iget-object v12, v0, Lcom/google/ads/interactivemedia/v3/internal/uh;->f:Lcom/google/ads/interactivemedia/v3/internal/aaa;

    iget-wide v13, v0, Lcom/google/ads/interactivemedia/v3/internal/uh;->c:J

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v16}, Lcom/google/ads/interactivemedia/v3/internal/uo;-><init>(Lcom/google/ads/interactivemedia/v3/internal/dg;Lcom/google/ads/interactivemedia/v3/internal/zn;Lcom/google/ads/interactivemedia/v3/internal/aat;Lcom/google/ads/interactivemedia/v3/internal/ur;Lcom/google/ads/interactivemedia/v3/internal/aaj;Lcom/google/ads/interactivemedia/v3/internal/hq;Lcom/google/ads/interactivemedia/v3/internal/aaa;J[B[B)V

    return-object v1
.end method
