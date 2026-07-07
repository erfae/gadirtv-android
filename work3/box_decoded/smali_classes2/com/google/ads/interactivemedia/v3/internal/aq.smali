.class public final Lcom/google/ads/interactivemedia/v3/internal/aq;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/x;


# static fields
.field private static final a:Lcom/google/ads/interactivemedia/v3/internal/aq;

.field private static final b:Landroid/os/Handler;

.field private static c:Landroid/os/Handler;

.field private static final j:Ljava/lang/Runnable;

.field private static final k:Ljava/lang/Runnable;


# instance fields
.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/ap;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private final f:Lcom/google/ads/interactivemedia/v3/internal/z;

.field private final g:Lcom/google/ads/interactivemedia/v3/internal/aj;

.field private final h:Lcom/google/ads/interactivemedia/v3/internal/ak;

.field private i:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aq;

    .line 1
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/aq;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/aq;->a:Lcom/google/ads/interactivemedia/v3/internal/aq;

    new-instance v0, Landroid/os/Handler;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/aq;->b:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/aq;->c:Landroid/os/Handler;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/am;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/am;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/aq;->j:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/an;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/an;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/aq;->k:Ljava/lang/Runnable;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aq;->d:Ljava/util/List;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aj;

    .line 4
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/aj;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aq;->g:Lcom/google/ads/interactivemedia/v3/internal/aj;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/z;

    .line 5
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/z;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aq;->f:Lcom/google/ads/interactivemedia/v3/internal/z;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ak;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/at;

    .line 6
    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/internal/at;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ak;-><init>(Lcom/google/ads/interactivemedia/v3/internal/at;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aq;->h:Lcom/google/ads/interactivemedia/v3/internal/ak;

    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/aq;)Lcom/google/ads/interactivemedia/v3/internal/ak;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/aq;->h:Lcom/google/ads/interactivemedia/v3/internal/ak;

    return-object p0
.end method

.method public static a()Lcom/google/ads/interactivemedia/v3/internal/aq;
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/aq;->a:Lcom/google/ads/interactivemedia/v3/internal/aq;

    return-object v0
.end method

.method private final a(Landroid/view/View;Lcom/google/ads/interactivemedia/v3/internal/y;Lorg/json/JSONObject;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    invoke-interface {p2, p1, p3, p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/y;->a(Landroid/view/View;Lorg/json/JSONObject;Lcom/google/ads/interactivemedia/v3/internal/x;Z)V

    return-void
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/internal/aq;)V
    .locals 11

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aq;->e:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aq;->i:J

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aq;->g:Lcom/google/ads/interactivemedia/v3/internal/aj;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/aj;->c()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aq;->f:Lcom/google/ads/interactivemedia/v3/internal/z;

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/z;->a()Lcom/google/ads/interactivemedia/v3/internal/y;

    move-result-object v3

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/aq;->g:Lcom/google/ads/interactivemedia/v3/internal/aj;

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/aj;->b()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/aq;->g:Lcom/google/ads/interactivemedia/v3/internal/aj;

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/aj;->b()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3, v5}, Lcom/google/ads/interactivemedia/v3/internal/y;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v7

    iget-object v8, p0, Lcom/google/ads/interactivemedia/v3/internal/aq;->g:Lcom/google/ads/interactivemedia/v3/internal/aj;

    invoke-virtual {v8, v6}, Lcom/google/ads/interactivemedia/v3/internal/aj;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/google/ads/interactivemedia/v3/internal/aq;->f:Lcom/google/ads/interactivemedia/v3/internal/z;

    invoke-virtual {v9}, Lcom/google/ads/interactivemedia/v3/internal/z;->b()Lcom/google/ads/interactivemedia/v3/internal/y;

    move-result-object v9

    iget-object v10, p0, Lcom/google/ads/interactivemedia/v3/internal/aq;->g:Lcom/google/ads/interactivemedia/v3/internal/aj;

    invoke-virtual {v10, v6}, Lcom/google/ads/interactivemedia/v3/internal/aj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-interface {v9, v8}, Lcom/google/ads/interactivemedia/v3/internal/y;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/google/ads/interactivemedia/v3/internal/ah;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-static {v8, v10}, Lcom/google/ads/interactivemedia/v3/internal/ah;->b(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-static {v7, v8}, Lcom/google/ads/interactivemedia/v3/internal/ah;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_0
    invoke-static {v7}, Lcom/google/ads/interactivemedia/v3/internal/ah;->a(Lorg/json/JSONObject;)V

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v8, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/aq;->h:Lcom/google/ads/interactivemedia/v3/internal/ak;

    invoke-virtual {v6, v7, v8, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ak;->b(Lorg/json/JSONObject;Ljava/util/HashSet;J)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/aq;->g:Lcom/google/ads/interactivemedia/v3/internal/aj;

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/aj;->a()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_2

    invoke-interface {v3, v5}, Lcom/google/ads/interactivemedia/v3/internal/y;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v4

    const/4 v6, 0x1

    invoke-direct {p0, v5, v3, v4, v6}, Lcom/google/ads/interactivemedia/v3/internal/aq;->a(Landroid/view/View;Lcom/google/ads/interactivemedia/v3/internal/y;Lorg/json/JSONObject;I)V

    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/ah;->a(Lorg/json/JSONObject;)V

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aq;->h:Lcom/google/ads/interactivemedia/v3/internal/ak;

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/aq;->g:Lcom/google/ads/interactivemedia/v3/internal/aj;

    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/aj;->a()Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ak;->a(Lorg/json/JSONObject;Ljava/util/HashSet;J)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aq;->h:Lcom/google/ads/interactivemedia/v3/internal/ak;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/ak;->a()V

    :goto_1
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aq;->g:Lcom/google/ads/interactivemedia/v3/internal/aj;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/aj;->d()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aq;->i:J

    sub-long/2addr v1, v3

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aq;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/aq;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    :goto_2
    if-ge v0, v3, :cond_4

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/ads/interactivemedia/v3/internal/ap;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    invoke-interface {v4}, Lcom/google/ads/interactivemedia/v3/internal/ap;->b()V

    instance-of v5, v4, Lcom/google/ads/interactivemedia/v3/internal/ao;

    if-eqz v5, :cond_3

    check-cast v4, Lcom/google/ads/interactivemedia/v3/internal/ao;

    invoke-interface {v4}, Lcom/google/ads/interactivemedia/v3/internal/ao;->a()V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method static synthetic e()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/aq;->c:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/aq;->j:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic g()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/aq;->k:Ljava/lang/Runnable;

    return-object v0
.end method

.method private static final h()V
    .locals 2

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/aq;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/aq;->k:Ljava/lang/Runnable;

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/aq;->c:Landroid/os/Handler;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lcom/google/ads/interactivemedia/v3/internal/y;Lorg/json/JSONObject;)V
    .locals 2

    .line 15
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aq;->g:Lcom/google/ads/interactivemedia/v3/internal/aj;

    .line 16
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/aj;->c(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    .line 17
    :cond_0
    invoke-interface {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/y;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v1

    .line 18
    invoke-static {p3, v1}, Lcom/google/ads/interactivemedia/v3/internal/ah;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/aq;->g:Lcom/google/ads/interactivemedia/v3/internal/aj;

    .line 19
    invoke-virtual {p3, p1}, Lcom/google/ads/interactivemedia/v3/internal/aj;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 23
    invoke-static {v1, p3}, Lcom/google/ads/interactivemedia/v3/internal/ah;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aq;->g:Lcom/google/ads/interactivemedia/v3/internal/aj;

    .line 24
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aj;->e()V

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/aq;->g:Lcom/google/ads/interactivemedia/v3/internal/aj;

    .line 20
    invoke-virtual {p3, p1}, Lcom/google/ads/interactivemedia/v3/internal/aj;->b(Landroid/view/View;)Lcom/google/ads/interactivemedia/v3/internal/ai;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 21
    invoke-static {v1, p3}, Lcom/google/ads/interactivemedia/v3/internal/ah;->a(Lorg/json/JSONObject;Lcom/google/ads/interactivemedia/v3/internal/ai;)V

    .line 22
    :cond_2
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/aq;->a(Landroid/view/View;Lcom/google/ads/interactivemedia/v3/internal/y;Lorg/json/JSONObject;I)V

    .line 24
    :goto_0
    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aq;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aq;->e:I

    :cond_3
    return-void
.end method

.method public final b()V
    .locals 4

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/aq;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/aq;->c:Landroid/os/Handler;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/aq;->j:Ljava/lang/Runnable;

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/aq;->c:Landroid/os/Handler;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/aq;->k:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    .line 10
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    .line 11
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/aq;->h()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aq;->d:Ljava/util/List;

    .line 12
    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/aq;->b:Landroid/os/Handler;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/al;

    .line 13
    invoke-direct {v1, p0}, Lcom/google/ads/interactivemedia/v3/internal/al;-><init>(Lcom/google/ads/interactivemedia/v3/internal/aq;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final d()V
    .locals 0

    .line 7
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/aq;->h()V

    return-void
.end method
