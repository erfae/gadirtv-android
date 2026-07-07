.class final Lcom/magoware/magoware/webtv/players/channelMenu/search/SearchFragment$ItemViewClickedListener;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Landroidx/leanback/widget/OnItemViewClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/players/channelMenu/search/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ItemViewClickedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/players/channelMenu/search/SearchFragment;


# direct methods
.method private constructor <init>(Lcom/magoware/magoware/webtv/players/channelMenu/search/SearchFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 154
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/search/SearchFragment$ItemViewClickedListener;->this$0:Lcom/magoware/magoware/webtv/players/channelMenu/search/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/magoware/magoware/webtv/players/channelMenu/search/SearchFragment;Lcom/magoware/magoware/webtv/players/channelMenu/search/SearchFragment$1;)V
    .locals 0

    .line 154
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/players/channelMenu/search/SearchFragment$ItemViewClickedListener;-><init>(Lcom/magoware/magoware/webtv/players/channelMenu/search/SearchFragment;)V

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

    .line 159
    check-cast p2, Landroidx/leanback/supportleanbackshowcase/models/Card;

    .line 160
    invoke-virtual {p2}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getDuration()I

    move-result p1

    sput p1, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->clicked_channel:I

    .line 162
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/search/SearchFragment$ItemViewClickedListener;->this$0:Lcom/magoware/magoware/webtv/players/channelMenu/search/SearchFragment;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/channelMenu/search/SearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

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

    .line 154
    check-cast p4, Landroidx/leanback/widget/Row;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/magoware/magoware/webtv/players/channelMenu/search/SearchFragment$ItemViewClickedListener;->onItemClicked(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V

    return-void
.end method
