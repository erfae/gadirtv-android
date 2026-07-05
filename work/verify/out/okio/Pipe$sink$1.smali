.class public final Lokio/Pipe$sink$1;
.super Ljava/lang/Object;
.source "Pipe.kt"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/Pipe;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPipe.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Pipe.kt\nokio/Pipe$sink$1\n+ 2 -Platform.kt\nokio/-Platform\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Pipe.kt\nokio/Pipe\n+ 5 Timeout.kt\nokio/Timeout\n*L\n1#1,250:1\n28#2:251\n28#2:285\n28#2:318\n1#3:252\n210#4:253\n211#4:284\n210#4:286\n211#4:317\n210#4:319\n211#4:350\n186#5,30:254\n186#5,30:287\n186#5,30:320\n*E\n*S KotlinDebug\n*F\n+ 1 Pipe.kt\nokio/Pipe$sink$1\n*L\n54#1:251\n85#1:285\n104#1:318\n80#1:253\n80#1:284\n99#1:286\n99#1:317\n117#1:319\n117#1:350\n80#1,30:254\n99#1,30:287\n117#1,30:320\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0005H\u0016J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0018\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "okio/Pipe$sink$1",
        "Lokio/Sink;",
        "timeout",
        "Lokio/Timeout;",
        "close",
        "",
        "flush",
        "write",
        "source",
        "Lokio/Buffer;",
        "byteCount",
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


# instance fields
.field public final synthetic this$0:Lokio/Pipe;

.field private final timeout:Lokio/Timeout;


# direct methods
.method public constructor <init>(Lokio/Pipe;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lokio/Timeout;

    invoke-direct {p1}, Lokio/Timeout;-><init>()V

    iput-object p1, p0, Lokio/Pipe$sink$1;->timeout:Lokio/Timeout;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 13

    .line 1
    iget-object v0, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v0}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v0

    .line 2
    monitor-enter v0

    .line 3
    :try_start_7
    iget-object v1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v1}, Lokio/Pipe;->getSinkClosed$okio()Z

    move-result v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_ec

    if-eqz v1, :cond_11

    monitor-exit v0

    return-void

    .line 4
    :cond_11
    :try_start_11
    iget-object v1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v1}, Lokio/Pipe;->getFoldedSink$okio()Lokio/Sink;

    move-result-object v1

    if-eqz v1, :cond_1a

    goto :goto_4d

    .line 5
    :cond_1a
    iget-object v1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v1}, Lokio/Pipe;->getSourceClosed$okio()Z

    move-result v1

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v1}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v1

    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_33

    goto :goto_3b

    :cond_33
    new-instance v1, Ljava/io/IOException;

    const-string v2, "source is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6
    :cond_3b
    :goto_3b
    iget-object v1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lokio/Pipe;->setSinkClosed$okio(Z)V

    .line 7
    iget-object v1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v1}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v1

    if-eqz v1, :cond_e4

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    const/4 v1, 0x0

    .line 8
    :goto_4d
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4f
    .catchall {:try_start_11 .. :try_end_4f} :catchall_ec

    monitor-exit v0

    if-eqz v1, :cond_e3

    .line 9
    iget-object v0, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    .line 10
    invoke-interface {v1}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v2

    invoke-virtual {v0}, Lokio/Pipe;->sink()Lokio/Sink;

    move-result-object v0

    invoke-interface {v0}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v0

    .line 11
    invoke-virtual {v2}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v3

    .line 12
    sget-object v5, Lokio/Timeout;->Companion:Lokio/Timeout$Companion;

    invoke-virtual {v0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v6

    invoke-virtual {v2}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v8

    invoke-virtual {v5, v6, v7, v8, v9}, Lokio/Timeout$Companion;->minTimeout(JJ)J

    move-result-wide v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v5, v6, v7}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 13
    invoke-virtual {v2}, Lokio/Timeout;->hasDeadline()Z

    move-result v5

    if-eqz v5, :cond_b6

    .line 14
    invoke-virtual {v2}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v5

    .line 15
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    move-result v8

    if-eqz v8, :cond_96

    .line 16
    invoke-virtual {v2}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v8

    invoke-virtual {v0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 17
    :cond_96
    :try_start_96
    invoke-interface {v1}, Lokio/Sink;->close()V
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_a6

    .line 18
    invoke-virtual {v2, v3, v4, v7}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 19
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 20
    invoke-virtual {v2, v5, v6}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    goto :goto_e3

    :catchall_a6
    move-exception v1

    .line 21
    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v7}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 22
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 23
    invoke-virtual {v2, v5, v6}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_b5
    throw v1

    .line 24
    :cond_b6
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    move-result v5

    if-eqz v5, :cond_c3

    .line 25
    invoke-virtual {v0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 26
    :cond_c3
    :try_start_c3
    invoke-interface {v1}, Lokio/Sink;->close()V
    :try_end_c6
    .catchall {:try_start_c3 .. :try_end_c6} :catchall_d3

    .line 27
    invoke-virtual {v2, v3, v4, v7}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 28
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 29
    invoke-virtual {v2}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    goto :goto_e3

    :catchall_d3
    move-exception v1

    .line 30
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 31
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 32
    invoke-virtual {v2}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :cond_e2
    throw v1

    :cond_e3
    :goto_e3
    return-void

    .line 33
    :cond_e4
    :try_start_e4
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_ec
    .catchall {:try_start_e4 .. :try_end_ec} :catchall_ec

    :catchall_ec
    move-exception v1

    .line 34
    monitor-exit v0

    throw v1
.end method

.method public flush()V
    .registers 13

    .line 1
    iget-object v0, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v0}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v0

    .line 2
    monitor-enter v0

    .line 3
    :try_start_7
    iget-object v1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v1}, Lokio/Pipe;->getSinkClosed$okio()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_e3

    .line 4
    iget-object v1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v1}, Lokio/Pipe;->getCanceled$okio()Z

    move-result v1

    if-nez v1, :cond_db

    .line 5
    iget-object v1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v1}, Lokio/Pipe;->getFoldedSink$okio()Lokio/Sink;

    move-result-object v1

    if-eqz v1, :cond_22

    goto :goto_44

    .line 6
    :cond_22
    iget-object v1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v1}, Lokio/Pipe;->getSourceClosed$okio()Z

    move-result v1

    if-eqz v1, :cond_43

    iget-object v1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v1}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v1

    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_3b

    goto :goto_43

    .line 7
    :cond_3b
    new-instance v1, Ljava/io/IOException;

    const-string v2, "source is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_43
    :goto_43
    const/4 v1, 0x0

    .line 8
    :goto_44
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_46
    .catchall {:try_start_7 .. :try_end_46} :catchall_ef

    monitor-exit v0

    if-eqz v1, :cond_da

    .line 9
    iget-object v0, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    .line 10
    invoke-interface {v1}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v2

    invoke-virtual {v0}, Lokio/Pipe;->sink()Lokio/Sink;

    move-result-object v0

    invoke-interface {v0}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v0

    .line 11
    invoke-virtual {v2}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v3

    .line 12
    sget-object v5, Lokio/Timeout;->Companion:Lokio/Timeout$Companion;

    invoke-virtual {v0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v6

    invoke-virtual {v2}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v8

    invoke-virtual {v5, v6, v7, v8, v9}, Lokio/Timeout$Companion;->minTimeout(JJ)J

    move-result-wide v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v5, v6, v7}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 13
    invoke-virtual {v2}, Lokio/Timeout;->hasDeadline()Z

    move-result v5

    if-eqz v5, :cond_ad

    .line 14
    invoke-virtual {v2}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v5

    .line 15
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    move-result v8

    if-eqz v8, :cond_8d

    .line 16
    invoke-virtual {v2}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v8

    invoke-virtual {v0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 17
    :cond_8d
    :try_start_8d
    invoke-interface {v1}, Lokio/Sink;->flush()V
    :try_end_90
    .catchall {:try_start_8d .. :try_end_90} :catchall_9d

    .line 18
    invoke-virtual {v2, v3, v4, v7}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 19
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_da

    .line 20
    invoke-virtual {v2, v5, v6}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    goto :goto_da

    :catchall_9d
    move-exception v1

    .line 21
    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v7}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 22
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 23
    invoke-virtual {v2, v5, v6}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_ac
    throw v1

    .line 24
    :cond_ad
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    move-result v5

    if-eqz v5, :cond_ba

    .line 25
    invoke-virtual {v0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 26
    :cond_ba
    :try_start_ba
    invoke-interface {v1}, Lokio/Sink;->flush()V
    :try_end_bd
    .catchall {:try_start_ba .. :try_end_bd} :catchall_ca

    .line 27
    invoke-virtual {v2, v3, v4, v7}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 28
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_da

    .line 29
    invoke-virtual {v2}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    goto :goto_da

    :catchall_ca
    move-exception v1

    .line 30
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 31
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 32
    invoke-virtual {v2}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :cond_d9
    throw v1

    :cond_da
    :goto_da
    return-void

    .line 33
    :cond_db
    :try_start_db
    new-instance v1, Ljava/io/IOException;

    const-string v2, "canceled"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e3
    const-string v1, "closed"

    .line 34
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_ef
    .catchall {:try_start_db .. :try_end_ef} :catchall_ef

    :catchall_ef
    move-exception v1

    .line 35
    monitor-exit v0

    throw v1
.end method

.method public timeout()Lokio/Timeout;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lokio/Pipe$sink$1;->timeout:Lokio/Timeout;

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .registers 16
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v0}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v0

    .line 2
    monitor-enter v0

    .line 3
    :try_start_c
    iget-object v1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v1}, Lokio/Pipe;->getSinkClosed$okio()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_130

    .line 4
    iget-object v1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v1}, Lokio/Pipe;->getCanceled$okio()Z

    move-result v1

    if-nez v1, :cond_128

    :goto_1e
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_90

    .line 5
    iget-object v3, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v3}, Lokio/Pipe;->getFoldedSink$okio()Lokio/Sink;

    move-result-object v3

    if-eqz v3, :cond_2d

    goto :goto_91

    .line 6
    :cond_2d
    iget-object v3, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v3}, Lokio/Pipe;->getSourceClosed$okio()Z

    move-result v3

    if-nez v3, :cond_88

    .line 7
    iget-object v3, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v3}, Lokio/Pipe;->getMaxBufferSize$okio()J

    move-result-wide v3

    iget-object v5, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v5}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v5

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long v5, v3, v1

    if-nez v5, :cond_66

    .line 8
    iget-object v1, p0, Lokio/Pipe$sink$1;->timeout:Lokio/Timeout;

    iget-object v2, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v2}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    .line 9
    iget-object v1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v1}, Lokio/Pipe;->getCanceled$okio()Z

    move-result v1

    if-nez v1, :cond_5e

    goto :goto_1e

    :cond_5e
    new-instance p1, Ljava/io/IOException;

    const-string p2, "canceled"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_66
    invoke-static {v3, v4, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 11
    iget-object v3, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v3}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v3

    invoke-virtual {v3, p1, v1, v2}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    sub-long/2addr p2, v1

    .line 12
    iget-object v1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v1}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v1

    if-eqz v1, :cond_80

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_1e

    :cond_80
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_88
    new-instance p1, Ljava/io/IOException;

    const-string p2, "source is closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_90
    const/4 v3, 0x0

    .line 14
    :goto_91
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_93
    .catchall {:try_start_c .. :try_end_93} :catchall_13c

    monitor-exit v0

    if-eqz v3, :cond_127

    .line 15
    iget-object v0, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    .line 16
    invoke-interface {v3}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v1

    invoke-virtual {v0}, Lokio/Pipe;->sink()Lokio/Sink;

    move-result-object v0

    invoke-interface {v0}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v0

    .line 17
    invoke-virtual {v1}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v4

    .line 18
    sget-object v2, Lokio/Timeout;->Companion:Lokio/Timeout$Companion;

    invoke-virtual {v0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v6

    invoke-virtual {v1}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v8

    invoke-virtual {v2, v6, v7, v8, v9}, Lokio/Timeout$Companion;->minTimeout(JJ)J

    move-result-wide v6

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v6, v7, v2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 19
    invoke-virtual {v1}, Lokio/Timeout;->hasDeadline()Z

    move-result v6

    if-eqz v6, :cond_fa

    .line 20
    invoke-virtual {v1}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v6

    .line 21
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    move-result v8

    if-eqz v8, :cond_da

    .line 22
    invoke-virtual {v1}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v8

    invoke-virtual {v0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 23
    :cond_da
    :try_start_da
    invoke-interface {v3, p1, p2, p3}, Lokio/Sink;->write(Lokio/Buffer;J)V
    :try_end_dd
    .catchall {:try_start_da .. :try_end_dd} :catchall_ea

    .line 24
    invoke-virtual {v1, v4, v5, v2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 25
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    move-result p1

    if-eqz p1, :cond_127

    .line 26
    invoke-virtual {v1, v6, v7}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    goto :goto_127

    :catchall_ea
    move-exception p1

    .line 27
    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, p2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 28
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    move-result p2

    if-eqz p2, :cond_f9

    .line 29
    invoke-virtual {v1, v6, v7}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_f9
    throw p1

    .line 30
    :cond_fa
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    move-result v6

    if-eqz v6, :cond_107

    .line 31
    invoke-virtual {v0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 32
    :cond_107
    :try_start_107
    invoke-interface {v3, p1, p2, p3}, Lokio/Sink;->write(Lokio/Buffer;J)V
    :try_end_10a
    .catchall {:try_start_107 .. :try_end_10a} :catchall_117

    .line 33
    invoke-virtual {v1, v4, v5, v2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 34
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    move-result p1

    if-eqz p1, :cond_127

    .line 35
    invoke-virtual {v1}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    goto :goto_127

    :catchall_117
    move-exception p1

    .line 36
    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, p2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 37
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    move-result p2

    if-eqz p2, :cond_126

    .line 38
    invoke-virtual {v1}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :cond_126
    throw p1

    :cond_127
    :goto_127
    return-void

    .line 39
    :cond_128
    :try_start_128
    new-instance p1, Ljava/io/IOException;

    const-string p2, "canceled"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_130
    const-string p1, "closed"

    .line 40
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_13c
    .catchall {:try_start_128 .. :try_end_13c} :catchall_13c

    :catchall_13c
    move-exception p1

    .line 41
    monitor-exit v0

    throw p1
.end method
