.class public final Lcom/google/ads/interactivemedia/v3/internal/w;
.super Ljava/lang/Object;
.source "IMASDK"


# static fields
.field private static a:Lcom/google/ads/interactivemedia/v3/internal/w;


# instance fields
.field private b:F

.field private c:Lcom/google/ads/interactivemedia/v3/internal/o;

.field private d:Lcom/google/ads/interactivemedia/v3/internal/p;

.field private final e:Lcom/google/ads/interactivemedia/v3/internal/gp;

.field private final f:Lcom/google/ads/interactivemedia/v3/internal/apn;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/apn;Lcom/google/ads/interactivemedia/v3/internal/gp;[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x0

    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/w;->b:F

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/w;->f:Lcom/google/ads/interactivemedia/v3/internal/apn;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/w;->e:Lcom/google/ads/interactivemedia/v3/internal/gp;

    return-void
.end method

.method public static a()Lcom/google/ads/interactivemedia/v3/internal/w;
    .locals 8

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/w;->a:Lcom/google/ads/interactivemedia/v3/internal/w;

    if-nez v0, :cond_0

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/gp;

    invoke-direct {v3}, Lcom/google/ads/interactivemedia/v3/internal/gp;-><init>()V

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/apn;

    invoke-direct {v2}, Lcom/google/ads/interactivemedia/v3/internal/apn;-><init>()V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/w;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    .line 1
    invoke-direct/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/w;-><init>(Lcom/google/ads/interactivemedia/v3/internal/apn;Lcom/google/ads/interactivemedia/v3/internal/gp;[B[B[B[B)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/w;->a:Lcom/google/ads/interactivemedia/v3/internal/w;

    :cond_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/w;->a:Lcom/google/ads/interactivemedia/v3/internal/w;

    return-object v0
.end method


# virtual methods
.method public final a(F)V
    .locals 2

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/w;->b:F

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/w;->d:Lcom/google/ads/interactivemedia/v3/internal/p;

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/p;->a()Lcom/google/ads/interactivemedia/v3/internal/p;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/w;->d:Lcom/google/ads/interactivemedia/v3/internal/p;

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/w;->d:Lcom/google/ads/interactivemedia/v3/internal/p;

    .line 5
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/p;->c()Ljava/util/Collection;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/i;

    .line 7
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/i;->e()Lcom/google/ads/interactivemedia/v3/internal/ac;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/ac;->a(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 10

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/app;

    invoke-direct {v3}, Lcom/google/ads/interactivemedia/v3/internal/app;-><init>()V

    new-instance v1, Landroid/os/Handler;

    .line 2
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v9, Lcom/google/ads/interactivemedia/v3/internal/o;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v2, p1

    move-object v4, p0

    .line 3
    invoke-direct/range {v0 .. v8}, Lcom/google/ads/interactivemedia/v3/internal/o;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/app;Lcom/google/ads/interactivemedia/v3/internal/w;[B[B[B[B)V

    iput-object v9, p0, Lcom/google/ads/interactivemedia/v3/internal/w;->c:Lcom/google/ads/interactivemedia/v3/internal/o;

    return-void
.end method

.method public final b()V
    .locals 1

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/r;->a()Lcom/google/ads/interactivemedia/v3/internal/r;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/r;->a(Lcom/google/ads/interactivemedia/v3/internal/w;)V

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/r;->a()Lcom/google/ads/interactivemedia/v3/internal/r;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/r;->b()V

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/r;->a()Lcom/google/ads/interactivemedia/v3/internal/r;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/r;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/aq;->a()Lcom/google/ads/interactivemedia/v3/internal/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/aq;->b()V

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/w;->c:Lcom/google/ads/interactivemedia/v3/internal/o;

    .line 12
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/o;->a()V

    return-void
.end method

.method public final c()V
    .locals 1

    .line 13
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/aq;->a()Lcom/google/ads/interactivemedia/v3/internal/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/aq;->c()V

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/r;->a()Lcom/google/ads/interactivemedia/v3/internal/r;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/r;->c()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/w;->c:Lcom/google/ads/interactivemedia/v3/internal/o;

    .line 15
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/o;->b()V

    return-void
.end method

.method public final d()F
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/w;->b:F

    return v0
.end method
