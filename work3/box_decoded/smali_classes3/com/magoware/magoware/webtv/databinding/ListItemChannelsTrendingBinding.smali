.class public abstract Lcom/magoware/magoware/webtv/databinding/ListItemChannelsTrendingBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ListItemChannelsTrendingBinding.java"


# instance fields
.field public final feedChannelProgress:Landroid/widget/ProgressBar;

.field public final feedChannelTrendingPoster:Landroid/widget/ImageView;

.field public final feedChannelTrendingTitle:Landroid/widget/TextView;

.field protected mClickListener:Landroid/view/View$OnClickListener;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mHomeFeedChannelsTrending:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsWithEpg;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "_bindingComponent",
            "_root",
            "_localFieldCount",
            "feedChannelProgress",
            "feedChannelTrendingPoster",
            "feedChannelTrendingTitle"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 40
    iput-object p4, p0, Lcom/magoware/magoware/webtv/databinding/ListItemChannelsTrendingBinding;->feedChannelProgress:Landroid/widget/ProgressBar;

    .line 41
    iput-object p5, p0, Lcom/magoware/magoware/webtv/databinding/ListItemChannelsTrendingBinding;->feedChannelTrendingPoster:Landroid/widget/ImageView;

    .line 42
    iput-object p6, p0, Lcom/magoware/magoware/webtv/databinding/ListItemChannelsTrendingBinding;->feedChannelTrendingTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/magoware/magoware/webtv/databinding/ListItemChannelsTrendingBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 100
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/magoware/magoware/webtv/databinding/ListItemChannelsTrendingBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/magoware/magoware/webtv/databinding/ListItemChannelsTrendingBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/magoware/magoware/webtv/databinding/ListItemChannelsTrendingBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "component"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0e012d

    .line 113
    invoke-static {p1, p0, v0}, Lcom/magoware/magoware/webtv/databinding/ListItemChannelsTrendingBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/magoware/magoware/webtv/databinding/ListItemChannelsTrendingBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/magoware/magoware/webtv/databinding/ListItemChannelsTrendingBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    .line 82
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/magoware/magoware/webtv/databinding/ListItemChannelsTrendingBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/magoware/magoware/webtv/databinding/ListItemChannelsTrendingBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/magoware/magoware/webtv/databinding/ListItemChannelsTrendingBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "root",
            "attachToRoot"
        }
    .end annotation

    .line 63
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/magoware/magoware/webtv/databinding/ListItemChannelsTrendingBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/magoware/magoware/webtv/databinding/ListItemChannelsTrendingBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/magoware/magoware/webtv/databinding/ListItemChannelsTrendingBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "root",
            "attachToRoot",
            "component"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0e012d

    .line 77
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/magoware/magoware/webtv/databinding/ListItemChannelsTrendingBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/magoware/magoware/webtv/databinding/ListItemChannelsTrendingBinding;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inflater",
            "component"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0e012d

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 96
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/magoware/magoware/webtv/databinding/ListItemChannelsTrendingBinding;

    return-object p0
.end method


# virtual methods
.method public getClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/magoware/magoware/webtv/databinding/ListItemChannelsTrendingBinding;->mClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getHomeFeedChannelsTrending()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsWithEpg;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/magoware/magoware/webtv/databinding/ListItemChannelsTrendingBinding;->mHomeFeedChannelsTrending:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsWithEpg;

    return-object v0
.end method

.method public abstract setClickListener(Landroid/view/View$OnClickListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clickListener"
        }
    .end annotation
.end method

.method public abstract setHomeFeedChannelsTrending(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsWithEpg;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "homeFeedChannelsTrending"
        }
    .end annotation
.end method
