.class public Lcom/magoware/magoware/webtv/vod/mobile/adapters/MainFragmentPagerAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "MainFragmentPagerAdapter.java"


# instance fields
.field private vodItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fm",
            "vodItemList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 18
    iput-object p2, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/MainFragmentPagerAdapter;->vodItemList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/MainFragmentPagerAdapter;->vodItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 33
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 34
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/MainFragmentPagerAdapter;->vodItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    const-string v1, "vodItemList"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 36
    new-instance p1, Lcom/magoware/magoware/webtv/vod/mobile/fragments/VodFragment;

    invoke-direct {p1}, Lcom/magoware/magoware/webtv/vod/mobile/fragments/VodFragment;-><init>()V

    .line 37
    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/vod/mobile/fragments/VodFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/MainFragmentPagerAdapter;->vodItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
