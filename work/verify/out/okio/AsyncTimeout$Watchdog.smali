.class final Lokio/AsyncTimeout$Watchdog;
.super Ljava/lang/Thread;
.source "AsyncTimeout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/AsyncTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Watchdog"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAsyncTimeout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncTimeout.kt\nokio/AsyncTimeout$Watchdog\n+ 2 -Platform.kt\nokio/-Platform\n*L\n1#1,329:1\n28#2:330\n*E\n*S KotlinDebug\n*F\n+ 1 AsyncTimeout.kt\nokio/AsyncTimeout$Watchdog\n*L\n182#1:330\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0000\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "Lokio/AsyncTimeout$Watchdog;",
        "Ljava/lang/Thread;",
        "()V",
        "run",
        "",
        "okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "Okio Watchdog"

    .line 1
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    :catch_0
    :cond_0
    :goto_0
    :try_start_0
    const-class v0, Lokio/AsyncTimeout;

    .line 2
    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_0

    .line 3
    :try_start_3
    sget-object v1, Lokio/AsyncTimeout;->Companion:Lokio/AsyncTimeout$Companion;

    invoke-virtual {v1}, Lokio/AsyncTimeout$Companion;->awaitTimeout$okio()Lokio/AsyncTimeout;

    move-result-object v1

    .line 4
    # getter for: Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;
    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    move-result-object v2

    if-ne v1, v2, :cond_15

    const/4 v1, 0x0

    .line 5
    invoke-static {v1}, Lokio/AsyncTimeout;->access$setHead$cp(Lokio/AsyncTimeout;)V
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_1e

    .line 6
    :try_start_13
    monitor-exit v0
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_14} :catch_0

    return-void

    .line 7
    :cond_15
    :try_start_15
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_1e

    :try_start_17
    monitor-exit v0

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1}, Lokio/AsyncTimeout;->timedOut()V

    goto :goto_0

    :catchall_1e
    move-exception v1

    .line 9
    monitor-exit v0

    throw v1
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_21} :catch_0
.end method
