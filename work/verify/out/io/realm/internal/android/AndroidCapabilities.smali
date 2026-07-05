.class public Lio/realm/internal/android/AndroidCapabilities;
.super Ljava/lang/Object;
.source "AndroidCapabilities.java"

# interfaces
.implements Lio/realm/internal/Capabilities;


# static fields
.field public static EMULATE_MAIN_THREAD:Z
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "MS_SHOULD_BE_FINAL",
            "MS_CANNOT_BE_FINAL"
        }
    .end annotation
.end field


# instance fields
.field private final isIntentServiceThread:Z

.field private final looper:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lio/realm/internal/android/AndroidCapabilities;->looper:Landroid/os/Looper;

    .line 3
    invoke-static {}, Lio/realm/internal/android/AndroidCapabilities;->isIntentServiceThread()Z

    move-result v0

    iput-boolean v0, p0, Lio/realm/internal/android/AndroidCapabilities;->isIntentServiceThread:Z

    return-void
.end method

.method private hasLooper()Z
    .registers 2

    iget-object v0, p0, Lio/realm/internal/android/AndroidCapabilities;->looper:Landroid/os/Looper;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private static isIntentServiceThread()Z
    .registers 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    const-string v1, "IntentService["

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method


# virtual methods
.method public canDeliverNotification()Z
    .registers 2

    invoke-direct {p0}, Lio/realm/internal/android/AndroidCapabilities;->hasLooper()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lio/realm/internal/android/AndroidCapabilities;->isIntentServiceThread:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public checkCanDeliverNotification(Ljava/lang/String;)V
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lio/realm/internal/android/AndroidCapabilities;->hasLooper()Z

    move-result v0

    const-string v1, ""

    const-string v2, " "

    if-nez v0, :cond_19

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    if-nez p1, :cond_f

    goto :goto_15

    :cond_f
    const-string v1, "Realm cannot be automatically updated on a thread without a looper."

    .line 3
    invoke-static {p1, v2, v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    :goto_15
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_19
    iget-boolean v0, p0, Lio/realm/internal/android/AndroidCapabilities;->isIntentServiceThread:Z

    if-eqz v0, :cond_2c

    .line 6
    new-instance v0, Ljava/lang/IllegalStateException;

    if-nez p1, :cond_22

    goto :goto_28

    :cond_22
    const-string v1, "Realm cannot be automatically updated on an IntentService thread."

    .line 7
    invoke-static {p1, v2, v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    :goto_28
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    return-void
.end method

.method public isMainThread()Z
    .registers 3

    iget-object v0, p0, Lio/realm/internal/android/AndroidCapabilities;->looper:Landroid/os/Looper;

    if-eqz v0, :cond_10

    sget-boolean v1, Lio/realm/internal/android/AndroidCapabilities;->EMULATE_MAIN_THREAD:Z

    if-nez v1, :cond_e

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_10

    :cond_e
    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method
