.class Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment$PageRowFragmentFactory;
.super Landroidx/leanback/app/BrowseSupportFragment$FragmentFactory;
.source "ChannelMenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PageRowFragmentFactory"
.end annotation


# instance fields
.field private final mBackgroundManager:Landroidx/leanback/app/BackgroundManager;


# direct methods
.method constructor <init>(Landroidx/leanback/app/BackgroundManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backgroundManager"
        }
    .end annotation

    .line 186
    invoke-direct {p0}, Landroidx/leanback/app/BrowseSupportFragment$FragmentFactory;-><init>()V

    .line 187
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment$PageRowFragmentFactory;->mBackgroundManager:Landroidx/leanback/app/BackgroundManager;

    return-void
.end method


# virtual methods
.method public createFragment(Ljava/lang/Object;)Landroidx/fragment/app/Fragment;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rowObj"
        }
    .end annotation

    .line 192
    check-cast p1, Landroidx/leanback/widget/Row;

    .line 193
    invoke-virtual {p1}, Landroidx/leanback/widget/Row;->getHeaderItem()Landroidx/leanback/widget/HeaderItem;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/leanback/widget/HeaderItem;->getId()J

    move-result-wide v0

    long-to-int p1, v0

    sput p1, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment;->category_id:I

    .line 194
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment$PageRowFragmentFactory;->mBackgroundManager:Landroidx/leanback/app/BackgroundManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/leanback/app/BackgroundManager;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 196
    new-instance p1, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment$SampleFragmentA;

    invoke-direct {p1}, Lcom/magoware/magoware/webtv/players/channelMenu/ChannelMenuFragment$SampleFragmentA;-><init>()V

    return-object p1
.end method
