.class public Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekDiskDataProvider;
.super Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;
.source "PlaybackSeekDiskDataProvider.java"


# instance fields
.field final mPaint:Landroid/graphics/Paint;

.field final mPathPattern:Ljava/lang/String;


# direct methods
.method constructor <init>(JJLjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "duration",
            "interval",
            "pathPattern"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekAsyncDataProvider;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    const-wide/16 p3, 0x1

    .line 32
    :cond_0
    iput-object p5, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekDiskDataProvider;->mPathPattern:Ljava/lang/String;

    .line 33
    div-long p3, p1, p3

    long-to-int p4, p3

    add-int/lit8 p4, p4, 0x1

    .line 34
    new-array p3, p4, [J

    const/4 p5, 0x0

    :goto_0
    if-ge p5, p4, :cond_1

    int-to-long v0, p5

    mul-long v0, v0, p1

    int-to-long v2, p4

    .line 36
    div-long/2addr v0, v2

    aput-wide v0, p3, p5

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p0, p3}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekDiskDataProvider;->setSeekPositions([J)V

    .line 39
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekDiskDataProvider;->mPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x41800000    # 16.0f

    .line 40
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    const p2, -0xffff01

    .line 41
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public static setDemoSeekProvider(Landroidx/leanback/media/PlaybackTransportControlGlue;J)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "glue",
            "duration"
        }
    .end annotation

    .line 97
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackTransportControlGlue;->isPrepared()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 98
    new-instance p1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekDiskDataProvider;

    .line 99
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackTransportControlGlue;->getDuration()J

    move-result-wide v1

    .line 100
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackTransportControlGlue;->getDuration()J

    move-result-wide v3

    const-wide/16 v5, 0x64

    div-long/2addr v3, v5

    const-string v5, ""

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekDiskDataProvider;-><init>(JJLjava/lang/String;)V

    .line 98
    invoke-virtual {p0, p1}, Landroidx/leanback/media/PlaybackTransportControlGlue;->setSeekProvider(Landroidx/leanback/widget/PlaybackSeekDataProvider;)V

    goto :goto_0

    .line 103
    :cond_0
    new-instance p1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekDiskDataProvider$2;

    invoke-direct {p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekDiskDataProvider$2;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/leanback/media/PlaybackTransportControlGlue;->addPlayerCallback(Landroidx/leanback/media/PlaybackGlue$PlayerCallback;)V

    :goto_0
    return-void
.end method

.method public static setDemoSeekProvider(Landroidx/leanback/media/PlaybackTransportControlGlue;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "glue",
            "url"
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackTransportControlGlue;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekDiskDataProvider;

    .line 73
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackTransportControlGlue;->getDuration()J

    move-result-wide v2

    .line 74
    invoke-virtual {p0}, Landroidx/leanback/media/PlaybackTransportControlGlue;->getDuration()J

    move-result-wide v4

    const-wide/16 v6, 0x64

    div-long/2addr v4, v6

    move-object v1, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekDiskDataProvider;-><init>(JJLjava/lang/String;)V

    .line 72
    invoke-virtual {p0, v0}, Landroidx/leanback/media/PlaybackTransportControlGlue;->setSeekProvider(Landroidx/leanback/widget/PlaybackSeekDataProvider;)V

    goto :goto_0

    .line 78
    :cond_0
    new-instance v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekDiskDataProvider$1;

    invoke-direct {v0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekDiskDataProvider$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/leanback/media/PlaybackTransportControlGlue;->addPlayerCallback(Landroidx/leanback/media/PlaybackGlue$PlayerCallback;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected doInBackground(Ljava/lang/Object;IJ)Landroid/graphics/Bitmap;
    .locals 3
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

    const-wide/16 p3, 0x64

    .line 46
    :try_start_0
    invoke-static {p3, p4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 50
    :goto_0
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekDiskDataProvider;->isCancelled(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekDiskDataProvider;->mPathPattern:Ljava/lang/String;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    add-int/lit8 v0, p2, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, p4

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 54
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 55
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 57
    :cond_1
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 p4, 0xa0

    invoke-static {p4, p4, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 58
    new-instance p4, Landroid/graphics/Canvas;

    invoke-direct {p4, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v0, -0x100

    .line 59
    invoke-virtual {p4, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    const/high16 v0, 0x42a00000    # 80.0f

    .line 60
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekDiskDataProvider;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {p4, p1, v2, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 61
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/high16 p2, 0x43160000    # 150.0f

    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekDiskDataProvider;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p4, p1, v2, p2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object p3
.end method
