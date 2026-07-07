.class final Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment$ItemViewSelectedListener;
.super Ljava/lang/Object;
.source "VerticalGridFragment.java"

# interfaces
.implements Landroidx/leanback/widget/OnItemViewSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ItemViewSelectedListener"
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

    .line 137
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment$ItemViewSelectedListener;->this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment$1;)V
    .locals 0

    .line 137
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment$ItemViewSelectedListener;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;)V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V
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

    .line 140
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment$ItemViewSelectedListener;->this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->access$500(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;)Landroidx/leanback/widget/ArrayObjectAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/leanback/widget/ArrayObjectAdapter;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 141
    iget-object p2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment$ItemViewSelectedListener;->this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;

    invoke-static {p2}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->access$500(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;)Landroidx/leanback/widget/ArrayObjectAdapter;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/leanback/widget/ArrayObjectAdapter;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x6

    if-le p1, p2, :cond_0

    .line 143
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment$ItemViewSelectedListener;->this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->access$608(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;)I

    .line 144
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment$ItemViewSelectedListener;->this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->access$600(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->access$700(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
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

    .line 137
    check-cast p4, Landroidx/leanback/widget/Row;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment$ItemViewSelectedListener;->onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V

    return-void
.end method
