.class public final Lokhttp3/internal/cache/DiskLruCache$cleanupTask$1;
.super Lokhttp3/internal/concurrent/Task;
.source "DiskLruCache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/cache/DiskLruCache;-><init>(Lokhttp3/internal/io/FileSystem;Ljava/io/File;IIJLokhttp3/internal/concurrent/TaskRunner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "okhttp3/internal/cache/DiskLruCache$cleanupTask$1",
        "Lokhttp3/internal/concurrent/Task;",
        "runOnce",
        "",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lokhttp3/internal/cache/DiskLruCache;


# direct methods
.method public constructor <init>(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$cleanupTask$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    const/4 p1, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p2, p1, v0, v1}, Lokhttp3/internal/concurrent/Task;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public runOnce()J
    .registers 7

    .line 1
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$cleanupTask$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$cleanupTask$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    # getter for: Lokhttp3/internal/cache/DiskLruCache;->initialized:Z
    invoke-static {v1}, Lokhttp3/internal/cache/DiskLruCache;->access$getInitialized$p(Lokhttp3/internal/cache/DiskLruCache;)Z

    move-result v1

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$cleanupTask$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache;->getClosed$okhttp()Z

    move-result v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_4c

    if-eqz v1, :cond_16

    goto :goto_4a

    :cond_16
    const/4 v1, 0x1

    .line 3
    :try_start_17
    iget-object v4, p0, Lokhttp3/internal/cache/DiskLruCache$cleanupTask$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v4}, Lokhttp3/internal/cache/DiskLruCache;->trimToSize()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1c} :catch_1d
    .catchall {:try_start_17 .. :try_end_1c} :catchall_4c

    goto :goto_22

    .line 4
    :catch_1d
    :try_start_1d
    iget-object v4, p0, Lokhttp3/internal/cache/DiskLruCache$cleanupTask$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-static {v4, v1}, Lokhttp3/internal/cache/DiskLruCache;->access$setMostRecentTrimFailed$p(Lokhttp3/internal/cache/DiskLruCache;Z)V
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_4c

    .line 5
    :goto_22
    :try_start_22
    iget-object v4, p0, Lokhttp3/internal/cache/DiskLruCache$cleanupTask$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    # invokes: Lokhttp3/internal/cache/DiskLruCache;->journalRebuildRequired()Z
    invoke-static {v4}, Lokhttp3/internal/cache/DiskLruCache;->access$journalRebuildRequired(Lokhttp3/internal/cache/DiskLruCache;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 6
    iget-object v4, p0, Lokhttp3/internal/cache/DiskLruCache$cleanupTask$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v4}, Lokhttp3/internal/cache/DiskLruCache;->rebuildJournal$okhttp()V

    .line 7
    iget-object v4, p0, Lokhttp3/internal/cache/DiskLruCache$cleanupTask$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lokhttp3/internal/cache/DiskLruCache;->access$setRedundantOpCount$p(Lokhttp3/internal/cache/DiskLruCache;I)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_35} :catch_36
    .catchall {:try_start_22 .. :try_end_35} :catchall_4c

    goto :goto_48

    .line 8
    :catch_36
    :try_start_36
    iget-object v4, p0, Lokhttp3/internal/cache/DiskLruCache$cleanupTask$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-static {v4, v1}, Lokhttp3/internal/cache/DiskLruCache;->access$setMostRecentRebuildFailed$p(Lokhttp3/internal/cache/DiskLruCache;Z)V

    .line 9
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$cleanupTask$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-static {}, Lokio/Okio;->blackhole()Lokio/Sink;

    move-result-object v4

    invoke-static {v4}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v4

    invoke-static {v1, v4}, Lokhttp3/internal/cache/DiskLruCache;->access$setJournalWriter$p(Lokhttp3/internal/cache/DiskLruCache;Lokio/BufferedSink;)V
    :try_end_48
    .catchall {:try_start_36 .. :try_end_48} :catchall_4c

    .line 10
    :cond_48
    :goto_48
    monitor-exit v0

    return-wide v2

    .line 11
    :cond_4a
    :goto_4a
    monitor-exit v0

    return-wide v2

    :catchall_4c
    move-exception v1

    .line 12
    monitor-exit v0

    throw v1
.end method
