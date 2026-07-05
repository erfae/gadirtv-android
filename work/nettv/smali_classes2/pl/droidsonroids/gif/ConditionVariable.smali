.class Lpl/droidsonroids/gif/ConditionVariable;
.super Ljava/lang/Object;
.source "ConditionVariable.java"


# instance fields
.field private volatile mCondition:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized block()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lpl/droidsonroids/gif/ConditionVariable;->mCondition:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized close()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lpl/droidsonroids/gif/ConditionVariable;->mCondition:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized open()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lpl/droidsonroids/gif/ConditionVariable;->mCondition:Z

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lpl/droidsonroids/gif/ConditionVariable;->mCondition:Z

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized set(Z)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iget-boolean p1, p0, Lpl/droidsonroids/gif/ConditionVariable;->mCondition:Z

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lpl/droidsonroids/gif/ConditionVariable;->mCondition:Z

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :cond_0
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lpl/droidsonroids/gif/ConditionVariable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
