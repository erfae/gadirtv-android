.class Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekDiskDataProvider$2;
.super Landroidx/leanback/media/PlaybackGlue$PlayerCallback;
.source "PlaybackSeekDiskDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekDiskDataProvider;->setDemoSeekProvider(Landroidx/leanback/media/PlaybackTransportControlGlue;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Landroidx/leanback/media/PlaybackGlue$PlayerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreparedStateChanged(Landroidx/leanback/media/PlaybackGlue;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "glue"
        }
    .end annotation

    .line 106
    invoke-virtual {p1}, Landroidx/leanback/media/PlaybackGlue;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p1, p0}, Landroidx/leanback/media/PlaybackGlue;->removePlayerCallback(Landroidx/leanback/media/PlaybackGlue$PlayerCallback;)V

    .line 108
    check-cast p1, Landroidx/leanback/media/PlaybackTransportControlGlue;

    .line 110
    new-instance v6, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekDiskDataProvider;

    .line 111
    invoke-virtual {p1}, Landroidx/leanback/media/PlaybackTransportControlGlue;->getDuration()J

    move-result-wide v1

    .line 112
    invoke-virtual {p1}, Landroidx/leanback/media/PlaybackTransportControlGlue;->getDuration()J

    move-result-wide v3

    const-wide/16 v7, 0x64

    div-long/2addr v3, v7

    const-string v5, ""

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekDiskDataProvider;-><init>(JJLjava/lang/String;)V

    .line 110
    invoke-virtual {p1, v6}, Landroidx/leanback/media/PlaybackTransportControlGlue;->setSeekProvider(Landroidx/leanback/widget/PlaybackSeekDataProvider;)V

    :cond_0
    return-void
.end method
