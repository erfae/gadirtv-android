.class final Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$initComingChannelsAdapter$1;
.super Ljava/lang/Object;
.source "HomeFeedFragment.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->initComingChannelsAdapter(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/magoware/magoware/webtv/data/Resource<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;",
        ">;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012&\u0010\u0002\u001a\"\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0004 \u0006*\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "result",
        "Lcom/magoware/magoware/webtv/data/Resource;",
        "",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $adapter:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsAdapter;

.field final synthetic $carouselLinear:Landroid/view/View;

.field final synthetic this$0:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$initComingChannelsAdapter$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$initComingChannelsAdapter$1;->$adapter:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsAdapter;

    iput-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$initComingChannelsAdapter$1;->$carouselLinear:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Lcom/magoware/magoware/webtv/data/Resource;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/magoware/magoware/webtv/data/Resource<",
            "+",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;",
            ">;>;)V"
        }
    .end annotation

    .line 264
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getStatus()Lcom/magoware/magoware/webtv/data/Status;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$WhenMappings;->$EnumSwitchMapping$4:[I

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/data/Status;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$initComingChannelsAdapter$1;->$carouselLinear:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$initComingChannelsAdapter$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->access$getBinding$p(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;)Lcom/magoware/magoware/webtv/databinding/FragmentHomeFeedBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/databinding/FragmentHomeFeedBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, p1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto/16 :goto_3

    .line 266
    :cond_1
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_6

    .line 268
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$initComingChannelsAdapter$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->access$getComingChannelList$p(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 269
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$initComingChannelsAdapter$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->access$getScheduleChannelsList$p(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_5

    .line 270
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;

    .line 271
    iget-object v3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$initComingChannelsAdapter$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;

    invoke-static {v3}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->access$getScheduleChannelsList$p(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 272
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;->getChannelEpgData()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;

    invoke-virtual {v5}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;->getId()I

    move-result v5

    if-ne v5, v4, :cond_2

    .line 273
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;->getChannelEpgData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;

    invoke-virtual {v4, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;->setScheduled(Z)V

    goto :goto_1

    .line 276
    :cond_3
    iget-object v3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$initComingChannelsAdapter$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;

    invoke-static {v3}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->access$getComingChannelList$p(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 278
    :cond_4
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$initComingChannelsAdapter$1;->$adapter:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsAdapter;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$initComingChannelsAdapter$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;->access$getComingChannelList$p(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsAdapter;->submitList(Ljava/util/List;)V

    goto :goto_2

    .line 280
    :cond_5
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$initComingChannelsAdapter$1;->$adapter:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsAdapter;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsAdapter;->submitList(Ljava/util/List;)V

    .line 284
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$initComingChannelsAdapter$1;->$carouselLinear:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 78
    check-cast p1, Lcom/magoware/magoware/webtv/data/Resource;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment$initComingChannelsAdapter$1;->onChanged(Lcom/magoware/magoware/webtv/data/Resource;)V

    return-void
.end method
