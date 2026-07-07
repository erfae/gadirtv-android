.class Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity$1;
.super Ljava/lang/Object;
.source "DashboardActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->initMainView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;

.field final synthetic val$l:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$l"
        }
    .end annotation

    .line 485
    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity$1;->this$0:Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity$1;->val$l:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity$1;->val$l:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 489
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->MAGOWARE:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->TIBO:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YESNET:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity$1;->val$l:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result v0

    sput v0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->layoutWidth:I

    goto :goto_1

    .line 490
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity$1;->val$l:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getHeight()I

    move-result v0

    sput v0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->layoutWidth:I

    :goto_1
    return-void
.end method
