.class final Lcom/verimatrix/vdc/Foreground;
.super Ljava/lang/Object;
.source "Foreground.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verimatrix/vdc/Foreground$Listener;
    }
.end annotation


# static fields
.field private static final CHECK_DELAY:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "com.verimatrix.vdc.Foreground"

.field private static instance:Lcom/verimatrix/vdc/Foreground;


# instance fields
.field private check:Ljava/lang/Runnable;

.field private foreground:Z

.field private handler:Landroid/os/Handler;

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/verimatrix/vdc/Foreground$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private paused:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/verimatrix/vdc/Foreground;->foreground:Z

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/verimatrix/vdc/Foreground;->paused:Z

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/verimatrix/vdc/Foreground;->handler:Landroid/os/Handler;

    .line 58
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/verimatrix/vdc/Foreground;->listeners:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/verimatrix/vdc/Foreground;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/verimatrix/vdc/Foreground;->foreground:Z

    return p0
.end method

.method static synthetic access$002(Lcom/verimatrix/vdc/Foreground;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/verimatrix/vdc/Foreground;->foreground:Z

    return p1
.end method

.method static synthetic access$100(Lcom/verimatrix/vdc/Foreground;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/verimatrix/vdc/Foreground;->paused:Z

    return p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 46
    sget-object v0, Lcom/verimatrix/vdc/Foreground;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/verimatrix/vdc/Foreground;)Ljava/util/List;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/verimatrix/vdc/Foreground;->listeners:Ljava/util/List;

    return-object p0
.end method

.method static get()Lcom/verimatrix/vdc/Foreground;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 101
    sget-object v0, Lcom/verimatrix/vdc/Foreground;->instance:Lcom/verimatrix/vdc/Foreground;

    if-eqz v0, :cond_0

    return-object v0

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Foreground is not initialised - invoke at least once with parameterised init/get"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static get(Landroid/app/Application;)Lcom/verimatrix/vdc/Foreground;
    .locals 1

    .line 81
    sget-object v0, Lcom/verimatrix/vdc/Foreground;->instance:Lcom/verimatrix/vdc/Foreground;

    if-nez v0, :cond_0

    .line 82
    invoke-static {p0}, Lcom/verimatrix/vdc/Foreground;->init(Landroid/app/Application;)Lcom/verimatrix/vdc/Foreground;

    .line 84
    :cond_0
    sget-object p0, Lcom/verimatrix/vdc/Foreground;->instance:Lcom/verimatrix/vdc/Foreground;

    return-object p0
.end method

.method static get(Landroid/content/Context;)Lcom/verimatrix/vdc/Foreground;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 88
    sget-object v0, Lcom/verimatrix/vdc/Foreground;->instance:Lcom/verimatrix/vdc/Foreground;

    if-nez v0, :cond_1

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 90
    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 91
    check-cast p0, Landroid/app/Application;

    invoke-static {p0}, Lcom/verimatrix/vdc/Foreground;->init(Landroid/app/Application;)Lcom/verimatrix/vdc/Foreground;

    .line 93
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Foreground is not initialised and cannot obtain the Application object"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object v0
.end method

.method static declared-synchronized init(Landroid/app/Application;)Lcom/verimatrix/vdc/Foreground;
    .locals 2

    const-class v0, Lcom/verimatrix/vdc/Foreground;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-object v1, Lcom/verimatrix/vdc/Foreground;->instance:Lcom/verimatrix/vdc/Foreground;

    if-nez v1, :cond_0

    .line 74
    new-instance v1, Lcom/verimatrix/vdc/Foreground;

    invoke-direct {v1}, Lcom/verimatrix/vdc/Foreground;-><init>()V

    sput-object v1, Lcom/verimatrix/vdc/Foreground;->instance:Lcom/verimatrix/vdc/Foreground;

    .line 75
    invoke-virtual {p0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 77
    :cond_0
    sget-object p0, Lcom/verimatrix/vdc/Foreground;->instance:Lcom/verimatrix/vdc/Foreground;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method addListener(Lcom/verimatrix/vdc/Foreground$Listener;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/verimatrix/vdc/Foreground;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method isBackground()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/verimatrix/vdc/Foreground;->foreground:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method isForeground()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/verimatrix/vdc/Foreground;->foreground:Z

    return v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    const/4 p1, 0x1

    .line 151
    iput-boolean p1, p0, Lcom/verimatrix/vdc/Foreground;->paused:Z

    .line 153
    iget-object p1, p0, Lcom/verimatrix/vdc/Foreground;->check:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/verimatrix/vdc/Foreground;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 157
    :cond_0
    new-instance p1, Lcom/verimatrix/vdc/Foreground$1;

    invoke-direct {p1, p0}, Lcom/verimatrix/vdc/Foreground$1;-><init>(Lcom/verimatrix/vdc/Foreground;)V

    iput-object p1, p0, Lcom/verimatrix/vdc/Foreground;->check:Ljava/lang/Runnable;

    .line 175
    iget-object v0, p0, Lcom/verimatrix/vdc/Foreground;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    const/4 p1, 0x0

    .line 127
    iput-boolean p1, p0, Lcom/verimatrix/vdc/Foreground;->paused:Z

    .line 128
    iget-boolean p1, p0, Lcom/verimatrix/vdc/Foreground;->foreground:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    .line 129
    iput-boolean v0, p0, Lcom/verimatrix/vdc/Foreground;->foreground:Z

    .line 131
    iget-object v0, p0, Lcom/verimatrix/vdc/Foreground;->check:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 132
    iget-object v1, p0, Lcom/verimatrix/vdc/Foreground;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 136
    sget-object p1, Lcom/verimatrix/vdc/Foreground;->TAG:Ljava/lang/String;

    const-string v0, "went foreground"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object p1, p0, Lcom/verimatrix/vdc/Foreground;->listeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/verimatrix/vdc/Foreground$Listener;

    .line 139
    :try_start_0
    invoke-interface {v0}, Lcom/verimatrix/vdc/Foreground$Listener;->onBecameForeground()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 141
    sget-object v1, Lcom/verimatrix/vdc/Foreground;->TAG:Ljava/lang/String;

    const-string v2, "Listener threw exception!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 145
    :cond_1
    sget-object p1, Lcom/verimatrix/vdc/Foreground;->TAG:Ljava/lang/String;

    const-string v0, "still foreground"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method removeListener(Lcom/verimatrix/vdc/Foreground$Listener;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/verimatrix/vdc/Foreground;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
