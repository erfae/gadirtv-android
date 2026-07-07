.class public Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;
.super Ljava/lang/Object;
.source "VOOSMPAdMgrImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppAdViewInterface"
.end annotation


# instance fields
.field mAdParameters:Ljava/lang/String;

.field mClickThroughUrl:Ljava/lang/String;

.field mIsEnded:Z

.field mSkipOffset:I

.field mVPAIDDData:Ljava/lang/String;

.field mVPAIDUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1717
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1710
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->mAdParameters:Ljava/lang/String;

    .line 1711
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->mVPAIDUrl:Ljava/lang/String;

    .line 1712
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->mVPAIDDData:Ljava/lang/String;

    .line 1713
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->mClickThroughUrl:Ljava/lang/String;

    const/4 p1, 0x0

    .line 1714
    iput p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->mSkipOffset:I

    .line 1715
    iput-boolean p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->mIsEnded:Z

    .line 1718
    iput-object p2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->mAdParameters:Ljava/lang/String;

    .line 1719
    iput-object p3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->mVPAIDUrl:Ljava/lang/String;

    .line 1720
    iput-object p4, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->mVPAIDDData:Ljava/lang/String;

    .line 1721
    iput-object p5, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->mClickThroughUrl:Ljava/lang/String;

    .line 1722
    iput p6, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->mSkipOffset:I

    return-void
.end method


# virtual methods
.method public getAdParameters()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1737
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->mAdParameters:Ljava/lang/String;

    return-object v0
.end method

.method public getClickThroughUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1742
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->mClickThroughUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSkipOffset()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1747
    iget v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->mSkipOffset:I

    return v0
.end method

.method public getVPAIDData()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1732
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->mVPAIDDData:Ljava/lang/String;

    return-object v0
.end method

.method public getVPAIDUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1727
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->mVPAIDUrl:Ljava/lang/String;

    return-object v0
.end method

.method public onAdLoaded()V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPAdMgrImpl"

    const-string v2, "AppAdViewInterface.onAdLoaded()"

    .line 1763
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1764
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$1200(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;)Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$1300(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1765
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$1200(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;)Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    invoke-static {v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$1300(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;->configureUI(Ljava/lang/String;)V

    .line 1766
    :cond_0
    iget-object v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    invoke-static {v2}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$800(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;)J

    move-result-wide v3

    sget-object v0, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;->AD_VIEW_EVENT_AD_LOADED:Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;->getValue()I

    move-result v5

    const-wide/16 v6, 0x0

    invoke-static/range {v2 .. v7}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$900(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;JIJ)V

    return-void
.end method

.method public onDurationChanged(D)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1784
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    .line 1785
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "AppAdViewInterface.onDurationChanged duration: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "@@@VOOSMPAdMgrImpl"

    invoke-static {v0, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1786
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$800(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;)J

    move-result-wide v1

    sget-object p1, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;->AD_VIEW_EVENT_AD_DURATION:Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

    invoke-virtual {p1}, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;->getValue()I

    move-result v3

    invoke-static/range {v0 .. v5}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$900(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;JIJ)V

    return-void
.end method

.method public onEnded()V
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1816
    iget-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->mIsEnded:Z

    const/4 v1, 0x0

    const-string v2, "@@@VOOSMPAdMgrImpl"

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "onEnded(): AdView has already ended (skip)."

    .line 1817
    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "AppAdViewInterface.onEnded()"

    .line 1820
    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 1821
    iput-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->mIsEnded:Z

    .line 1822
    iget-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    invoke-static {v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$800(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;)J

    move-result-wide v2

    sget-object v0, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;->AD_VIEW_EVENT_AD_END:Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;->getValue()I

    move-result v4

    const-wide/16 v5, 0x0

    invoke-static/range {v1 .. v6}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$900(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;JIJ)V

    :goto_0
    return-void
.end method

.method public onError(J)V
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPAdMgrImpl"

    const-string v2, "AppAdViewInterface.onError()"

    .line 1847
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1848
    iget-object v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    invoke-static {v3}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$800(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;)J

    move-result-wide v4

    sget-object v0, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;->AD_VIEW_EVENT_AD_ERROR:Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;->getValue()I

    move-result v6

    move-wide v7, p1

    invoke-static/range {v3 .. v8}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$900(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;JIJ)V

    return-void
.end method

.method public onEvent(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppAdViewInterface.onEvent(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "@@@VOOSMPAdMgrImpl"

    invoke-static {v2, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "AD_CLICKED"

    .line 1772
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->mClickThroughUrl:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1773
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    sget-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;->VO_OSMP_APP_NOTIFICATION_CLICK_THROUGH:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;

    iget-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->mClickThroughUrl:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->onAppNotify(Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;Ljava/lang/Object;Ljava/lang/Object;)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    .line 1775
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->mClickThroughUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1776
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1777
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$400(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onJSLog(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "JSConsole:"

    .line 1853
    invoke-static {v1, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onMute(Z)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppAdViewInterface.onMute() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "@@@VOOSMPAdMgrImpl"

    invoke-static {v2, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    move-wide v6, v0

    .line 1836
    iget-object v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    invoke-static {v2}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$800(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;)J

    move-result-wide v3

    sget-object p1, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;->AD_VIEW_EVENT_AD_MUTE:Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

    invoke-virtual {p1}, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;->getValue()I

    move-result v5

    invoke-static/range {v2 .. v7}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$900(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;JIJ)V

    return-void
.end method

.method public onPause(Z)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppAdViewInterface.onPause() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "@@@VOOSMPAdMgrImpl"

    invoke-static {v2, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1809
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    invoke-static {v0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$1402(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;Z)Z

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    move-wide v6, v0

    .line 1811
    iget-object v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    invoke-static {v2}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$800(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;)J

    move-result-wide v3

    sget-object p1, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;->AD_VIEW_EVENT_AD_PAUSE:Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

    invoke-virtual {p1}, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;->getValue()I

    move-result v5

    invoke-static/range {v2 .. v7}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$900(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;JIJ)V

    return-void
.end method

.method public onPlay()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPAdMgrImpl"

    const-string v2, "AppAdViewInterface.onPlay()"

    .line 1797
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onSkipAd()V
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPAdMgrImpl"

    const-string v2, "AppAdViewInterface.onSkipAd()"

    .line 1828
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1829
    iget-object v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    invoke-static {v3}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$800(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;)J

    move-result-wide v4

    sget-object v0, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;->AD_VIEW_EVENT_AD_SKIP:Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;->getValue()I

    move-result v6

    const-wide/16 v7, 0x0

    invoke-static/range {v3 .. v8}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$900(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;JIJ)V

    return-void
.end method

.method public onStart()V
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPAdMgrImpl"

    const-string v2, "AppAdViewInterface.onStart()"

    .line 1791
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1792
    iget-object v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    invoke-static {v3}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$800(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;)J

    move-result-wide v4

    sget-object v0, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;->AD_VIEW_EVENT_AD_START:Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;->getValue()I

    move-result v6

    const-wide/16 v7, 0x0

    invoke-static/range {v3 .. v8}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$900(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;JIJ)V

    return-void
.end method

.method public onStop()V
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPAdMgrImpl"

    const-string v2, "AppAdViewInterface.onStop()"

    .line 1802
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1803
    iget-object v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    invoke-static {v3}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$800(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;)J

    move-result-wide v4

    sget-object v0, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;->AD_VIEW_EVENT_AD_STOP:Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;->getValue()I

    move-result v6

    const-wide/16 v7, 0x0

    invoke-static/range {v3 .. v8}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$900(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;JIJ)V

    return-void
.end method

.method public onTimeUpdate(D)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1752
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v6, v0

    .line 1753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppAdViewInterface.onTimeUpdate(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "@@@VOOSMPAdMgrImpl"

    invoke-static {v2, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1754
    iget-object v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    invoke-static {v2}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$800(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;)J

    move-result-wide v3

    sget-object v0, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;->AD_VIEW_EVENT_AD_POSITION:Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;->getValue()I

    move-result v5

    invoke-static/range {v2 .. v7}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$900(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;JIJ)V

    .line 1755
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$1000(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;)Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_0

    .line 1756
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$1000(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;)Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$1100(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;)V

    .line 1757
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$1002(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;)Lcom/visualon/OSMPAdMgr/VOOSMPAdViewPlayer;

    :cond_0
    return-void
.end method

.method public onTimeout()V
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPAdMgrImpl"

    const-string v2, "AppAdViewInterface.onTimeout()"

    .line 1841
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1842
    iget-object v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    invoke-static {v3}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$800(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;)J

    move-result-wide v4

    sget-object v0, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;->AD_VIEW_EVENT_AD_ERROR:Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;

    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/AD_VIEW_EVENT_ID;->getValue()I

    move-result v6

    const-wide/16 v7, 0x2

    invoke-static/range {v3 .. v8}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$900(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;JIJ)V

    return-void
.end method
