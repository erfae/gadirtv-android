.class Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity$2;
.super Ljava/lang/Object;
.source "DashboardActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->setupWebViewWidget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1358
    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity$2;->this$0:Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onPreDraw$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    .line 1361
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity$2;->this$0:Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->access$000(Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v0

    .line 1362
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide v3, 0x40c1940000000000L    # 9000.0

    mul-double v1, v1, v3

    const-wide v3, 0x408f400000000000L    # 1000.0

    add-double/2addr v1, v3

    double-to-int v1, v1

    .line 1363
    iget-object v2, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity$2;->this$0:Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->access$000(Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://yesnet.tv/mobileBannerAds/?adtype="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "M"

    goto :goto_0

    :cond_0
    const-string v3, "T"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&widh="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/magoware/magoware/webtv/global/Global;->screenWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "&height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/magoware/magoware/webtv/global/Global;->screenHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "&webViewHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&id="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1366
    iget-object v1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity$2;->this$0:Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->access$000(Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1367
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity$2;->this$0:Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->access$000(Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;)Landroid/webkit/WebView;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$2$w-Vup5UkEAWxKwfzxiAfva3FZz4;->INSTANCE:Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$2$w-Vup5UkEAWxKwfzxiAfva3FZz4;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v0, 0x0

    return v0
.end method
