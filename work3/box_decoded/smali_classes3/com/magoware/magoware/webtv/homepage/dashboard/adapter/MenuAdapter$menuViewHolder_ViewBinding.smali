.class public Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter$menuViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "MenuAdapter$menuViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter$menuViewHolder;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter$menuViewHolder;Landroid/view/View;)V
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

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter$menuViewHolder_ViewBinding;->target:Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter$menuViewHolder;

    .line 23
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0b03fa

    const-string v2, "field \'menu_image\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter$menuViewHolder;->menu_image:Landroid/widget/ImageView;

    .line 24
    const-class v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0b03fc

    const-string v2, "field \'menu_layout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter$menuViewHolder;->menu_layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 25
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0b03ff

    const-string v2, "field \'menu_title\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter$menuViewHolder;->menu_title:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter$menuViewHolder_ViewBinding;->target:Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter$menuViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 33
    iput-object v1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter$menuViewHolder_ViewBinding;->target:Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter$menuViewHolder;

    .line 35
    iput-object v1, v0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter$menuViewHolder;->menu_image:Landroid/widget/ImageView;

    .line 36
    iput-object v1, v0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter$menuViewHolder;->menu_layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 37
    iput-object v1, v0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/MenuAdapter$menuViewHolder;->menu_title:Landroid/widget/TextView;

    return-void

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
