.class public Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;
.super Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;
.source "PlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity$pallyconAction;
    }
.end annotation


# instance fields
.field private channelObjectNow:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

.field private stream_url:Ljava/lang/String;

.field public surface_view:Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;-><init>()V

    return-void
.end method

.method private fixOrientation()V
    .locals 1

    .line 214
    invoke-static {}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->get()Lcom/magoware/magoware/webtv/util/CustomConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->isScreenRotationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 215
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 217
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/MagowareApplication;->get()Lcom/magoware/magoware/webtv/MagowareApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/MagowareApplication;->getPreviousOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->setRequestedOrientation(I)V

    :goto_0
    return-void
.end method

.method private getCategory()Ljava/lang/String;
    .locals 1

    .line 177
    sget-boolean v0, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->osdCatchp:Z

    if-eqz v0, :cond_0

    const-string v0, "catchup start"

    goto :goto_0

    :cond_0
    const-string v0, "live tv"

    :goto_0
    return-object v0
.end method

.method private initLogs()V
    .locals 5

    .line 201
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->sendLogLiveChannelLoadingTime()V

    .line 202
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->channelStartupTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->sendChannelChangeLog()V

    .line 205
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->channelStartupTime:J

    .line 206
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->liveTVStartupTime:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->liveTVStartupTime:J

    .line 208
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->sendLogLiveTVPlayTime()V

    :cond_1
    return-void
.end method

.method public static isApplicationSentToBackground(Landroid/content/Context;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "activity"

    .line 38
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    .line 39
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 40
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 41
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 42
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_0
    return v3
.end method


# virtual methods
.method protected concatTokenStream(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tokenExtra"
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->stream_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->stream_url:Ljava/lang/String;

    .line 99
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->openPlayer()V

    return-void
.end method

.method protected getBandwidth()Ljava/lang/String;
    .locals 1

    const-string v0, "-1"

    return-object v0
.end method

.method protected getChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->channelObjectNow:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    return-object v0
.end method

.method protected getCurrentPlayingChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->surface_view:Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;

    if-nez v0, :cond_0

    .line 183
    invoke-super {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getCurrentPlayingChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v0

    return-object v0

    .line 184
    :cond_0
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->getCurrentPlayingChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v0

    return-object v0
.end method

.method protected getResolution()Ljava/lang/String;
    .locals 2

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->surface_view:Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;

    iget v1, v1, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->m_nVideoWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->surface_view:Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;

    iget v1, v1, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->m_nVideoHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSurfaceView()Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->surface_view:Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 80
    invoke-super {p0, p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b060b

    .line 81
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->surface_view:Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;

    .line 82
    new-instance p1, Landroid/view/GestureDetector;

    invoke-direct {p1, p0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->gDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 49
    invoke-super {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->onDestroy()V

    .line 50
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->surface_view:Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->stopPlayback()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->surface_view:Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 59
    invoke-super {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->onResume()V

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->onSingleTapUp()V

    const/4 p1, 0x1

    return p1
.end method

.method public onStart()V
    .locals 0

    .line 64
    invoke-super {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 5

    .line 69
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ADMOB_ACTIONS:Ljava/lang/String;

    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v2

    sget-object v3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ADMOB_ACTIONS:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;I)V

    .line 70
    invoke-super {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->onStop()V

    .line 71
    invoke-static {}, Lcom/magoware/magoware/webtv/util/TopicSubscriber;->getInstance()Lcom/magoware/magoware/webtv/util/TopicSubscriber;

    move-result-object v0

    const-string v1, "live_tv"

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/util/TopicSubscriber;->unsubscribeFrom(Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 73
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ADMOB_ACTIONS:Ljava/lang/String;

    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v2

    sget-object v3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ADMOB_ACTIONS:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;I)V

    .line 74
    invoke-static {}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->getInstance()Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->release()V

    .line 75
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method protected openPlayer()V
    .locals 4

    .line 136
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->surface_view:Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;

    if-eqz v0, :cond_0

    .line 137
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->setStartTime(J)V

    .line 138
    :cond_0
    sget-boolean v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->isCatchupStream:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->channelObjectNow:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->onPlayerOpened(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 139
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->surface_view:Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;

    if-eqz v0, :cond_3

    .line 140
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PLAYING_CHANNEL_Icon_Number:Ljava/lang/String;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->channelObjectNow:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget v2, v2, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_number:I

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;I)V

    .line 141
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->surface_view:Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->getCurrentPlayingChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->setPreviousPlayingChannel(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V

    .line 142
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->surface_view:Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->channelObjectNow:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->setCurrentPlayingChannel(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V

    .line 143
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->stream_url:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->surface_view:Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->channelObjectNow:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->stream_url:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->start(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->initLogs()V

    goto :goto_0

    :cond_2
    const v0, 0x7f14047b

    .line 147
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 149
    :goto_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LAST_CHANNEL_VIEWED:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->channelObjectNow:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget v1, v1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_number:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ACTIVITY_TIMEOUT:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    add-int/lit16 v0, v0, -0x7530

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->closePlayerActivityAfterSpecificTime(I)V

    :cond_3
    return-void
.end method

.method public playChannel(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channel"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->surface_view:Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->stopPlayback()V

    .line 112
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->surface_view:Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 113
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->surface_view:Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->setVisibility(I)V

    .line 115
    :cond_0
    invoke-super {p0, p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playChannel(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V

    return-void
.end method

.method protected playStream(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channel"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->channelLoadTime:J

    .line 123
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->channelObjectNow:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    .line 124
    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->stream_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->stream_url:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->hasToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->setTokenUrl(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->openPlayer()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected releasePlayer()V
    .locals 0

    return-void
.end method

.method protected setPreviousPlayingChannel(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previous_playing_channel"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->surface_view:Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->setPreviousPlayingChannel(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V

    goto :goto_0

    .line 192
    :cond_0
    invoke-super {p0, p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->setPreviousPlayingChannel(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V

    :goto_0
    return-void
.end method

.method protected stopPlayBack()V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->surface_view:Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->surface_view:Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->stopPlayback()V

    :cond_0
    return-void
.end method
