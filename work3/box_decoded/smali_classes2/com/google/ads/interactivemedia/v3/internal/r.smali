.class public final Lcom/google/ads/interactivemedia/v3/internal/r;
.super Ljava/lang/Object;
.source "IMASDK"


# static fields
.field private static final a:Lcom/google/ads/interactivemedia/v3/internal/r;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/content/BroadcastReceiver;

.field private d:Z

.field private e:Z

.field private f:Lcom/google/ads/interactivemedia/v3/internal/w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/r;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/r;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/r;->a:Lcom/google/ads/interactivemedia/v3/internal/r;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/ads/interactivemedia/v3/internal/r;
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/r;->a:Lcom/google/ads/interactivemedia/v3/internal/r;

    return-object v0
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/r;Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/r;->e:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/r;->e:Z

    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/r;->d:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/r;->e()V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/r;->f:Lcom/google/ads/interactivemedia/v3/internal/w;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/r;->d()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/aq;->a()Lcom/google/ads/interactivemedia/v3/internal/aq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aq;->b()V

    return-void

    :cond_0
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/aq;->a()Lcom/google/ads/interactivemedia/v3/internal/aq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aq;->d()V

    :cond_1
    return-void
.end method

.method private final e()V
    .locals 7

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/r;->e:Z

    .line 2
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/p;->a()Lcom/google/ads/interactivemedia/v3/internal/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/p;->b()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/i;

    .line 3
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/i;->e()Lcom/google/ads/interactivemedia/v3/internal/ac;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/ac;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    if-eq v3, v0, :cond_1

    const-string v4, "foregrounded"

    goto :goto_1

    :cond_1
    const-string v4, "backgrounded"

    :goto_1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/v;->a()Lcom/google/ads/interactivemedia/v3/internal/v;

    move-result-object v5

    .line 5
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/ac;->c()Landroid/webkit/WebView;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v3, v6

    const-string v4, "setState"

    .line 6
    invoke-virtual {v5, v2, v4, v3}, Lcom/google/ads/interactivemedia/v3/internal/v;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/r;->b:Landroid/content/Context;

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/w;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/r;->f:Lcom/google/ads/interactivemedia/v3/internal/w;

    return-void
.end method

.method public final b()V
    .locals 3

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/q;

    .line 7
    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/q;-><init>(Lcom/google/ads/interactivemedia/v3/internal/r;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/r;->c:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    .line 8
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/r;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/r;->c:Landroid/content/BroadcastReceiver;

    .line 12
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/r;->d:Z

    .line 13
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/r;->e()V

    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/r;->b:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/r;->c:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_0

    .line 14
    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/r;->c:Landroid/content/BroadcastReceiver;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/r;->d:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/r;->e:Z

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/r;->f:Lcom/google/ads/interactivemedia/v3/internal/w;

    return-void
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/r;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
