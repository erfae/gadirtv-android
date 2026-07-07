.class public Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$MovieDetailsDescriptionPresenter;
.super Landroidx/leanback/widget/Presenter;
.source "DetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MovieDetailsDescriptionPresenter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 747
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment$MovieDetailsDescriptionPresenter;->this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;

    invoke-direct {p0}, Landroidx/leanback/widget/Presenter;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewHolder",
            "item"
        }
    .end annotation

    .line 757
    check-cast p2, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 758
    check-cast p1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieDetailsViewHolder;

    .line 759
    invoke-virtual {p1, p2}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieDetailsViewHolder;->bind(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/Presenter$ViewHolder;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .line 751
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0156

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 752
    new-instance v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieDetailsViewHolder;

    invoke-direct {v0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/views/MovieDetailsViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public onUnbindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewHolder"
        }
    .end annotation

    return-void
.end method
