.class public Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;
.super Landroid/widget/VideoView;
.source "CustomVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView$StreamingProgressDialog;
    }
.end annotation


# instance fields
.field private FLAG_STREAM_STARTED:Z

.field private Fcontext:Landroid/content/Context;

.field private StreamingProgressDialog:Ljava/lang/Runnable;

.field private final TAG:Ljava/lang/String;

.field private bufferEndTime:J

.field private bufferStartTime:J

.field private channelUrl:Ljava/lang/String;

.field private currentPlayingChannel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

.field private difference:J

.field private elapsedMillis:I

.field public handler2:Landroid/os/Handler;

.field public m_nVideoHeight:I

.field public m_nVideoWidth:I

.field private magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

.field private pos:I

.field private previousPlayingChannel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

.field private programForLog:Ljava/lang/String;

.field private programIdLog:Ljava/lang/String;

.field public progressDialogStreaming:Landroid/app/ProgressDialog;

.field private startTime:J

.field private streamStartedTime:Ljava/util/Date;

.field private stream_play_time:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    const-string p1, "CustomVideoView"

    .line 37
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->TAG:Ljava/lang/String;

    .line 39
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->handler2:Landroid/os/Handler;

    .line 52
    new-instance p1, Lcom/magoware/magoware/webtv/players/default_player/-$$Lambda$CustomVideoView$VrXeOZlO7FjVls12e63t64jnO5o;

    invoke-direct {p1, p0}, Lcom/magoware/magoware/webtv/players/default_player/-$$Lambda$CustomVideoView$VrXeOZlO7FjVls12e63t64jnO5o;-><init>(Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;)V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->StreamingProgressDialog:Ljava/lang/Runnable;

    const/4 p1, -0x1

    .line 59
    iput p1, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->m_nVideoWidth:I

    .line 60
    iput p1, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->m_nVideoHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "CustomVideoView"

    .line 37
    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->TAG:Ljava/lang/String;

    .line 39
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->handler2:Landroid/os/Handler;

    .line 52
    new-instance p2, Lcom/magoware/magoware/webtv/players/default_player/-$$Lambda$CustomVideoView$VrXeOZlO7FjVls12e63t64jnO5o;

    invoke-direct {p2, p0}, Lcom/magoware/magoware/webtv/players/default_player/-$$Lambda$CustomVideoView$VrXeOZlO7FjVls12e63t64jnO5o;-><init>(Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;)V

    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->StreamingProgressDialog:Ljava/lang/Runnable;

    const/4 p2, -0x1

    .line 59
    iput p2, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->m_nVideoWidth:I

    .line 60
    iput p2, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->m_nVideoHeight:I

    .line 72
    invoke-virtual {p0, p0}, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 73
    invoke-virtual {p0, p0}, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 74
    invoke-virtual {p0, p0}, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 75
    new-instance p2, Landroidx/lifecycle/ViewModelProvider;

    check-cast p1, Landroidx/lifecycle/ViewModelStoreOwner;

    invoke-direct {p2, p1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class p1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p2, p1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyle"
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "CustomVideoView"

    .line 37
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->TAG:Ljava/lang/String;

    .line 39
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->handler2:Landroid/os/Handler;

    .line 52
    new-instance p1, Lcom/magoware/magoware/webtv/players/default_player/-$$Lambda$CustomVideoView$VrXeOZlO7FjVls12e63t64jnO5o;

    invoke-direct {p1, p0}, Lcom/magoware/magoware/webtv/players/default_player/-$$Lambda$CustomVideoView$VrXeOZlO7FjVls12e63t64jnO5o;-><init>(Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;)V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->StreamingProgressDialog:Ljava/lang/Runnable;

    const/4 p1, -0x1

    .line 59
    iput p1, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->m_nVideoWidth:I

    .line 60
    iput p1, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->m_nVideoHeight:I

    return-void
.end method

.method static synthetic access$000(Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;)Landroid/content/Context;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->Fcontext:Landroid/content/Context;

    return-object p0
.end method

.method private getCategory()Ljava/lang/String;
    .locals 1

    .line 371
    sget-boolean v0, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->osdCatchp:Z

    if-eqz v0, :cond_0

    const-string v0, "catchup start"

    goto :goto_0

    :cond_0
    const-string v0, "live tv"

    :goto_0
    return-object v0
.end method

.method private getResolution()Ljava/lang/String;
    .locals 2

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->m_nVideoWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->m_nVideoHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$onPrepared$2(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private playerLogMessage(II)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "what",
            "extra"
        }
    .end annotation

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, -0x3f2

    if-eq p1, v1, :cond_6

    const/16 v1, -0x3ef

    if-eq p1, v1, :cond_5

    const/16 v1, -0x3ec

    if-eq p1, v1, :cond_4

    const/16 v1, -0x6e

    if-eq p1, v1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/16 v1, 0x64

    if-eq p1, v1, :cond_1

    const/16 v1, 0xc8

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK"

    goto :goto_0

    :cond_1
    const-string v0, "MEDIA_ERROR_SERVER_DIED"

    goto :goto_0

    :cond_2
    const-string v0, "MEDIA_ERROR_UNKNOWN"

    goto :goto_0

    :cond_3
    const-string v0, "MEDIA_ERROR_TIMED_OUT"

    goto :goto_0

    :cond_4
    const-string v0, "MEDIA_ERROR_IO"

    goto :goto_0

    :cond_5
    const-string v0, "MEDIA_ERROR_MALFORMED"

    goto :goto_0

    :cond_6
    const-string v0, "MEDIA_ERROR_UNSUPPORTED"

    .line 298
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " extra: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private sendBufferProblem(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extra"
        }
    .end annotation

    .line 302
    iget-boolean p1, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->FLAG_STREAM_STARTED:Z

    if-eqz p1, :cond_0

    const-string p1, "Warning"

    goto :goto_0

    :cond_0
    const-string p1, "Error"

    .line 303
    :goto_0
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->bufferEndTime:J

    iget-wide v2, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->bufferStartTime:J

    sub-long/2addr v0, v2

    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "re buffering "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    long-to-int v1, v0

    invoke-virtual {p0, p1, v1}, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->sendLogChannelError(Ljava/lang/String;I)V

    const-wide/16 v0, 0x0

    .line 306
    iput-wide v0, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->bufferEndTime:J

    .line 307
    iput-wide v0, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->bufferStartTime:J

    .line 308
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->progressDialogStreaming:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 309
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->progressDialogStreaming:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    const/4 p1, 0x0

    .line 312
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->FLAG_STREAM_STARTED:Z

    return-void
.end method

.method private watchingTime()V
    .locals 4

    .line 317
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->streamStartedTime:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 318
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 319
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->streamStartedTime:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->stream_play_time:J

    long-to-int v1, v0

    .line 321
    div-int/lit16 v1, v1, 0x3e8

    const/16 v0, 0xf

    if-lt v1, v0, :cond_0

    const v0, 0x1a5e0

    if-ge v1, v0, :cond_0

    .line 323
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LAST_CHANNEL_VIEWED_PLAYTIME:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentPlayingChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->currentPlayingChannel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    return-object v0
.end method

.method public getCurrentPlayingChannelPosition()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->pos:I

    return v0
.end method

.method public getElapsedMillis()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->elapsedMillis:I

    return v0
.end method

.method public getPreviousPlayingChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->previousPlayingChannel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    return-object v0
.end method

.method public synthetic lambda$new$0$CustomVideoView()V
    .locals 4

    .line 54
    :try_start_0
    new-instance v0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView$StreamingProgressDialog;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView$StreamingProgressDialog;-><init>(Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView$StreamingProgressDialog;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$onPrepared$1$CustomVideoView(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/16 p1, 0x2bd

    if-ne p2, p1, :cond_0

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->bufferStartTime:J

    goto :goto_0

    :cond_0
    const/16 p1, 0x2be

    if-ne p2, p1, :cond_1

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->bufferEndTime:J

    .line 149
    invoke-direct {p0, p3}, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->sendBufferProblem(I)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public synthetic lambda$onPrepared$3$CustomVideoView(Landroid/media/MediaPlayer;I)V
    .locals 1

    .line 157
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CustomVideoView onBufferingUpdate percentage: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CustomVideoView"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mp"
        }
    .end annotation

    .line 185
    invoke-super {p0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 186
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->watchingTime()V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mp",
            "what",
            "extra"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->progressDialogStreaming:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->progressDialogStreaming:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p2, p3}, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->playerLogMessage(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 171
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->sendLogChannelError(Ljava/lang/String;I)V

    const/16 p3, 0x64

    if-ne p2, p3, :cond_1

    .line 174
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_0

    :cond_1
    if-ne p2, v2, :cond_2

    .line 177
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    :cond_2
    :goto_0
    return v2
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mp",
            "what",
            "extra"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mp"
        }
    .end annotation

    .line 134
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->m_nVideoWidth:I

    .line 135
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->m_nVideoHeight:I

    .line 137
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->progressDialogStreaming:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->progressDialogStreaming:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->FLAG_STREAM_STARTED:Z

    .line 143
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->streamStartedTime:Ljava/util/Date;

    .line 144
    new-instance v0, Lcom/magoware/magoware/webtv/players/default_player/-$$Lambda$CustomVideoView$8AA61KpCHUbksHD3lfS5-S-jEDA;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/players/default_player/-$$Lambda$CustomVideoView$8AA61KpCHUbksHD3lfS5-S-jEDA;-><init>(Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 153
    sget-object v0, Lcom/magoware/magoware/webtv/players/default_player/-$$Lambda$CustomVideoView$nINJmmgKN5x0NkDzqOmPBvVDtUo;->INSTANCE:Lcom/magoware/magoware/webtv/players/default_player/-$$Lambda$CustomVideoView$nINJmmgKN5x0NkDzqOmPBvVDtUo;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 157
    new-instance v0, Lcom/magoware/magoware/webtv/players/default_player/-$$Lambda$CustomVideoView$kB3WgK3UqlyLKRWeGFnuwM0-85o;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/players/default_player/-$$Lambda$CustomVideoView$kB3WgK3UqlyLKRWeGFnuwM0-85o;-><init>(Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 159
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mp",
            "width",
            "height"
        }
    .end annotation

    return-void
.end method

.method public pause()V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->progressDialogStreaming:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->progressDialogStreaming:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 195
    :cond_0
    invoke-super {p0}, Landroid/widget/VideoView;->pause()V

    return-void
.end method

.method public resume()V
    .locals 0

    .line 209
    invoke-super {p0}, Landroid/widget/VideoView;->resume()V

    return-void
.end method

.method public sendLogChannelError(Ljava/lang/String;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "description",
            "errorCode"
        }
    .end annotation

    .line 355
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->getCategory()Ljava/lang/String;

    move-result-object v0

    .line 358
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getPlayer()Ljava/lang/String;

    move-result-object v3

    .line 359
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->getCurrentPlayingChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v1

    iget-object v4, v1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->title:Ljava/lang/String;

    .line 362
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->getResolution()Ljava/lang/String;

    move-result-object v7

    const-string v5, "no data"

    const/4 v6, -0x1

    const-string v8, "-1"

    move-object v1, p1

    move v2, p2

    .line 354
    invoke-static/range {v0 .. v8}, Lcom/magoware/magoware/webtv/network/SendAnalyticsLogs;->logChannelError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCurrentPlayingChannel(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentPlayingChannel"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->currentPlayingChannel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    return-void
.end method

.method public setCurrentPlayingChannelPosition(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 112
    iput p1, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->pos:I

    return-void
.end method

.method public setPreviousPlayingChannel(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previous_playing_channel"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->previousPlayingChannel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    return-void
.end method

.method public setProgramForLog(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "programForLog"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->programForLog:Ljava/lang/String;

    return-void
.end method

.method public setProgramIdLog(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "programIdLog"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->programIdLog:Ljava/lang/String;

    return-void
.end method

.method public setStartTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startTime"
        }
    .end annotation

    .line 95
    iput-wide p1, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->startTime:J

    return-void
.end method

.method public declared-synchronized start(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "channel",
            "channel_url",
            "access_way"
        }
    .end annotation

    monitor-enter p0

    .line 219
    :try_start_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->isPlaying()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->stopPlayback()V

    .line 222
    :cond_0
    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->channelUrl:Ljava/lang/String;

    .line 223
    iget-object p3, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->currentPlayingChannel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    if-nez p3, :cond_1

    .line 224
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->currentPlayingChannel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    goto :goto_0

    .line 226
    :cond_1
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->currentPlayingChannel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    .line 228
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object p3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PLAYING_CHANNEL:Ljava/lang/String;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->currentPlayingChannel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget v0, v0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_number:I

    invoke-virtual {p1, p3, v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;I)V

    .line 229
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->currentPlayingChannel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->pin_protected:Ljava/lang/String;

    const-string p3, "true"

    invoke-static {p1, p3}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 230
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object p3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LAST_CHANNEL_VIEWED_NAME:Ljava/lang/String;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->currentPlayingChannel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->title:Ljava/lang/String;

    invoke-virtual {p1, p3, v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    :cond_2
    :goto_0
    :try_start_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->setVideoURI(Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 237
    :try_start_2
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 238
    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->handler2:Landroid/os/Handler;

    iget-object p3, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->StreamingProgressDialog:Ljava/lang/Runnable;

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 239
    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->progressDialogStreaming:Landroid/app/ProgressDialog;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 240
    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->progressDialogStreaming:Landroid/app/ProgressDialog;

    invoke-virtual {p2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 242
    :cond_3
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f14047a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -2"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    invoke-static {p2, p3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 243
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 246
    :goto_1
    invoke-super {p0}, Landroid/widget/VideoView;->start()V

    .line 248
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->startTime:J

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->difference:J

    .line 249
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide p2, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->difference:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, p3, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    long-to-int p2, p1

    iput p2, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->elapsedMillis:I

    .line 251
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->handler2:Landroid/os/Handler;

    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->StreamingProgressDialog:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 252
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->handler2:Landroid/os/Handler;

    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->StreamingProgressDialog:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 253
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->progressDialogStreaming:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 254
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->progressDialogStreaming:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 256
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public stopPlayback()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->progressDialogStreaming:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->progressDialogStreaming:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 128
    :cond_0
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->watchingTime()V

    .line 129
    invoke-super {p0}, Landroid/widget/VideoView;->stopPlayback()V

    return-void
.end method

.method public suspend()V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->progressDialogStreaming:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->progressDialogStreaming:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 204
    :cond_0
    invoke-super {p0}, Landroid/widget/VideoView;->suspend()V

    return-void
.end method
