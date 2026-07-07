.class public final Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/ui/HomeFeedChannelsTrendingAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "HomeFeedChannelsTrendingAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/ui/HomeFeedChannelsTrendingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/ui/HomeFeedChannelsTrendingAdapter$ViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lcom/magoware/magoware/webtv/databinding/ListItemChannelsTrendingBinding;",
        "(Lcom/magoware/magoware/webtv/databinding/ListItemChannelsTrendingBinding;)V",
        "bind",
        "",
        "listener",
        "Landroid/view/View$OnClickListener;",
        "item",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsWithEpg;",
        "app_dmcenterRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final binding:Lcom/magoware/magoware/webtv/databinding/ListItemChannelsTrendingBinding;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/databinding/ListItemChannelsTrendingBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/databinding/ListItemChannelsTrendingBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/ui/HomeFeedChannelsTrendingAdapter$ViewHolder;->binding:Lcom/magoware/magoware/webtv/databinding/ListItemChannelsTrendingBinding;

    return-void
.end method


# virtual methods
.method public final bind(Landroid/view/View$OnClickListener;Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsWithEpg;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/ui/HomeFeedChannelsTrendingAdapter$ViewHolder;->binding:Lcom/magoware/magoware/webtv/databinding/ListItemChannelsTrendingBinding;

    .line 100
    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/databinding/ListItemChannelsTrendingBinding;->setClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-virtual {v0, p2}, Lcom/magoware/magoware/webtv/databinding/ListItemChannelsTrendingBinding;->setHomeFeedChannelsTrending(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsWithEpg;)V

    .line 102
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/databinding/ListItemChannelsTrendingBinding;->executePendingBindings()V

    return-void
.end method
