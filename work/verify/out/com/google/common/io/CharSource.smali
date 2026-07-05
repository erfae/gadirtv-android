.class public abstract Lcom/google/common/io/CharSource;
.super Ljava/lang/Object;
.source "CharSource.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation runtime Lcom/google/common/io/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/CharSource$ConcatenatedCharSource;,
        Lcom/google/common/io/CharSource$EmptyCharSource;,
        Lcom/google/common/io/CharSource$StringCharSource;,
        Lcom/google/common/io/CharSource$CharSequenceCharSource;,
        Lcom/google/common/io/CharSource$AsByteSource;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static concat(Ljava/lang/Iterable;)Lcom/google/common/io/CharSource;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/common/io/CharSource;",
            ">;)",
            "Lcom/google/common/io/CharSource;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/io/CharSource$ConcatenatedCharSource;

    invoke-direct {v0, p0}, Lcom/google/common/io/CharSource$ConcatenatedCharSource;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static concat(Ljava/util/Iterator;)Lcom/google/common/io/CharSource;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Lcom/google/common/io/CharSource;",
            ">;)",
            "Lcom/google/common/io/CharSource;"
        }
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/io/CharSource;->concat(Ljava/lang/Iterable;)Lcom/google/common/io/CharSource;

    move-result-object p0

    return-object p0
.end method

.method public static varargs concat([Lcom/google/common/io/CharSource;)Lcom/google/common/io/CharSource;
    .registers 1

    .line 3
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/io/CharSource;->concat(Ljava/lang/Iterable;)Lcom/google/common/io/CharSource;

    move-result-object p0

    return-object p0
.end method

.method private countBySkipping(Ljava/io/Reader;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_3
    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {p1, v4, v5}, Ljava/io/Reader;->skip(J)J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-eqz v6, :cond_12

    add-long/2addr v2, v4

    goto :goto_3

    :cond_12
    return-wide v2
.end method

.method public static empty()Lcom/google/common/io/CharSource;
    .registers 1

    # getter for: Lcom/google/common/io/CharSource$EmptyCharSource;->INSTANCE:Lcom/google/common/io/CharSource$EmptyCharSource;
    invoke-static {}, Lcom/google/common/io/CharSource$EmptyCharSource;->access$000()Lcom/google/common/io/CharSource$EmptyCharSource;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(Ljava/lang/CharSequence;)Lcom/google/common/io/CharSource;
    .registers 2

    .line 1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 2
    new-instance v0, Lcom/google/common/io/CharSource$StringCharSource;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/google/common/io/CharSource$StringCharSource;-><init>(Ljava/lang/String;)V

    goto :goto_11

    .line 3
    :cond_c
    new-instance v0, Lcom/google/common/io/CharSource$CharSequenceCharSource;

    invoke-direct {v0, p0}, Lcom/google/common/io/CharSource$CharSequenceCharSource;-><init>(Ljava/lang/CharSequence;)V

    :goto_11
    return-object v0
.end method


# virtual methods
.method public asByteSource(Ljava/nio/charset/Charset;)Lcom/google/common/io/ByteSource;
    .registers 3
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    new-instance v0, Lcom/google/common/io/CharSource$AsByteSource;

    invoke-direct {v0, p0, p1}, Lcom/google/common/io/CharSource$AsByteSource;-><init>(Lcom/google/common/io/CharSource;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public copyTo(Lcom/google/common/io/CharSink;)J
    .registers 5
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 11
    :try_start_7
    invoke-virtual {p0}, Lcom/google/common/io/CharSource;->openStream()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/Reader;

    .line 12
    invoke-virtual {p1}, Lcom/google/common/io/CharSink;->openStream()Ljava/io/Writer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object p1

    check-cast p1, Ljava/io/Writer;

    .line 13
    invoke-static {v1, p1}, Lcom/google/common/io/CharStreams;->copy(Ljava/lang/Readable;Ljava/lang/Appendable;)J

    move-result-wide v1
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_23

    .line 14
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    return-wide v1

    :catchall_23
    move-exception p1

    .line 15
    :try_start_24
    invoke-virtual {v0, p1}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception p1

    .line 16
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 17
    throw p1
.end method

.method public copyTo(Ljava/lang/Appendable;)J
    .registers 5
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 3
    :try_start_7
    invoke-virtual {p0}, Lcom/google/common/io/CharSource;->openStream()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/Reader;

    .line 4
    invoke-static {v1, p1}, Lcom/google/common/io/CharStreams;->copy(Ljava/lang/Readable;Ljava/lang/Appendable;)J

    move-result-wide v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_19

    .line 5
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    return-wide v1

    :catchall_19
    move-exception p1

    .line 6
    :try_start_1a
    invoke-virtual {v0, p1}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception p1

    .line 7
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 8
    throw p1
.end method

.method public isEmpty()Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/io/CharSource;->lengthIfKnown()Lcom/google/common/base/Optional;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1f

    .line 3
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    return v2

    .line 4
    :cond_1f
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 5
    :try_start_23
    invoke-virtual {p0}, Lcom/google/common/io/CharSource;->openStream()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/Reader;

    .line 6
    invoke-virtual {v1}, Ljava/io/Reader;->read()I

    move-result v1
    :try_end_31
    .catchall {:try_start_23 .. :try_end_31} :catchall_3a

    const/4 v4, -0x1

    if-ne v1, v4, :cond_35

    goto :goto_36

    :cond_35
    const/4 v2, 0x0

    .line 7
    :goto_36
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    return v2

    :catchall_3a
    move-exception v1

    .line 8
    :try_start_3b
    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v1

    .line 9
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 10
    throw v1
.end method

.method public length()J
    .registers 4
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/io/CharSource;->lengthIfKnown()Lcom/google/common/base/Optional;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 3
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 4
    :cond_15
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 5
    :try_start_19
    invoke-virtual {p0}, Lcom/google/common/io/CharSource;->openStream()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/Reader;

    .line 6
    invoke-direct {p0, v1}, Lcom/google/common/io/CharSource;->countBySkipping(Ljava/io/Reader;)J

    move-result-wide v1
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_2b

    .line 7
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    return-wide v1

    :catchall_2b
    move-exception v1

    .line 8
    :try_start_2c
    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_31

    :catchall_31
    move-exception v1

    .line 9
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 10
    throw v1
.end method

.method public lengthIfKnown()Lcom/google/common/base/Optional;
    .registers 2
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public openBufferedStream()Ljava/io/BufferedReader;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/io/CharSource;->openStream()Ljava/io/Reader;

    move-result-object v0

    .line 2
    instance-of v1, v0, Ljava/io/BufferedReader;

    if-eqz v1, :cond_b

    .line 3
    check-cast v0, Ljava/io/BufferedReader;

    goto :goto_11

    .line 4
    :cond_b
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v1

    :goto_11
    return-object v0
.end method

.method public abstract openStream()Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public read()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 2
    :try_start_4
    invoke-virtual {p0}, Lcom/google/common/io/CharSource;->openStream()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/Reader;

    .line 3
    invoke-static {v1}, Lcom/google/common/io/CharStreams;->toString(Ljava/lang/Readable;)Ljava/lang/String;

    move-result-object v1
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_16

    .line 4
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    return-object v1

    :catchall_16
    move-exception v1

    .line 5
    :try_start_17
    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_1c

    :catchall_1c
    move-exception v1

    .line 6
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 7
    throw v1
.end method

.method public readFirstLine()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 2
    :try_start_4
    invoke-virtual {p0}, Lcom/google/common/io/CharSource;->openBufferedStream()Ljava/io/BufferedReader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/BufferedReader;

    .line 3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_16

    .line 4
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    return-object v1

    :catchall_16
    move-exception v1

    .line 5
    :try_start_17
    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_1c

    :catchall_1c
    move-exception v1

    .line 6
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 7
    throw v1
.end method

.method public readLines()Lcom/google/common/collect/ImmutableList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 2
    :try_start_4
    invoke-virtual {p0}, Lcom/google/common/io/CharSource;->openBufferedStream()Ljava/io/BufferedReader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/BufferedReader;

    .line 3
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 4
    :goto_12
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1c

    .line 5
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 6
    :cond_1c
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_24

    .line 7
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    return-object v1

    :catchall_24
    move-exception v1

    .line 8
    :try_start_25
    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception v1

    .line 9
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 10
    throw v1
.end method

.method public readLines(Lcom/google/common/io/LineProcessor;)Ljava/lang/Object;
    .registers 4
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation runtime Lcom/google/common/io/ParametricNullness;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/io/LineProcessor<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 13
    :try_start_7
    invoke-virtual {p0}, Lcom/google/common/io/CharSource;->openStream()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/Reader;

    .line 14
    invoke-static {v1, p1}, Lcom/google/common/io/CharStreams;->readLines(Ljava/lang/Readable;Lcom/google/common/io/LineProcessor;)Ljava/lang/Object;

    move-result-object p1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_19

    .line 15
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    return-object p1

    :catchall_19
    move-exception p1

    .line 16
    :try_start_1a
    invoke-virtual {v0, p1}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception p1

    .line 17
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 18
    throw p1
.end method
