.class Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider$LoadBitmapTask;
.super Landroid/os/AsyncTask;
.source "PlaybackSeekAsyncDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadBitmapTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field mIndex:I

.field mResultCallback:Landroidx/leanback/widget/PlaybackSeekDataProvider$ResultCallback;

.field final synthetic this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;ILandroidx/leanback/widget/PlaybackSeekDataProvider$ResultCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "index",
            "callback"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider$LoadBitmapTask;->this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 47
    iput p2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider$LoadBitmapTask;->mIndex:I

    .line 48
    iput-object p3, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider$LoadBitmapTask;->mResultCallback:Landroidx/leanback/widget/PlaybackSeekDataProvider$ResultCallback;

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 53
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider$LoadBitmapTask;->this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;

    iget v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider$LoadBitmapTask;->mIndex:I

    iget-object v1, p1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;->mSeekPositions:[J

    iget v2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider$LoadBitmapTask;->mIndex:I

    aget-wide v2, v1, v2

    .line 54
    invoke-virtual {p1, p0, v0, v2, v3}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;->doInBackground(Ljava/lang/Object;IJ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "params"
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider$LoadBitmapTask;->doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider$LoadBitmapTask;->this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;->mRequests:Landroid/util/SparseArray;

    iget v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider$LoadBitmapTask;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 60
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider$LoadBitmapTask;->mResultCallback:Landroidx/leanback/widget/PlaybackSeekDataProvider$ResultCallback;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider$LoadBitmapTask;->this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;->mCache:Landroidx/collection/LruCache;

    iget v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider$LoadBitmapTask;->mIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider$LoadBitmapTask;->mResultCallback:Landroidx/leanback/widget/PlaybackSeekDataProvider$ResultCallback;

    iget v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider$LoadBitmapTask;->mIndex:I

    invoke-virtual {v0, p1, v1}, Landroidx/leanback/widget/PlaybackSeekDataProvider$ResultCallback;->onThumbnailLoaded(Landroid/graphics/Bitmap;I)V

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider$LoadBitmapTask;->this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;->mPrefetchCache:Landroidx/collection/LruCache;

    iget v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider$LoadBitmapTask;->mIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "bitmap"
        }
    .end annotation

    .line 41
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider$LoadBitmapTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
