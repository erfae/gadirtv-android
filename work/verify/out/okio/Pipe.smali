.class public final Lokio/Pipe;
.super Ljava/lang/Object;
.source "Pipe.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPipe.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Pipe.kt\nokio/Pipe\n+ 2 -Platform.kt\nokio/-Platform\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Timeout.kt\nokio/Timeout\n*L\n1#1,250:1\n28#2:251\n28#2:253\n28#2:284\n1#3:252\n186#4,30:254\n*E\n*S KotlinDebug\n*F\n+ 1 Pipe.kt\nokio/Pipe\n*L\n169#1:251\n200#1:253\n243#1:284\n210#1,30:254\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010!\u001a\u00020\"J\u000e\u0010#\u001a\u00020\"2\u0006\u0010\u0017\u001a\u00020\u0010J\r\u0010\u0017\u001a\u00020\u0010H\u0007\u00a2\u0006\u0002\u0008$J\r\u0010\u001b\u001a\u00020\u001cH\u0007\u00a2\u0006\u0002\u0008%J&\u0010&\u001a\u00020\"*\u00020\u00102\u0017\u0010\'\u001a\u0013\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\"0(\u00a2\u0006\u0002\u0008)H\u0082\u0008R\u0014\u0010\u0005\u001a\u00020\u0006X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0013\u0010\u0017\u001a\u00020\u00108G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0012R\u001a\u0010\u0018\u001a\u00020\nX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u000c\"\u0004\u0008\u001a\u0010\u000eR\u0013\u0010\u001b\u001a\u00020\u001c8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\nX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u000c\"\u0004\u0008 \u0010\u000e\u00a8\u0006*"
    }
    d2 = {
        "Lokio/Pipe;",
        "",
        "maxBufferSize",
        "",
        "(J)V",
        "buffer",
        "Lokio/Buffer;",
        "getBuffer$okio",
        "()Lokio/Buffer;",
        "canceled",
        "",
        "getCanceled$okio",
        "()Z",
        "setCanceled$okio",
        "(Z)V",
        "foldedSink",
        "Lokio/Sink;",
        "getFoldedSink$okio",
        "()Lokio/Sink;",
        "setFoldedSink$okio",
        "(Lokio/Sink;)V",
        "getMaxBufferSize$okio",
        "()J",
        "sink",
        "sinkClosed",
        "getSinkClosed$okio",
        "setSinkClosed$okio",
        "source",
        "Lokio/Source;",
        "()Lokio/Source;",
        "sourceClosed",
        "getSourceClosed$okio",
        "setSourceClosed$okio",
        "cancel",
        "",
        "fold",
        "-deprecated_sink",
        "-deprecated_source",
        "forward",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
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
.field private final buffer:Lokio/Buffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private canceled:Z

.field private foldedSink:Lokio/Sink;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final maxBufferSize:J

.field private final sink:Lokio/Sink;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private sinkClosed:Z

.field private final source:Lokio/Source;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private sourceClosed:Z


# direct methods
.method public constructor <init>(J)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lokio/Pipe;->maxBufferSize:J

    .line 2
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-ltz v2, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    if-eqz v0, :cond_26

    .line 3
    new-instance p1, Lokio/Pipe$sink$1;

    invoke-direct {p1, p0}, Lokio/Pipe$sink$1;-><init>(Lokio/Pipe;)V

    iput-object p1, p0, Lokio/Pipe;->sink:Lokio/Sink;

    .line 4
    new-instance p1, Lokio/Pipe$source$1;

    invoke-direct {p1, p0}, Lokio/Pipe$source$1;-><init>(Lokio/Pipe;)V

    iput-object p1, p0, Lokio/Pipe;->source:Lokio/Source;

    return-void

    :cond_26
    const-string v0, "maxBufferSize < 1: "

    .line 5
    invoke-static {v0, p1, p2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static final synthetic access$forward(Lokio/Pipe;Lokio/Sink;Lkotlin/jvm/functions/Function1;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lokio/Pipe;->forward(Lokio/Sink;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final forward(Lokio/Sink;Lkotlin/jvm/functions/Function1;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Sink;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lokio/Sink;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v0

    invoke-virtual {p0}, Lokio/Pipe;->sink()Lokio/Sink;

    move-result-object v1

    invoke-interface {v1}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v2

    .line 3
    sget-object v4, Lokio/Timeout;->Companion:Lokio/Timeout$Companion;

    invoke-virtual {v1}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v5

    invoke-virtual {v0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v7

    invoke-virtual {v4, v5, v6, v7, v8}, Lokio/Timeout$Companion;->minTimeout(JJ)J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v6}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 4
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_6f

    .line 5
    invoke-virtual {v0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v7

    .line 6
    invoke-virtual {v1}, Lokio/Timeout;->hasDeadline()Z

    move-result v4

    if-eqz v4, :cond_43

    .line 7
    invoke-virtual {v0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v9

    invoke-virtual {v1}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 8
    :cond_43
    :try_start_43
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_59

    invoke-static {v5}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 9
    invoke-virtual {v0, v2, v3, v6}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 10
    invoke-virtual {v1}, Lokio/Timeout;->hasDeadline()Z

    move-result p1

    if-eqz p1, :cond_55

    .line 11
    invoke-virtual {v0, v7, v8}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_55
    invoke-static {v5}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    goto :goto_91

    :catchall_59
    move-exception p1

    .line 12
    invoke-static {v5}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 13
    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, p2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 14
    invoke-virtual {v1}, Lokio/Timeout;->hasDeadline()Z

    move-result p2

    if-eqz p2, :cond_6b

    .line 15
    invoke-virtual {v0, v7, v8}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_6b
    invoke-static {v5}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw p1

    .line 16
    :cond_6f
    invoke-virtual {v1}, Lokio/Timeout;->hasDeadline()Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 17
    invoke-virtual {v1}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 18
    :cond_7c
    :try_start_7c
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_92

    invoke-static {v5}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 19
    invoke-virtual {v0, v2, v3, v6}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 20
    invoke-virtual {v1}, Lokio/Timeout;->hasDeadline()Z

    move-result p1

    if-eqz p1, :cond_8e

    .line 21
    invoke-virtual {v0}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :cond_8e
    invoke-static {v5}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    :goto_91
    return-void

    :catchall_92
    move-exception p1

    .line 22
    invoke-static {v5}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 23
    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, p2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 24
    invoke-virtual {v1}, Lokio/Timeout;->hasDeadline()Z

    move-result p2

    if-eqz p2, :cond_a4

    .line 25
    invoke-virtual {v0}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :cond_a4
    invoke-static {v5}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw p1
.end method


# virtual methods
.method public final -deprecated_sink()Lokio/Sink;
    .registers 2
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "sink"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_sink"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lokio/Pipe;->sink:Lokio/Sink;

    return-object v0
.end method

.method public final -deprecated_source()Lokio/Source;
    .registers 2
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "source"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "-deprecated_source"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lokio/Pipe;->source:Lokio/Source;

    return-object v0
.end method

.method public final cancel()V
    .registers 4

    .line 1
    iget-object v0, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    .line 2
    monitor-enter v0

    const/4 v1, 0x1

    .line 3
    :try_start_4
    iput-boolean v1, p0, Lokio/Pipe;->canceled:Z

    .line 4
    iget-object v1, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->clear()V

    .line 5
    iget-object v1, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 6
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_1e

    monitor-exit v0

    return-void

    .line 7
    :cond_16
    :try_start_16
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception v1

    .line 8
    monitor-exit v0

    throw v1
.end method

.method public final fold(Lokio/Sink;)V
    .registers 9
    .param p1    # Lokio/Sink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :goto_5
    iget-object v0, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_8
    iget-object v1, p0, Lokio/Pipe;->foldedSink:Lokio/Sink;

    const/4 v2, 0x1

    if-nez v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    if-eqz v1, :cond_7d

    .line 4
    iget-boolean v1, p0, Lokio/Pipe;->canceled:Z

    if-nez v1, :cond_73

    .line 5
    iget-object v1, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->exhausted()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 6
    iput-boolean v2, p0, Lokio/Pipe;->sourceClosed:Z

    .line 7
    iput-object p1, p0, Lokio/Pipe;->foldedSink:Lokio/Sink;
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_89

    .line 8
    monitor-exit v0

    return-void

    .line 9
    :cond_24
    :try_start_24
    iget-boolean v1, p0, Lokio/Pipe;->sinkClosed:Z

    .line 10
    new-instance v3, Lokio/Buffer;

    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    .line 11
    iget-object v4, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 12
    iget-object v4, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    if-eqz v4, :cond_6b

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 13
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3d
    .catchall {:try_start_24 .. :try_end_3d} :catchall_89

    monitor-exit v0

    .line 14
    :try_start_3e
    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v4

    invoke-interface {p1, v3, v4, v5}, Lokio/Sink;->write(Lokio/Buffer;J)V

    if-eqz v1, :cond_4b

    .line 15
    invoke-interface {p1}, Lokio/Sink;->close()V

    goto :goto_5

    .line 16
    :cond_4b
    invoke-interface {p1}, Lokio/Sink;->flush()V
    :try_end_4e
    .catchall {:try_start_3e .. :try_end_4e} :catchall_4f

    goto :goto_5

    :catchall_4f
    move-exception p1

    .line 17
    iget-object v0, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    .line 18
    monitor-enter v0

    .line 19
    :try_start_53
    iput-boolean v2, p0, Lokio/Pipe;->sourceClosed:Z

    .line 20
    iget-object v1, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    if-nez v1, :cond_61

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_61
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 21
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_66
    .catchall {:try_start_53 .. :try_end_66} :catchall_68

    monitor-exit v0

    .line 22
    throw p1

    :catchall_68
    move-exception p1

    .line 23
    monitor-exit v0

    throw p1

    .line 24
    :cond_6b
    :try_start_6b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_73
    iput-object p1, p0, Lokio/Pipe;->foldedSink:Lokio/Sink;

    .line 26
    new-instance p1, Ljava/io/IOException;

    const-string v1, "canceled"

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7d
    const-string p1, "sink already folded"

    .line 27
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_89
    .catchall {:try_start_6b .. :try_end_89} :catchall_89

    :catchall_89
    move-exception p1

    .line 28
    monitor-exit v0

    throw p1
.end method

.method public final getBuffer$okio()Lokio/Buffer;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    return-object v0
.end method

.method public final getCanceled$okio()Z
    .registers 2

    iget-boolean v0, p0, Lokio/Pipe;->canceled:Z

    return v0
.end method

.method public final getFoldedSink$okio()Lokio/Sink;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lokio/Pipe;->foldedSink:Lokio/Sink;

    return-object v0
.end method

.method public final getMaxBufferSize$okio()J
    .registers 3

    iget-wide v0, p0, Lokio/Pipe;->maxBufferSize:J

    return-wide v0
.end method

.method public final getSinkClosed$okio()Z
    .registers 2

    iget-boolean v0, p0, Lokio/Pipe;->sinkClosed:Z

    return v0
.end method

.method public final getSourceClosed$okio()Z
    .registers 2

    iget-boolean v0, p0, Lokio/Pipe;->sourceClosed:Z

    return v0
.end method

.method public final setCanceled$okio(Z)V
    .registers 2

    iput-boolean p1, p0, Lokio/Pipe;->canceled:Z

    return-void
.end method

.method public final setFoldedSink$okio(Lokio/Sink;)V
    .registers 2
    .param p1    # Lokio/Sink;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lokio/Pipe;->foldedSink:Lokio/Sink;

    return-void
.end method

.method public final setSinkClosed$okio(Z)V
    .registers 2

    iput-boolean p1, p0, Lokio/Pipe;->sinkClosed:Z

    return-void
.end method

.method public final setSourceClosed$okio(Z)V
    .registers 2

    iput-boolean p1, p0, Lokio/Pipe;->sourceClosed:Z

    return-void
.end method

.method public final sink()Lokio/Sink;
    .registers 2
    .annotation build Lkotlin/jvm/JvmName;
        name = "sink"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lokio/Pipe;->sink:Lokio/Sink;

    return-object v0
.end method

.method public final source()Lokio/Source;
    .registers 2
    .annotation build Lkotlin/jvm/JvmName;
        name = "source"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lokio/Pipe;->source:Lokio/Source;

    return-object v0
.end method
