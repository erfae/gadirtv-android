.class public Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageRowFragmentFactory;
.super Landroidx/leanback/app/BrowseSupportFragment$FragmentFactory;
.source "PageRowFragmentFactory.java"


# instance fields
.field private isAssetType:Z

.field private final mBackgroundManager:Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "backgroundManager",
            "isAssetType"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Landroidx/leanback/app/BrowseSupportFragment$FragmentFactory;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageRowFragmentFactory;->mBackgroundManager:Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;

    .line 22
    iput-boolean p2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageRowFragmentFactory;->isAssetType:Z

    return-void
.end method


# virtual methods
.method public createFragment(Ljava/lang/Object;)Landroidx/fragment/app/Fragment;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rowObj"
        }
    .end annotation

    .line 27
    check-cast p1, Landroidx/leanback/widget/Row;

    .line 28
    new-instance v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;-><init>()V

    .line 29
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroidx/leanback/widget/Row;->getHeaderItem()Landroidx/leanback/widget/HeaderItem;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/leanback/widget/HeaderItem;->getId()J

    move-result-wide v2

    const-string v4, "header_id"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 31
    invoke-virtual {p1}, Landroidx/leanback/widget/Row;->getHeaderItem()Landroidx/leanback/widget/HeaderItem;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/leanback/widget/HeaderItem;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "header_title"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Landroidx/leanback/widget/Row;->getHeaderItem()Landroidx/leanback/widget/HeaderItem;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/IconHeaderItem;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/IconHeaderItem;->isPinProtected()Z

    move-result p1

    const-string v2, "header_protected"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 33
    iget-boolean p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageRowFragmentFactory;->isAssetType:Z

    const-string v2, "assets_type"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 34
    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 35
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/PageRowFragmentFactory;->mBackgroundManager:Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->setBackgroundManager(Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;)V

    return-object v0
.end method
