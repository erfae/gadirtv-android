.class Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekDiskDataProvider$1;
.super Landroidx/leanback/media/PlaybackGlue$PlayerCallback;
.source "PlaybackSeekDiskDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekDiskDataProvider;->setDemoSeekProvider(Landroidx/leanback/media/PlaybackTransportControlGlue;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$url"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekDiskDataProvider$1;->val$url:Ljava/lang/String;

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

    .line 81
    invoke-virtual {p1}, Landroidx/leanback/media/PlaybackGlue;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p1, p0}, Landroidx/leanback/media/PlaybackGlue;->removePlayerCallback(Landroidx/leanback/media/PlaybackGlue$PlayerCallback;)V

    .line 83
    check-cast p1, Landroidx/leanback/media/PlaybackTransportControlGlue;

    .line 85
    new-instance v6, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekDiskDataProvider;

    .line 86
    invoke-virtual {p1}, Landroidx/leanback/media/PlaybackTransportControlGlue;->getDuration()J

    move-result-wide v1

    .line 87
    invoke-virtual {p1}, Landroidx/leanback/media/PlaybackTransportControlGlue;->getDuration()J

    move-result-wide v3

    const-wide/16 v7, 0x64

    div-long/2addr v3, v7

    iget-object v5, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekDiskDataProvider$1;->val$url:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PlaybackSeekDiskDataProvider;-><init>(JJLjava/lang/String;)V

    .line 85
    invoke-virtual {p1, v6}, Landroidx/leanback/media/PlaybackTransportControlGlue;->setSeekProvider(Landroidx/leanback/widget/PlaybackSeekDataProvider;)V

    :cond_0
    return-void
.end method
