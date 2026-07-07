.class public Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodPagerAdapter;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "VodPagerAdapter.java"


# instance fields
.field private isVodMovie:Z

.field private tabs:[Ljava/lang/String;

.field private vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;Lcom/magoware/magoware/webtv/network/mvvm/models/Card;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fm",
            "tabs",
            "vodCard",
            "isVodMovie"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 19
    iput-object p2, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodPagerAdapter;->tabs:[Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodPagerAdapter;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 21
    iput-boolean p4, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodPagerAdapter;->isVodMovie:Z

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodPagerAdapter;->tabs:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodPagerAdapter;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTrailerUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/magoware/magoware/webtv/vod/mobile/fragments/MovieTrailerFragment;->newInstance(Ljava/lang/String;)Lcom/magoware/magoware/webtv/vod/mobile/fragments/MovieTrailerFragment;

    move-result-object p1

    goto :goto_0

    .line 29
    :cond_1
    iget-boolean p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodPagerAdapter;->isVodMovie:Z

    if-eqz p1, :cond_2

    .line 30
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodPagerAdapter;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/magoware/magoware/webtv/vod/mobile/fragments/RelatedMoviesFragment;->newInstance(I)Lcom/magoware/magoware/webtv/vod/mobile/fragments/RelatedMoviesFragment;

    move-result-object p1

    goto :goto_0

    .line 32
    :cond_2
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodPagerAdapter;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/vod/mobile/fragments/EpisodesTvShowFragment;->newInstance(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)Lcom/magoware/magoware/webtv/vod/mobile/fragments/EpisodesTvShowFragment;

    move-result-object p1

    :goto_0
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

    .line 48
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodPagerAdapter;->tabs:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method
