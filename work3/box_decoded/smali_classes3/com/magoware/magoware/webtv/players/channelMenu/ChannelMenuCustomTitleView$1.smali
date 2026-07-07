.class Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView$1;
.super Landroidx/leanback/widget/TitleViewAdapter;
.source "ChannelMenuCustomTitleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView$1;->this$0:Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView;

    invoke-direct {p0}, Landroidx/leanback/widget/TitleViewAdapter;-><init>()V

    return-void
.end method

.method private updateBadgeVisibility(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visible"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 81
    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->TIBO:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView$1;->this$0:Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView;->root:Landroid/view/View;

    const v1, 0x7f0b0669

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 83
    :cond_0
    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->HOSPITALITY:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p1

    const v1, 0x7f0b0668

    if-eqz p1, :cond_1

    .line 84
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView$1;->this$0:Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView;->root:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 86
    :cond_1
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView$1;->this$0:Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView;->root:Landroid/view/View;

    const v2, 0x7f0b0667

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 87
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView$1;->this$0:Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView;->root:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 88
    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->GOTV:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p1

    const v1, 0x7f0b03bc

    if-nez p1, :cond_2

    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->LINEATV:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 89
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView$1;->this$0:Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView;->root:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 91
    :cond_2
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView$1;->this$0:Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView;->root:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public getSearchAffordanceView()Landroid/view/View;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView$1;->this$0:Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView;->access$000(Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    return-void
.end method

.method public setOnSearchClickedListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView$1;->this$0:Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView;->access$000(Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "titleText"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView$1;->this$0:Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateComponentsVisibility(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flags"
        }
    .end annotation

    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    .line 64
    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView$1;->updateBadgeVisibility(Z)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-direct {p0, v1}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView$1;->updateBadgeVisibility(Z)V

    :goto_0
    const/4 v0, 0x4

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_1

    .line 69
    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->PES:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    .line 72
    :goto_1
    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->PES:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    .line 76
    :goto_2
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView$1;->this$0:Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView;->access$000(Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
