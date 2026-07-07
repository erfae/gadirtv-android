.class public Lcom/magoware/magoware/webtv/players/channelMenu/ImageCardViewPresenterChannelMenu;
.super Lcom/magoware/magoware/webtv/players/channelMenu/AbstractCardPresenterChannelMenu;
.source "ImageCardViewPresenterChannelMenu.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/magoware/magoware/webtv/players/channelMenu/AbstractCardPresenterChannelMenu<",
        "Landroidx/leanback/widget/ImageCardView;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageCardViewPresenter"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 38
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f15012d

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/channelMenu/AbstractCardPresenterChannelMenu;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private setImageBackground(Landroidx/leanback/widget/ImageCardView;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageCardView"
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/channelMenu/ImageCardViewPresenterChannelMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/ImageCardView;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreateView$0$ImageCardViewPresenterChannelMenu(Landroidx/leanback/widget/ImageCardView;Landroid/view/View;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 51
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/players/channelMenu/ImageCardViewPresenterChannelMenu;->setImageBackground(Landroidx/leanback/widget/ImageCardView;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 53
    invoke-virtual {p1, p2}, Landroidx/leanback/widget/ImageCardView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/leanback/supportleanbackshowcase/models/Card;Landroidx/leanback/widget/BaseCardView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1010
        }
        names = {
            "card",
            "cardView"
        }
    .end annotation

    .line 33
    check-cast p2, Landroidx/leanback/widget/ImageCardView;

    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/players/channelMenu/ImageCardViewPresenterChannelMenu;->onBindViewHolder(Landroidx/leanback/supportleanbackshowcase/models/Card;Landroidx/leanback/widget/ImageCardView;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/leanback/supportleanbackshowcase/models/Card;Landroidx/leanback/widget/ImageCardView;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "card",
            "cardView"
        }
    .end annotation

    .line 66
    invoke-virtual {p2, p1}, Landroidx/leanback/widget/ImageCardView;->setTag(Ljava/lang/Object;)V

    .line 67
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/leanback/widget/ImageCardView;->setTitleText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getLocalImageResourceName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 70
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    const v1, 0x1080078

    .line 71
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 72
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 74
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/channelMenu/ImageCardViewPresenterChannelMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 75
    invoke-virtual {p1}, Landroidx/leanback/supportleanbackshowcase/models/Card;->getLocalImageResource()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 76
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 77
    invoke-virtual {p2}, Landroidx/leanback/widget/ImageCardView;->getMainImageView()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_0
    return-void
.end method

.method protected bridge synthetic onCreateView()Landroidx/leanback/widget/BaseCardView;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/channelMenu/ImageCardViewPresenterChannelMenu;->onCreateView()Landroidx/leanback/widget/ImageCardView;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateView()Landroidx/leanback/widget/ImageCardView;
    .locals 3

    .line 44
    new-instance v0, Landroidx/leanback/widget/ImageCardView;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/channelMenu/ImageCardViewPresenterChannelMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/leanback/widget/ImageCardView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 45
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ImageCardView;->setFocusable(Z)V

    const/4 v2, 0x0

    .line 46
    invoke-virtual {v0, v2}, Landroidx/leanback/widget/ImageCardView;->setFocusableInTouchMode(Z)V

    .line 47
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ImageCardView;->setClickable(Z)V

    .line 49
    new-instance v1, Lcom/magoware/magoware/webtv/players/channelMenu/-$$Lambda$ImageCardViewPresenterChannelMenu$715ptGSlT0D9YCMk5wXLnQUmQ6s;

    invoke-direct {v1, p0, v0}, Lcom/magoware/magoware/webtv/players/channelMenu/-$$Lambda$ImageCardViewPresenterChannelMenu$715ptGSlT0D9YCMk5wXLnQUmQ6s;-><init>(Lcom/magoware/magoware/webtv/players/channelMenu/ImageCardViewPresenterChannelMenu;Landroidx/leanback/widget/ImageCardView;)V

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ImageCardView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const/4 v1, 0x0

    .line 56
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ImageCardView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method
