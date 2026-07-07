.class public Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView;
.super Landroid/widget/RelativeLayout;
.source "ChannelMenuCustomTitleView.java"

# interfaces
.implements Landroidx/leanback/widget/TitleViewAdapter$Provider;


# instance fields
.field private mSearchOrbView:Landroid/view/View;

.field private final mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

.field root:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, v0}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, p1, p2, v0}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyle"
        }
    .end annotation

    .line 107
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance p2, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView$1;

    invoke-direct {p2, p0}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView$1;-><init>(Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView;)V

    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView;->mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

    .line 108
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0e006d

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView;->root:Landroid/view/View;

    const p2, 0x7f0b057d

    .line 109
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView;->mSearchOrbView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView;)Landroid/view/View;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView;->mSearchOrbView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public getTitleViewAdapter()Landroidx/leanback/widget/TitleViewAdapter;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView;->mTitleViewAdapter:Landroidx/leanback/widget/TitleViewAdapter;

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuCustomTitleView;->root:Landroid/view/View;

    const v1, 0x7f0b0667

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
