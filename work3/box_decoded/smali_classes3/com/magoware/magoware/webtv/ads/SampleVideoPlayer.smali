.class public Lcom/magoware/magoware/webtv/ads/SampleVideoPlayer;
.super Landroid/widget/VideoView;
.source "SampleVideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/ads/SampleVideoPlayer$OnVideoCompletedListener;
    }
.end annotation


# instance fields
.field private final mOnVideoCompletedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/ads/SampleVideoPlayer$OnVideoCompletedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/ads/SampleVideoPlayer;->mOnVideoCompletedListeners:Ljava/util/List;

    .line 47
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/ads/SampleVideoPlayer;->init()V

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

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/ads/SampleVideoPlayer;->mOnVideoCompletedListeners:Ljava/util/List;

    .line 42
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/ads/SampleVideoPlayer;->init()V

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

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/ads/SampleVideoPlayer;->mOnVideoCompletedListeners:Ljava/util/List;

    .line 37
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/ads/SampleVideoPlayer;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 51
    new-instance v0, Landroid/widget/MediaController;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/ads/SampleVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {v0, p0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 55
    new-instance v0, Lcom/magoware/magoware/webtv/ads/-$$Lambda$SampleVideoPlayer$OrVLjIiI3MR9mM-LYOzK247105c;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/ads/-$$Lambda$SampleVideoPlayer$OrVLjIiI3MR9mM-LYOzK247105c;-><init>(Lcom/magoware/magoware/webtv/ads/SampleVideoPlayer;)V

    invoke-super {p0, v0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 68
    sget-object v0, Lcom/magoware/magoware/webtv/ads/-$$Lambda$SampleVideoPlayer$ZZvc0GesvpCuWDZukFOXbcAfo5Y;->INSTANCE:Lcom/magoware/magoware/webtv/ads/-$$Lambda$SampleVideoPlayer$ZZvc0GesvpCuWDZukFOXbcAfo5Y;

    invoke-super {p0, v0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    return-void
.end method

.method static synthetic lambda$init$1(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public addVideoCompletedListener(Lcom/magoware/magoware/webtv/ads/SampleVideoPlayer$OnVideoCompletedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/magoware/magoware/webtv/ads/SampleVideoPlayer;->mOnVideoCompletedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic lambda$init$0$SampleVideoPlayer(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 59
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 60
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/ads/SampleVideoPlayer;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 62
    iget-object p1, p0, Lcom/magoware/magoware/webtv/ads/SampleVideoPlayer;->mOnVideoCompletedListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/ads/SampleVideoPlayer$OnVideoCompletedListener;

    .line 63
    invoke-interface {v0}, Lcom/magoware/magoware/webtv/ads/SampleVideoPlayer$OnVideoCompletedListener;->onVideoCompleted()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public play()V
    .locals 0

    .line 83
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/ads/SampleVideoPlayer;->start()V

    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 79
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
