.class public Lcom/magoware/magoware/webtv/mobile_homepage/tv/coming_next_presenters/ComingNextView_ViewBinding;
.super Ljava/lang/Object;
.source "ComingNextView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/magoware/magoware/webtv/mobile_homepage/tv/coming_next_presenters/ComingNextView;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/tv/coming_next_presenters/ComingNextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/coming_next_presenters/ComingNextView_ViewBinding;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/tv/coming_next_presenters/ComingNextView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/tv/coming_next_presenters/ComingNextView;Landroid/view/View;)V
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

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/coming_next_presenters/ComingNextView_ViewBinding;->target:Lcom/magoware/magoware/webtv/mobile_homepage/tv/coming_next_presenters/ComingNextView;

    .line 28
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0b018a

    const-string v2, "field \'imageView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/coming_next_presenters/ComingNextView;->imageView:Landroid/widget/ImageView;

    .line 29
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0b018b

    const-string v2, "field \'title\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/coming_next_presenters/ComingNextView;->title:Landroid/widget/TextView;

    .line 30
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0b0563

    const-string v2, "field \'scheduledLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/coming_next_presenters/ComingNextView;->scheduledLayout:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/coming_next_presenters/ComingNextView_ViewBinding;->target:Lcom/magoware/magoware/webtv/mobile_homepage/tv/coming_next_presenters/ComingNextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 38
    iput-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/coming_next_presenters/ComingNextView_ViewBinding;->target:Lcom/magoware/magoware/webtv/mobile_homepage/tv/coming_next_presenters/ComingNextView;

    .line 40
    iput-object v1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/coming_next_presenters/ComingNextView;->imageView:Landroid/widget/ImageView;

    .line 41
    iput-object v1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/coming_next_presenters/ComingNextView;->title:Landroid/widget/TextView;

    .line 42
    iput-object v1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/coming_next_presenters/ComingNextView;->scheduledLayout:Landroid/widget/LinearLayout;

    return-void

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
