.class Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/vr/ndk/base/GvrApi$IdleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/ndk/base/GvrLayoutImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScreenOnManager"
.end annotation


# static fields
.field private static final QUIET_PERIOD_AFTER_RESUME_MILLIS:J


# instance fields
.field private isEnabled:Z

.field private isIdle:Z

.field private isResumed:Z

.field private lastResumeTimeMillis:J

.field private final parentView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;->QUIET_PERIOD_AFTER_RESUME_MILLIS:J

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;->isEnabled:Z

    .line 3
    iput-object p1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;->parentView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$1000(Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;->isIdle:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;->isIdle:Z

    return p1
.end method

.method static synthetic access$600(Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;->isEnabled:Z

    return p0
.end method

.method static synthetic access$602(Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;->isEnabled:Z

    return p1
.end method

.method static synthetic access$700(Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;->updateSetScreenOn()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;)J
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;->lastResumeTimeMillis:J

    return-wide v0
.end method

.method static synthetic access$900()J
    .locals 2

    .line 23
    sget-wide v0, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;->QUIET_PERIOD_AFTER_RESUME_MILLIS:J

    return-wide v0
.end method

.method private updateSetScreenOn()V
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;->parentView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;->isEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;->isResumed:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;->isIdle:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    return-void
.end method


# virtual methods
.method public onIdleChanged(Z)V
    .locals 1

    .line 15
    new-instance v0, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager$2;

    invoke-direct {v0, p0, p1}, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager$2;-><init>(Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;Z)V

    invoke-static {v0}, Lcom/google/vr/cardboard/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;->isResumed:Z

    .line 11
    invoke-direct {p0}, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;->updateSetScreenOn()V

    return-void
.end method

.method public onResume()V
    .locals 2

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;->isResumed:Z

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;->isIdle:Z

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;->lastResumeTimeMillis:J

    .line 8
    invoke-direct {p0}, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;->updateSetScreenOn()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 13
    new-instance v0, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager$1;

    invoke-direct {v0, p0, p1}, Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager$1;-><init>(Lcom/google/vr/ndk/base/GvrLayoutImpl$ScreenOnManager;Z)V

    invoke-static {v0}, Lcom/google/vr/cardboard/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
