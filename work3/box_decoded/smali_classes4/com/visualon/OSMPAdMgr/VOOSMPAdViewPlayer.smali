.class Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;
.super Ljava/lang/Object;
.source "VOOSMPAdMgrImpl.java"


# static fields
.field public static final mTag:Ljava/lang/String; = "@@@VOOSMPAdViewPlayer"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mViewContainer:Landroid/view/ViewGroup;

.field public mViewPlayer:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1

    .line 1900
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1896
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;->mViewPlayer:Landroid/view/View;

    .line 1897
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;->mContext:Landroid/content/Context;

    .line 1898
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;->mViewContainer:Landroid/view/ViewGroup;

    .line 1901
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;->mContext:Landroid/content/Context;

    .line 1902
    iput-object p2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;->mViewContainer:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public adjustUIOffset()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPAdViewPlayer"

    const-string v2, "Base adjustUIOffset"

    .line 1994
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public configureUI(Ljava/lang/String;)V
    .locals 2

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "@@@VOOSMPAdViewPlayer"

    const-string v1, "Base configureUI"

    .line 1998
    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 1950
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer$3;

    invoke-direct {v1, p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer$3;-><init>(Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public destroyHelper()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPAdViewPlayer"

    const-string v2, "Base destroyHelper"

    .line 2002
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public hide()V
    .locals 2

    .line 1906
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;->mViewPlayer:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 1908
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer$1;

    invoke-direct {v1, p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer$1;-><init>(Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isLandscape()Z
    .locals 3

    .line 1928
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;->mViewPlayer:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1930
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;->mViewPlayer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-le v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public load(Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "@@@VOOSMPAdViewPlayer"

    const-string p3, "Base load"

    .line 1966
    invoke-static {p2, p3, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public playPause()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPAdViewPlayer"

    const-string v2, "Base playPause"

    .line 1986
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public printViewSize()V
    .locals 5

    .line 1934
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;->mViewPlayer:Landroid/view/View;

    const/4 v1, 0x0

    const-string v2, "@@@VOOSMPAdViewPlayer"

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "printViewSize: mViewPlayer is null"

    .line 1935
    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1938
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1939
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parentView: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1941
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "printViewSize: landscape"

    .line 1942
    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "printViewSize: portrait"

    .line 1945
    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public resume()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPAdViewPlayer"

    const-string v2, "Base suspend"

    .line 1982
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public start()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPAdViewPlayer"

    const-string v2, "Base start"

    .line 1970
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public stop()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPAdViewPlayer"

    const-string v2, "Base stop"

    .line 1974
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public suspend()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPAdViewPlayer"

    const-string v2, "Base suspend"

    .line 1978
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public toggleAudio()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPAdViewPlayer"

    const-string v2, "Base toggleAudio"

    .line 1990
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public unhide()V
    .locals 2

    .line 1917
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;->mViewPlayer:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 1919
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer$2;

    invoke-direct {v1, p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer$2;-><init>(Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
