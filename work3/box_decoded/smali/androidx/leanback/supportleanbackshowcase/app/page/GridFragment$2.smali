.class Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment$2;
.super Ljava/lang/Object;
.source "GridFragment.java"

# interfaces
.implements Landroidx/leanback/widget/OnItemViewSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;


# direct methods
.method constructor <init>(Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;)V
    .locals 0

    .line 94
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment$2;->this$0:Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V
    .locals 3

    .line 98
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment$2;->this$0:Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;

    invoke-static {v0}, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->access$000(Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;)Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/VerticalGridView;->getSelectedPosition()I

    move-result v0

    .line 99
    invoke-static {}, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "grid selected position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VerticalGridFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    iget-object v1, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment$2;->this$0:Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;

    invoke-static {v1, v0}, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->access$200(Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;I)V

    .line 101
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment$2;->this$0:Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;

    invoke-static {v0}, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->access$300(Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;)Landroidx/leanback/widget/OnItemViewSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment$2;->this$0:Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;

    invoke-static {v0}, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->access$300(Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;)Landroidx/leanback/widget/OnItemViewSelectedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/leanback/widget/OnItemViewSelectedListener;->onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 94
    check-cast p4, Landroidx/leanback/widget/Row;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment$2;->onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V

    return-void
.end method
