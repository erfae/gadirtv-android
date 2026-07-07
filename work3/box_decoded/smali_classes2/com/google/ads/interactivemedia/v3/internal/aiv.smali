.class public final Lcom/google/ads/interactivemedia/v3/internal/aiv;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/akn;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/aks;

.field private final b:Ljava/lang/String;

.field private final c:Landroid/view/View;

.field private final d:Lcom/google/ads/interactivemedia/v3/internal/ait;

.field private e:Lcom/google/ads/interactivemedia/v3/internal/ais;

.field private f:Landroid/app/Activity;

.field private g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/aks;Landroid/view/View;)V
    .locals 2

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aiu;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aiu;-><init>([B)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aiv;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/aiv;->a:Lcom/google/ads/interactivemedia/v3/internal/aks;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/aiv;->c:Landroid/view/View;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aiv;->d:Lcom/google/ads/interactivemedia/v3/internal/ait;

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aiv;->f:Landroid/app/Activity;

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aiv;->e:Lcom/google/ads/interactivemedia/v3/internal/ais;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aiv;->g:Z

    return-void
.end method

.method private static a(IF)I
    .locals 0

    int-to-float p0, p0

    div-float/2addr p0, p1

    float-to-double p0, p0

    .line 39
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/aiv;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/aiv;->f:Landroid/app/Activity;

    return-object p0
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/impl/data/aq;F)Lcom/google/ads/interactivemedia/v3/impl/data/aq;
    .locals 2

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/impl/data/aq;->builder()Lcom/google/ads/interactivemedia/v3/impl/data/ap;

    move-result-object v0

    .line 34
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/aq;->left()I

    move-result v1

    invoke-static {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/aiv;->a(IF)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/ap;->left(I)Lcom/google/ads/interactivemedia/v3/impl/data/ap;

    .line 35
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/aq;->top()I

    move-result v1

    invoke-static {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/aiv;->a(IF)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/ap;->top(I)Lcom/google/ads/interactivemedia/v3/impl/data/ap;

    .line 36
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/aq;->height()I

    move-result v1

    invoke-static {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/aiv;->a(IF)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/ap;->height(I)Lcom/google/ads/interactivemedia/v3/impl/data/ap;

    .line 37
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/aq;->width()I

    move-result p0

    invoke-static {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/aiv;->a(IF)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/ads/interactivemedia/v3/impl/data/ap;->width(I)Lcom/google/ads/interactivemedia/v3/impl/data/ap;

    .line 38
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/ap;->build()Lcom/google/ads/interactivemedia/v3/impl/data/aq;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/aiv;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aiv;->f:Landroid/app/Activity;

    return-void
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/internal/aiv;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/aiv;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/google/ads/interactivemedia/v3/internal/aiv;)Lcom/google/ads/interactivemedia/v3/internal/aks;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/aiv;->a:Lcom/google/ads/interactivemedia/v3/internal/aks;

    return-object p0
.end method

.method static synthetic d(Lcom/google/ads/interactivemedia/v3/internal/aiv;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/aiv;->c:Landroid/view/View;

    return-object p0
.end method

.method private final e()Landroid/util/DisplayMetrics;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aiv;->c:Landroid/view/View;

    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/google/ads/interactivemedia/v3/internal/aiv;)Lcom/google/ads/interactivemedia/v3/internal/ais;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/aiv;->e:Lcom/google/ads/interactivemedia/v3/internal/ais;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/b;
    .locals 10

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/impl/data/aq;->builder()Lcom/google/ads/interactivemedia/v3/impl/data/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aiv;->c:Landroid/view/View;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/ap;->locationOnScreenOfView(Landroid/view/View;)Lcom/google/ads/interactivemedia/v3/impl/data/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/ap;->build()Lcom/google/ads/interactivemedia/v3/impl/data/aq;

    move-result-object v0

    .line 3
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/aiv;->e()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aiv;->a(Lcom/google/ads/interactivemedia/v3/impl/data/aq;F)Lcom/google/ads/interactivemedia/v3/impl/data/aq;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    .line 4
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aiv;->c:Landroid/view/View;

    .line 5
    invoke-virtual {v2, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aiv;->c:Landroid/view/View;

    .line 6
    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aiv;->c:Landroid/view/View;

    .line 7
    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_1

    .line 8
    :cond_0
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/impl/data/aq;->builder()Lcom/google/ads/interactivemedia/v3/impl/data/ap;

    move-result-object v2

    .line 9
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 10
    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/data/ap;->left(I)Lcom/google/ads/interactivemedia/v3/impl/data/ap;

    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 11
    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/data/ap;->top(I)Lcom/google/ads/interactivemedia/v3/impl/data/ap;

    .line 12
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/data/ap;->height(I)Lcom/google/ads/interactivemedia/v3/impl/data/ap;

    .line 13
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/ap;->width(I)Lcom/google/ads/interactivemedia/v3/impl/data/ap;

    .line 14
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/impl/data/ap;->build()Lcom/google/ads/interactivemedia/v3/impl/data/aq;

    move-result-object v1

    .line 15
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/aiv;->e()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/aiv;->a(Lcom/google/ads/interactivemedia/v3/impl/data/aq;F)Lcom/google/ads/interactivemedia/v3/impl/data/aq;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aiv;->c:Landroid/view/View;

    .line 16
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v2

    new-instance v3, Landroid/graphics/Rect;

    .line 17
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/aiv;->c:Landroid/view/View;

    .line 18
    invoke-virtual {v5, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aiv;->c:Landroid/view/View;

    .line 19
    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const/4 v4, 0x1

    :cond_3
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aiv;->c:Landroid/view/View;

    .line 20
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "audio"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    if-eqz v3, :cond_4

    const/4 v5, 0x3

    .line 21
    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    int-to-double v6, v6

    .line 22
    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    int-to-double v8, v3

    div-double/2addr v6, v8

    goto :goto_0

    :cond_4
    const-wide/16 v6, 0x0

    .line 23
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/impl/data/b;->builder()Lcom/google/ads/interactivemedia/v3/impl/data/a;

    move-result-object v3

    .line 24
    invoke-interface {v3, p1}, Lcom/google/ads/interactivemedia/v3/impl/data/a;->queryId(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/a;

    .line 25
    invoke-interface {v3, p2}, Lcom/google/ads/interactivemedia/v3/impl/data/a;->eventId(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/a;

    .line 26
    invoke-interface {v3, p3}, Lcom/google/ads/interactivemedia/v3/impl/data/a;->appState(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/a;

    .line 27
    invoke-interface {v3, v8, v9}, Lcom/google/ads/interactivemedia/v3/impl/data/a;->nativeTime(J)Lcom/google/ads/interactivemedia/v3/impl/data/a;

    .line 28
    invoke-interface {v3, v6, v7}, Lcom/google/ads/interactivemedia/v3/impl/data/a;->nativeVolume(D)Lcom/google/ads/interactivemedia/v3/impl/data/a;

    .line 29
    invoke-interface {v3, v2}, Lcom/google/ads/interactivemedia/v3/impl/data/a;->nativeViewAttached(Z)Lcom/google/ads/interactivemedia/v3/impl/data/a;

    .line 30
    invoke-interface {v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/data/a;->nativeViewHidden(Z)Lcom/google/ads/interactivemedia/v3/impl/data/a;

    .line 31
    invoke-interface {v3, v0}, Lcom/google/ads/interactivemedia/v3/impl/data/a;->nativeViewBounds(Lcom/google/ads/interactivemedia/v3/impl/data/aq;)Lcom/google/ads/interactivemedia/v3/impl/data/a;

    .line 32
    invoke-interface {v3, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/a;->nativeViewVisibleBounds(Lcom/google/ads/interactivemedia/v3/impl/data/aq;)Lcom/google/ads/interactivemedia/v3/impl/data/a;

    .line 33
    invoke-interface {v3}, Lcom/google/ads/interactivemedia/v3/impl/data/a;->build()Lcom/google/ads/interactivemedia/v3/impl/data/b;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aiv;->a:Lcom/google/ads/interactivemedia/v3/internal/aks;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aiv;->b:Ljava/lang/String;

    .line 1
    invoke-virtual {v0, p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aks;->a(Lcom/google/ads/interactivemedia/v3/internal/akn;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, ""

    .line 42
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/aiv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/b;

    move-result-object p1

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/aiv;->a:Lcom/google/ads/interactivemedia/v3/internal/aks;

    .line 43
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/akl;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/akj;->activityMonitor:Lcom/google/ads/interactivemedia/v3/internal/akj;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/akk;->viewability:Lcom/google/ads/interactivemedia/v3/internal/akk;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aiv;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/google/ads/interactivemedia/v3/internal/akl;-><init>(Lcom/google/ads/interactivemedia/v3/internal/akj;Lcom/google/ads/interactivemedia/v3/internal/akk;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/aks;->b(Lcom/google/ads/interactivemedia/v3/internal/akl;)V

    return-void
.end method

.method final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aiv;->g:Z

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aiv;->a:Lcom/google/ads/interactivemedia/v3/internal/aks;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aiv;->b:Ljava/lang/String;

    .line 40
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aks;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aiv;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aiv;->c:Landroid/view/View;

    .line 44
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->a(Landroid/content/Context;)Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/ais;

    invoke-direct {v1, p0}, Lcom/google/ads/interactivemedia/v3/internal/ais;-><init>(Lcom/google/ads/interactivemedia/v3/internal/aiv;)V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aiv;->e:Lcom/google/ads/interactivemedia/v3/internal/ais;

    .line 46
    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aiv;->c:Landroid/view/View;

    .line 47
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->a(Landroid/content/Context;)Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aiv;->e:Lcom/google/ads/interactivemedia/v3/internal/ais;

    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method
