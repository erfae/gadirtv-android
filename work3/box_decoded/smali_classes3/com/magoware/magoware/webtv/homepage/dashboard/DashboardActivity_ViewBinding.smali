.class public Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity_ViewBinding;
.super Ljava/lang/Object;
.source "DashboardActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 20
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity_ViewBinding;-><init>(Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "target",
            "source"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity_ViewBinding;->target:Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;

    .line 27
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0b03f4

    const-string v2, "field \'menu_background_image\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menu_background_image:Landroid/widget/ImageView;

    .line 28
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0b00c4

    const-string v2, "field \'deviceTypeName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->deviceTypeName:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity_ViewBinding;->target:Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity_ViewBinding;->target:Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;

    .line 38
    iput-object v1, v0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->menu_background_image:Landroid/widget/ImageView;

    .line 39
    iput-object v1, v0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->deviceTypeName:Landroid/widget/TextView;

    return-void

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
