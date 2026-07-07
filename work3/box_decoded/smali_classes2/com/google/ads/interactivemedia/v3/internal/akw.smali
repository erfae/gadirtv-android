.class public final Lcom/google/ads/interactivemedia/v3/internal/akw;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/alh;
.implements Lcom/google/ads/interactivemedia/v3/internal/aja;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

.field private final b:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/ajk;

.field private final d:Lcom/google/ads/interactivemedia/v3/internal/aks;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/google/ads/interactivemedia/v3/internal/ali;

.field private final g:Lcom/google/ads/interactivemedia/v3/internal/ajb;

.field private final h:Lcom/google/ads/interactivemedia/v3/internal/aoj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/aoj<",
            "Lcom/google/ads/interactivemedia/v3/internal/akj;",
            "Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/aks;Lcom/google/ads/interactivemedia/v3/internal/ajk;Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/api/AdError;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->c()Lcom/google/ads/interactivemedia/v3/internal/aoj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/akw;->h:Lcom/google/ads/interactivemedia/v3/internal/aoj;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/akw;->i:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/akw;->j:Z

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/akw;->a:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    .line 2
    invoke-interface {p4}, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;->getPlayer()Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/akw;->b:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/akw;->c:Lcom/google/ads/interactivemedia/v3/internal/ajk;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/akw;->d:Lcom/google/ads/interactivemedia/v3/internal/aks;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/akw;->e:Ljava/lang/String;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/ali;

    .line 3
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/aks;->b()Landroid/webkit/WebView;

    move-result-object p2

    invoke-interface {p4}, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;->getAdContainer()Landroid/view/ViewGroup;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/ali;-><init>(Landroid/webkit/WebView;Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/akw;->f:Lcom/google/ads/interactivemedia/v3/internal/ali;

    .line 4
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/ajb;

    invoke-direct {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/ajb;-><init>(Lcom/google/ads/interactivemedia/v3/internal/aja;)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/akw;->g:Lcom/google/ads/interactivemedia/v3/internal/ajb;

    .line 5
    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;->addCallback(Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/akw;->g:Lcom/google/ads/interactivemedia/v3/internal/ajb;

    .line 13
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ajb;->b()V

    return-void
.end method

.method final a(Lcom/google/ads/interactivemedia/v3/impl/data/ResizeAndPositionVideoMsgData;)V
    .locals 8

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/akw;->b:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    .line 26
    instance-of v0, v0, Lcom/google/ads/interactivemedia/v3/api/player/ResizablePlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/akw;->a:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    .line 27
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;->getAdContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/akw;->a:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    .line 28
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;->getAdContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    .line 29
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ResizeAndPositionVideoMsgData;->x()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_0

    .line 30
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ResizeAndPositionVideoMsgData;->x()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ResizeAndPositionVideoMsgData;->width()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    if-gt v2, v0, :cond_0

    .line 31
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ResizeAndPositionVideoMsgData;->y()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    .line 32
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ResizeAndPositionVideoMsgData;->y()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ResizeAndPositionVideoMsgData;->height()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v0, v2

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/akw;->a:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    .line 34
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;->getAdContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/akw;->a:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    .line 35
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;->getAdContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    .line 36
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ResizeAndPositionVideoMsgData;->x()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ResizeAndPositionVideoMsgData;->width()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 37
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ResizeAndPositionVideoMsgData;->y()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ResizeAndPositionVideoMsgData;->height()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/akw;->b:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    .line 38
    check-cast v6, Lcom/google/ads/interactivemedia/v3/api/player/ResizablePlayer;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ResizeAndPositionVideoMsgData;->x()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ResizeAndPositionVideoMsgData;->y()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v0, v2

    sub-int/2addr v0, v3

    sub-int/2addr v1, v4

    sub-int/2addr v1, v5

    invoke-interface {v6, v7, p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/api/player/ResizablePlayer;->resize(IIII)V

    return-void

    :cond_0
    const-string p1, "Creative resize parameters were not within the containers bounds."

    .line 33
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->c(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "Video player does not support resizing."

    .line 39
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->c(Ljava/lang/String;)V

    return-void
.end method

.method final a(Lcom/google/ads/interactivemedia/v3/impl/data/c;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/akw;->i:Z

    if-eqz v0, :cond_1

    .line 48
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/c;->canDisableUi()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 52
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/data/c;->setUiDisabled(Z)V

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 49
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/data/c;->setUiDisabled(Z)V

    .line 50
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/c;->isLinear()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/akw;->f:Lcom/google/ads/interactivemedia/v3/internal/ali;

    .line 51
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ali;->a()V

    :cond_2
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/akj;Lcom/google/ads/interactivemedia/v3/internal/akk;)V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/akw;->d:Lcom/google/ads/interactivemedia/v3/internal/aks;

    .line 43
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/akl;

    const-string v2, "*"

    invoke-direct {v1, p1, p2, v2}, Lcom/google/ads/interactivemedia/v3/internal/akl;-><init>(Lcom/google/ads/interactivemedia/v3/internal/akj;Lcom/google/ads/interactivemedia/v3/internal/akk;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aks;->b(Lcom/google/ads/interactivemedia/v3/internal/akl;)V

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/akj;Lcom/google/ads/interactivemedia/v3/internal/akk;Lcom/google/ads/interactivemedia/v3/impl/data/bd;)V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/akw;->h:Lcom/google/ads/interactivemedia/v3/internal/aoj;

    .line 14
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    .line 15
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/akk;->activate:Lcom/google/ads/interactivemedia/v3/internal/akk;

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/akk;->ordinal()I

    move-result p2

    const/16 v1, 0x21

    if-eq p2, v1, :cond_5

    const/16 v1, 0x28

    if-eq p2, v1, :cond_2

    const/16 p3, 0x45

    if-eq p2, p3, :cond_5

    const/16 p1, 0x31

    if-eq p2, p1, :cond_1

    const/16 p1, 0x32

    if-eq p2, p1, :cond_0

    return-void

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/akw;->b:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    .line 19
    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;->playAd(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/akw;->g:Lcom/google/ads/interactivemedia/v3/internal/ajb;

    .line 20
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ajb;->a()V

    return-void

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/akw;->b:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    .line 18
    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;->pauseAd(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    return-void

    :cond_2
    if-eqz p3, :cond_4

    .line 20
    iget-object p2, p3, Lcom/google/ads/interactivemedia/v3/impl/data/bd;->videoUrl:Ljava/lang/String;

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/akw;->g:Lcom/google/ads/interactivemedia/v3/internal/ajb;

    .line 22
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/ajb;->a()V

    new-instance p2, Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    iget-object v0, p3, Lcom/google/ads/interactivemedia/v3/impl/data/bd;->videoUrl:Ljava/lang/String;

    .line 23
    invoke-direct {p2, v0}, Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;-><init>(Ljava/lang/String;)V

    iget-object p3, p3, Lcom/google/ads/interactivemedia/v3/impl/data/bd;->adPodInfo:Lcom/google/ads/interactivemedia/v3/impl/data/d;

    if-nez p3, :cond_3

    const/4 p3, 0x0

    :cond_3
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/akw;->h:Lcom/google/ads/interactivemedia/v3/internal/aoj;

    .line 24
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/akw;->b:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    .line 25
    invoke-interface {p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;->loadAd(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/akw;->c:Lcom/google/ads/interactivemedia/v3/internal/ajk;

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/aix;

    new-instance p3, Lcom/google/ads/interactivemedia/v3/api/AdError;

    .line 21
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v2, "Load message must contain video url."

    invoke-direct {p3, v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    invoke-direct {p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/aix;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ajv;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    return-void

    .line 15
    :cond_5
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/akw;->b:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    .line 16
    invoke-interface {p2, v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;->stopAd(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/akw;->h:Lcom/google/ads/interactivemedia/v3/internal/aoj;

    .line 17
    invoke-virtual {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/akk;Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/akw;->h:Lcom/google/ads/interactivemedia/v3/internal/aoj;

    .line 44
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/aoj;->b()Lcom/google/ads/interactivemedia/v3/internal/anl;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/anl;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/ads/interactivemedia/v3/internal/akj;

    if-nez p2, :cond_0

    .line 45
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x71

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "The adMediaInfo for the "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " event is not active. This may occur if callbacks are triggered after the ad is unloaded."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/akw;->j:Z

    if-eqz v0, :cond_1

    sget-object p2, Lcom/google/ads/interactivemedia/v3/internal/akj;->videoDisplay:Lcom/google/ads/interactivemedia/v3/internal/akj;

    .line 46
    :cond_1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/akl;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/akw;->e:Ljava/lang/String;

    invoke-direct {v0, p2, p1, v1, p3}, Lcom/google/ads/interactivemedia/v3/internal/akl;-><init>(Lcom/google/ads/interactivemedia/v3/internal/akj;Lcom/google/ads/interactivemedia/v3/internal/akk;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/akw;->d:Lcom/google/ads/interactivemedia/v3/internal/aks;

    .line 47
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/aks;->b(Lcom/google/ads/interactivemedia/v3/internal/akl;)V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/akw;->i:Z

    return-void
.end method

.method public final b()V
    .locals 2

    const-string v0, "Destroying NativeVideoDisplay"

    .line 6
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/akw;->f:Lcom/google/ads/interactivemedia/v3/internal/ali;

    .line 7
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ali;->b()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/akw;->b:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/akw;->g:Lcom/google/ads/interactivemedia/v3/internal/ajb;

    .line 8
    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;->removeCallback(Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/akw;->b:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    .line 9
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;->release()V

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/akw;->b:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    .line 11
    instance-of v0, v0, Lcom/google/ads/interactivemedia/v3/internal/alp;

    return v0
.end method

.method final d()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/akw;->f:Lcom/google/ads/interactivemedia/v3/internal/ali;

    .line 53
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ali;->b()V

    return-void
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/akw;->j:Z

    return-void
.end method

.method final f()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/akw;->b:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    .line 40
    instance-of v1, v0, Lcom/google/ads/interactivemedia/v3/api/player/ResizablePlayer;

    if-eqz v1, :cond_0

    .line 41
    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/player/ResizablePlayer;

    const/4 v1, 0x0

    .line 42
    invoke-interface {v0, v1, v1, v1, v1}, Lcom/google/ads/interactivemedia/v3/api/player/ResizablePlayer;->resize(IIII)V

    :cond_0
    return-void
.end method

.method public final getAdProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/akw;->b:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    .line 10
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;->getAdProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    move-result-object v0

    return-object v0
.end method

.method public final onAdError(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V
    .locals 0

    .line 12
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/akw;->d()V

    return-void
.end method
