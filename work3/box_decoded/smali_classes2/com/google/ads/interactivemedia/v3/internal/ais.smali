.class final Lcom/google/ads/interactivemedia/v3/internal/ais;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/internal/aiv;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/aiv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ais;->a:Lcom/google/ads/interactivemedia/v3/internal/aiv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ais;->a:Lcom/google/ads/interactivemedia/v3/internal/aiv;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/aiv;->a(Lcom/google/ads/interactivemedia/v3/internal/aiv;)Landroid/app/Activity;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ais;->a:Lcom/google/ads/interactivemedia/v3/internal/aiv;

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/aiv;->a(Lcom/google/ads/interactivemedia/v3/internal/aiv;Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ais;->a:Lcom/google/ads/interactivemedia/v3/internal/aiv;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/aiv;->d(Lcom/google/ads/interactivemedia/v3/internal/aiv;)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->a(Landroid/content/Context;)Landroid/app/Application;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ais;->a:Lcom/google/ads/interactivemedia/v3/internal/aiv;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/aiv;->e(Lcom/google/ads/interactivemedia/v3/internal/aiv;)Lcom/google/ads/interactivemedia/v3/internal/ais;

    move-result-object v0

    .line 3
    invoke-virtual {p1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 5

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ais;->a:Lcom/google/ads/interactivemedia/v3/internal/aiv;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/aiv;->a(Lcom/google/ads/interactivemedia/v3/internal/aiv;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ais;->a:Lcom/google/ads/interactivemedia/v3/internal/aiv;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/aiv;->a(Lcom/google/ads/interactivemedia/v3/internal/aiv;)Landroid/app/Activity;

    move-result-object v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ais;->a:Lcom/google/ads/interactivemedia/v3/internal/aiv;

    .line 4
    invoke-static {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/aiv;->a(Lcom/google/ads/interactivemedia/v3/internal/aiv;Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ais;->a:Lcom/google/ads/interactivemedia/v3/internal/aiv;

    const-string v0, ""

    const-string v1, "inactive"

    .line 5
    invoke-virtual {p1, v0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aiv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/b;

    move-result-object p1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ais;->a:Lcom/google/ads/interactivemedia/v3/internal/aiv;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/aiv;->c(Lcom/google/ads/interactivemedia/v3/internal/aiv;)Lcom/google/ads/interactivemedia/v3/internal/aks;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/akl;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/akj;->activityMonitor:Lcom/google/ads/interactivemedia/v3/internal/akj;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/akk;->appStateChanged:Lcom/google/ads/interactivemedia/v3/internal/akk;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ais;->a:Lcom/google/ads/interactivemedia/v3/internal/aiv;

    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/aiv;->b(Lcom/google/ads/interactivemedia/v3/internal/aiv;)Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-direct {v1, v2, v3, v4, p1}, Lcom/google/ads/interactivemedia/v3/internal/akl;-><init>(Lcom/google/ads/interactivemedia/v3/internal/akj;Lcom/google/ads/interactivemedia/v3/internal/akk;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aks;->b(Lcom/google/ads/interactivemedia/v3/internal/akl;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 5

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ais;->a:Lcom/google/ads/interactivemedia/v3/internal/aiv;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/aiv;->a(Lcom/google/ads/interactivemedia/v3/internal/aiv;)Landroid/app/Activity;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ais;->a:Lcom/google/ads/interactivemedia/v3/internal/aiv;

    const-string v0, ""

    const-string v1, "active"

    .line 8
    invoke-virtual {p1, v0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aiv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/b;

    move-result-object p1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ais;->a:Lcom/google/ads/interactivemedia/v3/internal/aiv;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/aiv;->c(Lcom/google/ads/interactivemedia/v3/internal/aiv;)Lcom/google/ads/interactivemedia/v3/internal/aks;

    move-result-object v0

    .line 9
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/akl;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/akj;->activityMonitor:Lcom/google/ads/interactivemedia/v3/internal/akj;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/akk;->appStateChanged:Lcom/google/ads/interactivemedia/v3/internal/akk;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ais;->a:Lcom/google/ads/interactivemedia/v3/internal/aiv;

    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/aiv;->b(Lcom/google/ads/interactivemedia/v3/internal/aiv;)Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-direct {v1, v2, v3, v4, p1}, Lcom/google/ads/interactivemedia/v3/internal/akl;-><init>(Lcom/google/ads/interactivemedia/v3/internal/akj;Lcom/google/ads/interactivemedia/v3/internal/akk;Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aks;->b(Lcom/google/ads/interactivemedia/v3/internal/akl;)V

    :cond_0
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
