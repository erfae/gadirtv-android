.class final Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment$ItemViewClickedListener;
.super Ljava/lang/Object;
.source "VerticalGridFragment.java"

# interfaces
.implements Landroidx/leanback/widget/OnItemViewClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ItemViewClickedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;


# direct methods
.method private constructor <init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment$ItemViewClickedListener;->this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment$1;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment$ItemViewClickedListener;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;)V

    return-void
.end method


# virtual methods
.method public onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "itemViewHolder",
            "item",
            "rowViewHolder",
            "row"
        }
    .end annotation

    .line 124
    instance-of p3, p2, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    if-eqz p3, :cond_2

    .line 125
    iget-object p3, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment$ItemViewClickedListener;->this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;

    check-cast p2, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-static {p3, p2}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->access$202(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 126
    iget-object p2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment$ItemViewClickedListener;->this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;

    invoke-static {p2, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->access$302(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;Landroidx/leanback/widget/Presenter$ViewHolder;)Landroidx/leanback/widget/Presenter$ViewHolder;

    .line 127
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment$ItemViewClickedListener;->this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->access$200(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;)Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    move-result-object p1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->isAdult()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment$ItemViewClickedListener;->this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->access$200(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;)Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    move-result-object p1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->isPinProtected()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment$ItemViewClickedListener;->this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->access$400(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;)V

    goto :goto_1

    .line 128
    :cond_1
    :goto_0
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment$ItemViewClickedListener;->this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-class p3, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PinActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    iget-object p2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment$ItemViewClickedListener;->this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;

    const/4 p3, 0x2

    invoke-virtual {p2, p1, p3}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "itemViewHolder",
            "item",
            "rowViewHolder",
            "row"
        }
    .end annotation

    .line 120
    check-cast p4, Landroidx/leanback/widget/Row;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment$ItemViewClickedListener;->onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V

    return-void
.end method
