.class public final Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "HomeFeedTvChannelsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannels;",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsAdapter$ViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u001fB\u0005\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002H\u0002J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0013\u001a\u00020\u0002H\u0002J\u0018\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0018\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0019H\u0016J\u000e\u0010\u001e\u001a\u00020\u00152\u0006\u0010\u000b\u001a\u00020\u000cR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u000cX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006 "
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsAdapter;",
        "Landroidx/recyclerview/widget/ListAdapter;",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannels;",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsAdapter$ViewHolder;",
        "()V",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "listener",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/LoginDialogListener;",
        "getListener",
        "()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/LoginDialogListener;",
        "setListener",
        "(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/LoginDialogListener;)V",
        "createOnClickListener",
        "Landroid/view/View$OnClickListener;",
        "channels",
        "intentLiveTv",
        "",
        "onBindViewHolder",
        "holder",
        "position",
        "",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "setOnClickListener",
        "ViewHolder",
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
.field public context:Landroid/content/Context;

.field public listener:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/LoginDialogListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/DiffCallback;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/DiffCallback;-><init>()V

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    return-void
.end method

.method public static final synthetic access$intentLiveTv(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsAdapter;Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannels;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsAdapter;->intentLiveTv(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannels;)V

    return-void
.end method

.method private final createOnClickListener(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannels;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 40
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsAdapter$createOnClickListener$1;

    invoke-direct {v0, p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsAdapter$createOnClickListener$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsAdapter;Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannels;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private final intentLiveTv(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannels;)V
    .locals 5

    .line 62
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LAST_CHANNEL_VIEWED:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannels;->getChannelNumber()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LAST_CHANNEL_VIEWED_NAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannels;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsAdapter;->context:Landroid/content/Context;

    const-string v1, "context"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const-class v2, Lcom/magoware/magoware/webtv/players/ChannelActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    sget-object v0, Lcom/magoware/magoware/webtv/util/Utils;->LIVE_TV:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 67
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsAdapter;->context:Landroid/content/Context;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsAdapter;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v1, "context"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getListener()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/LoginDialogListener;
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsAdapter;->listener:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/LoginDialogListener;

    if-nez v0, :cond_0

    const-string v1, "listener"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 21
    check-cast p1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsAdapter;->onBindViewHolder(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsAdapter$ViewHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannels;

    const-string v0, "homeFeedTvChannels"

    .line 28
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsAdapter;->createOnClickListener(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannels;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsAdapter$ViewHolder;->bind(Landroid/view/View$OnClickListener;Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannels;)V

    .line 29
    iget-object p1, p1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsAdapter$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsAdapter$ViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsAdapter$ViewHolder;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "parent.context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsAdapter;->context:Landroid/content/Context;

    .line 35
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsAdapter$ViewHolder;

    if-nez p2, :cond_0

    const-string v1, "context"

    .line 36
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v1, 0x0

    .line 35
    invoke-static {p2, p1, v1}, Lcom/magoware/magoware/webtv/databinding/ListItemTvChannelsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/magoware/magoware/webtv/databinding/ListItemTvChannelsBinding;

    move-result-object p1

    const-string p2, "ListItemTvChannelsBindin\u2026(context), parent, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsAdapter$ViewHolder;-><init>(Lcom/magoware/magoware/webtv/databinding/ListItemTvChannelsBinding;)V

    return-object v0
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method public final setListener(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/LoginDialogListener;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsAdapter;->listener:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/LoginDialogListener;

    return-void
.end method

.method public final setOnClickListener(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/LoginDialogListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsAdapter;->listener:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/LoginDialogListener;

    return-void
.end method
