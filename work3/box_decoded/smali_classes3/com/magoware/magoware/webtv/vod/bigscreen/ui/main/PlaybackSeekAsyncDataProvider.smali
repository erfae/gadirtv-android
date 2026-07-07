.class public abstract Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;
.super Landroidx/leanback/widget/PlaybackSeekDataProvider;
.source "PlaybackSeekAsyncDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider$LoadBitmapTask;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "SeekAsyncProvider"


# instance fields
.field final mCache:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field mLastRequestedIndex:I

.field final mPrefetchCache:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final mRequests:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider$LoadBitmapTask;",
            ">;"
        }
    .end annotation
.end field

.field mSeekPositions:[J


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x10

    const/16 v1, 0x18

    .line 71
    invoke-direct {p0, v0, v1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cacheSize",
            "prefetchCacheSize"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Landroidx/leanback/widget/PlaybackSeekDataProvider;-><init>()V

    .line 32
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;->mRequests:Landroid/util/SparseArray;

    const/4 v0, -0x1

    .line 33
    iput v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;->mLastRequestedIndex:I

    .line 75
    new-instance v0, Landroidx/collection/LruCache;

    invoke-direct {v0, p1}, Landroidx/collection/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;->mCache:Landroidx/collection/LruCache;

    .line 76
    new-instance p1, Landroidx/collection/LruCache;

    invoke-direct {p1, p2}, Landroidx/collection/LruCache;-><init>(I)V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;->mPrefetchCache:Landroidx/collection/LruCache;

    return-void
.end method


# virtual methods
.method protected abstract doInBackground(Ljava/lang/Object;IJ)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "task",
            "index",
            "position"
        }
    .end annotation
.end method

.method public getSeekPositions()[J
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;->mSeekPositions:[J

    return-object v0
.end method

.method public getThumbnail(ILandroidx/leanback/widget/PlaybackSeekDataProvider$ResultCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "callback"
        }
    .end annotation

    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;->mCache:Landroidx/collection/LruCache;

    invoke-virtual {v1, v0}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {p2, v1, p1}, Landroidx/leanback/widget/PlaybackSeekDataProvider$ResultCallback;->onThumbnailLoaded(Landroid/graphics/Bitmap;I)V

    goto :goto_1

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;->mPrefetchCache:Landroidx/collection/LruCache;

    invoke-virtual {v1, v0}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 97
    iget-object v3, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;->mCache:Landroidx/collection/LruCache;

    invoke-virtual {v3, v0, v1}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v3, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;->mPrefetchCache:Landroidx/collection/LruCache;

    invoke-virtual {v3, v0}, Landroidx/collection/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-virtual {p2, v1, p1}, Landroidx/leanback/widget/PlaybackSeekDataProvider$ResultCallback;->onThumbnailLoaded(Landroid/graphics/Bitmap;I)V

    goto :goto_1

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;->mRequests:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider$LoadBitmapTask;

    if-eqz v0, :cond_3

    .line 102
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider$LoadBitmapTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 109
    :cond_2
    iput-object p2, v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider$LoadBitmapTask;->mResultCallback:Landroidx/leanback/widget/PlaybackSeekDataProvider$ResultCallback;

    goto :goto_1

    .line 104
    :cond_3
    :goto_0
    new-instance v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider$LoadBitmapTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider$LoadBitmapTask;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;ILandroidx/leanback/widget/PlaybackSeekDataProvider$ResultCallback;)V

    .line 105
    iget-object p2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;->mRequests:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 106
    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p2, v1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider$LoadBitmapTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 113
    :goto_1
    iget p2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;->mLastRequestedIndex:I

    if-eq p2, p1, :cond_6

    const/4 v0, -0x1

    if-eq p2, v0, :cond_5

    if-le p1, p2, :cond_4

    const/4 v2, 0x1

    .line 115
    :cond_4
    invoke-virtual {p0, p2, v2}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;->prefetch(IZ)V

    .line 117
    :cond_5
    iput p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;->mLastRequestedIndex:I

    :cond_6
    return-void
.end method

.method protected isCancelled(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .line 36
    check-cast p1, Landroid/os/AsyncTask;

    invoke-virtual {p1}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    return p1
.end method

.method protected prefetch(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "hintIndex",
            "forward"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;->mPrefetchCache:Landroidx/collection/LruCache;

    .line 123
    invoke-virtual {v0}, Landroidx/collection/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 124
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 125
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz p2, :cond_1

    if-ge v2, p1, :cond_0

    goto :goto_1

    :cond_1
    if-le v2, p1, :cond_0

    .line 126
    :goto_1
    iget-object v2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;->mPrefetchCache:Landroidx/collection/LruCache;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v2, v1}, Landroidx/collection/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    const/4 p2, 0x1

    goto :goto_2

    :cond_3
    const/4 p2, -0x1

    .line 131
    :goto_2
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;->mRequests:Landroid/util/SparseArray;

    .line 130
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;->mPrefetchCache:Landroidx/collection/LruCache;

    invoke-virtual {v1}, Landroidx/collection/LruCache;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;->mPrefetchCache:Landroidx/collection/LruCache;

    .line 131
    invoke-virtual {v1}, Landroidx/collection/LruCache;->maxSize()I

    move-result v1

    if-ge v0, v1, :cond_6

    if-lez p2, :cond_4

    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;->mSeekPositions:[J

    array-length v0, v0

    if-ge p1, v0, :cond_6

    goto :goto_3

    :cond_4
    if-ltz p1, :cond_6

    .line 133
    :goto_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;->mCache:Landroidx/collection/LruCache;

    invoke-virtual {v1, v0}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;->mPrefetchCache:Landroidx/collection/LruCache;

    invoke-virtual {v1, v0}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    .line 135
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;->mRequests:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider$LoadBitmapTask;

    if-nez v1, :cond_5

    .line 137
    new-instance v1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider$LoadBitmapTask;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider$LoadBitmapTask;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;ILandroidx/leanback/widget/PlaybackSeekDataProvider$ResultCallback;)V

    .line 138
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;->mRequests:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 139
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider$LoadBitmapTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_5
    add-int/2addr p1, p2

    goto :goto_2

    :cond_6
    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    .line 147
    :goto_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;->mRequests:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;->mRequests:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider$LoadBitmapTask;

    const/4 v2, 0x1

    .line 149
    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider$LoadBitmapTask;->cancel(Z)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;->mRequests:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 152
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;->mCache:Landroidx/collection/LruCache;

    invoke-virtual {v0}, Landroidx/collection/LruCache;->evictAll()V

    .line 153
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;->mPrefetchCache:Landroidx/collection/LruCache;

    invoke-virtual {v0}, Landroidx/collection/LruCache;->evictAll()V

    const/4 v0, -0x1

    .line 154
    iput v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;->mLastRequestedIndex:I

    return-void
.end method

.method public setSeekPositions([J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "positions"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;->mSeekPositions:[J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requests<"

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 161
    :goto_0
    iget-object v2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;->mRequests:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const-string v3, ","

    if-ge v1, v2, :cond_0

    .line 162
    iget-object v2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;->mRequests:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "> Cache<"

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;->mCache:Landroidx/collection/LruCache;

    invoke-virtual {v1}, Landroidx/collection/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 167
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 168
    iget-object v4, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;->mCache:Landroidx/collection/LruCache;

    invoke-virtual {v4, v2}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 169
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v1, ">"

    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> PrefetchCache<"

    .line 174
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    iget-object v2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;->mPrefetchCache:Landroidx/collection/LruCache;

    invoke-virtual {v2}, Landroidx/collection/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 176
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 177
    iget-object v5, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;->mPrefetchCache:Landroidx/collection/LruCache;

    invoke-virtual {v5, v4}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 178
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 182
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
