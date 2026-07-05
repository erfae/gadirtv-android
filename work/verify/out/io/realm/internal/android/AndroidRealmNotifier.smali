.class public Lio/realm/internal/android/AndroidRealmNotifier;
.super Lio/realm/internal/RealmNotifier;
.source "AndroidRealmNotifier.java"


# annotations
.annotation build Lio/realm/internal/Keep;
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/Capabilities;)V
    .registers 3
    .param p1    # Lio/realm/internal/OsSharedRealm;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lio/realm/internal/RealmNotifier;-><init>(Lio/realm/internal/OsSharedRealm;)V

    .line 2
    invoke-interface {p2}, Lio/realm/internal/Capabilities;->canDeliverNotification()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 3
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lio/realm/internal/android/AndroidRealmNotifier;->handler:Landroid/os/Handler;

    goto :goto_18

    :cond_15
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lio/realm/internal/android/AndroidRealmNotifier;->handler:Landroid/os/Handler;

    :goto_18
    return-void
.end method


# virtual methods
.method public post(Ljava/lang/Runnable;)Z
    .registers 3

    iget-object v0, p0, Lio/realm/internal/android/AndroidRealmNotifier;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method
