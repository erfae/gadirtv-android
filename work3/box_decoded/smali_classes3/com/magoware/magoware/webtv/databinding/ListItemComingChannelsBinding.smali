.class public abstract Lcom/magoware/magoware/webtv/databinding/ListItemComingChannelsBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ListItemComingChannelsBinding.java"


# instance fields
.field public final feedChannelInfo:Landroid/widget/Button;

.field public final feedChannelScheduleIcon:Landroid/widget/ImageView;

.field public final feedChannelScheduleLabel:Landroid/widget/TextView;

.field public final feedChannelScheduleLinear:Landroid/widget/LinearLayout;

.field public final feedComingChannelTitle:Landroid/widget/TextView;

.field public final feedEpgIcon:Landroid/widget/ImageView;

.field protected mHomeFeedComingChannels:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
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
            "feedChannelInfo",
            "feedChannelScheduleIcon",
            "feedChannelScheduleLabel",
            "feedChannelScheduleLinear",
            "feedComingChannelTitle",
            "feedEpgIcon"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 48
    iput-object p4, p0, Lcom/magoware/magoware/webtv/databinding/ListItemComingChannelsBinding;->feedChannelInfo:Landroid/widget/Button;

    .line 49
    iput-object p5, p0, Lcom/magoware/magoware/webtv/databinding/ListItemComingChannelsBinding;->feedChannelScheduleIcon:Landroid/widget/ImageView;

    .line 50
    iput-object p6, p0, Lcom/magoware/magoware/webtv/databinding/ListItemComingChannelsBinding;->feedChannelScheduleLabel:Landroid/widget/TextView;

    .line 51
    iput-object p7, p0, Lcom/magoware/magoware/webtv/databinding/ListItemComingChannelsBinding;->feedChannelScheduleLinear:Landroid/widget/LinearLayout;

    .line 52
    iput-object p8, p0, Lcom/magoware/magoware/webtv/databinding/ListItemComingChannelsBinding;->feedComingChannelTitle:Landroid/widget/TextView;

    .line 53
    iput-object p9, p0, Lcom/magoware/magoware/webtv/databinding/ListItemComingChannelsBinding;->feedEpgIcon:Landroid/widget/ImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/magoware/magoware/webtv/databinding/ListItemComingChannelsBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 104
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/magoware/magoware/webtv/databinding/ListItemComingChannelsBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/magoware/magoware/webtv/databinding/ListItemComingChannelsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/magoware/magoware/webtv/databinding/ListItemComingChannelsBinding;
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

    const v0, 0x7f0e012e

    .line 116
    invoke-static {p1, p0, v0}, Lcom/magoware/magoware/webtv/databinding/ListItemComingChannelsBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/magoware/magoware/webtv/databinding/ListItemComingChannelsBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/magoware/magoware/webtv/databinding/ListItemComingChannelsBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    .line 86
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/magoware/magoware/webtv/databinding/ListItemComingChannelsBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/magoware/magoware/webtv/databinding/ListItemComingChannelsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/magoware/magoware/webtv/databinding/ListItemComingChannelsBinding;
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

    .line 67
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/magoware/magoware/webtv/databinding/ListItemComingChannelsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/magoware/magoware/webtv/databinding/ListItemComingChannelsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/magoware/magoware/webtv/databinding/ListItemComingChannelsBinding;
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

    const v0, 0x7f0e012e

    .line 81
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/magoware/magoware/webtv/databinding/ListItemComingChannelsBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/magoware/magoware/webtv/databinding/ListItemComingChannelsBinding;
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

    const v0, 0x7f0e012e

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 100
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/magoware/magoware/webtv/databinding/ListItemComingChannelsBinding;

    return-object p0
.end method


# virtual methods
.method public getHomeFeedComingChannels()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/magoware/magoware/webtv/databinding/ListItemComingChannelsBinding;->mHomeFeedComingChannels:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;

    return-object v0
.end method

.method public abstract setHomeFeedComingChannels(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "homeFeedComingChannels"
        }
    .end annotation
.end method
