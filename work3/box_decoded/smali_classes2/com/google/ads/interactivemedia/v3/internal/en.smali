.class final Lcom/google/ads/interactivemedia/v3/internal/en;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/os/Handler;

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/ek;

.field private final d:Landroid/media/AudioManager;

.field private final e:Lcom/google/ads/interactivemedia/v3/internal/em;

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/ads/interactivemedia/v3/internal/ek;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/en;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/en;->b:Landroid/os/Handler;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/en;->c:Lcom/google/ads/interactivemedia/v3/internal/ek;

    const-string p2, "audio"

    .line 2
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    .line 3
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/en;->d:Landroid/media/AudioManager;

    const/4 p3, 0x3

    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/en;->f:I

    .line 4
    invoke-virtual {p2, p3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p3

    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/en;->g:I

    iget p3, p0, Lcom/google/ads/interactivemedia/v3/internal/en;->f:I

    .line 5
    invoke-static {p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/en;->a(Landroid/media/AudioManager;I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/internal/en;->h:Z

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/em;

    .line 6
    invoke-direct {p2, p0}, Lcom/google/ads/interactivemedia/v3/internal/em;-><init>(Lcom/google/ads/interactivemedia/v3/internal/en;)V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/en;->e:Lcom/google/ads/interactivemedia/v3/internal/em;

    new-instance p3, Landroid/content/IntentFilter;

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    .line 7
    invoke-direct {p3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/en;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/en;->b:Landroid/os/Handler;

    return-object p0
.end method

.method private static a(Landroid/media/AudioManager;I)Z
    .locals 2

    .line 11
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 12
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result p0

    return p0

    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/internal/en;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/en;->d()V

    return-void
.end method

.method private final d()V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/en;->d:Landroid/media/AudioManager;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/en;->f:I

    .line 21
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/en;->d:Landroid/media/AudioManager;

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/en;->f:I

    .line 22
    invoke-static {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/en;->a(Landroid/media/AudioManager;I)Z

    move-result v1

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/en;->g:I

    if-ne v2, v0, :cond_0

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/en;->h:Z

    if-eq v2, v1, :cond_1

    :cond_0
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/en;->g:I

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/en;->h:Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/en;->c:Lcom/google/ads/interactivemedia/v3/internal/ek;

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/ei;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->l(Lcom/google/ads/interactivemedia/v3/internal/ej;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/hg;

    .line 24
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/internal/hg;->b()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 10
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/en;->d:Landroid/media/AudioManager;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/en;->f:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final a(I)V
    .locals 2

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/en;->f:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/en;->f:I

    .line 15
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/en;->d()V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/en;->c:Lcom/google/ads/interactivemedia/v3/internal/ek;

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/ei;

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->j(Lcom/google/ads/interactivemedia/v3/internal/ej;)Lcom/google/ads/interactivemedia/v3/internal/en;

    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(Lcom/google/ads/interactivemedia/v3/internal/en;)Lcom/google/ads/interactivemedia/v3/internal/hf;

    move-result-object v0

    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/ej;->k(Lcom/google/ads/interactivemedia/v3/internal/ej;)Lcom/google/ads/interactivemedia/v3/internal/hf;

    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/hf;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    .line 18
    invoke-static {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(Lcom/google/ads/interactivemedia/v3/internal/ej;Lcom/google/ads/interactivemedia/v3/internal/hf;)V

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ej;->l(Lcom/google/ads/interactivemedia/v3/internal/ej;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/hg;

    .line 20
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/hg;->a()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b()I
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/en;->d:Landroid/media/AudioManager;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/en;->f:I

    .line 9
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/en;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/en;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/en;->e:Lcom/google/ads/interactivemedia/v3/internal/em;

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/en;->i:Z

    return-void
.end method
