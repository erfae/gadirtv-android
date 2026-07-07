.class public Lcom/magoware/magoware/webtv/mobile_homepage/tv/new_arrival_presenters/NewArrivalView_ViewBinding;
.super Ljava/lang/Object;
.source "NewArrivalView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/magoware/magoware/webtv/mobile_homepage/tv/new_arrival_presenters/NewArrivalView;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/tv/new_arrival_presenters/NewArrivalView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/new_arrival_presenters/NewArrivalView_ViewBinding;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/tv/new_arrival_presenters/NewArrivalView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/tv/new_arrival_presenters/NewArrivalView;Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/new_arrival_presenters/NewArrivalView_ViewBinding;->target:Lcom/magoware/magoware/webtv/mobile_homepage/tv/new_arrival_presenters/NewArrivalView;

    .line 27
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0b046e

    const-string v2, "field \'imageView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/new_arrival_presenters/NewArrivalView;->imageView:Landroid/widget/ImageView;

    .line 28
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0b0470

    const-string v2, "field \'title\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/new_arrival_presenters/NewArrivalView;->title:Landroid/widget/TextView;

    .line 29
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0b046f

    const-string v2, "field \'listText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/new_arrival_presenters/NewArrivalView;->listText:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/new_arrival_presenters/NewArrivalView_ViewBinding;->target:Lcom/magoware/magoware/webtv/mobile_homepage/tv/new_arrival_presenters/NewArrivalView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 37
    iput-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/new_arrival_presenters/NewArrivalView_ViewBinding;->target:Lcom/magoware/magoware/webtv/mobile_homepage/tv/new_arrival_presenters/NewArrivalView;

    .line 39
    iput-object v1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/new_arrival_presenters/NewArrivalView;->imageView:Landroid/widget/ImageView;

    .line 40
    iput-object v1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/new_arrival_presenters/NewArrivalView;->title:Landroid/widget/TextView;

    .line 41
    iput-object v1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/new_arrival_presenters/NewArrivalView;->listText:Landroid/widget/TextView;

    return-void

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
