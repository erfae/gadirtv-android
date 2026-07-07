.class public interface abstract Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannelsDao;
.super Ljava/lang/Object;
.source "HomeFeedTvChannelsDao.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008g\u0018\u00002\u00020\u0001J\u0014\u0010\u0002\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u0003H\'J\u0016\u0010\u0006\u001a\u00020\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\'\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannelsDao;",
        "",
        "getHomeFeedTvChannels",
        "Landroidx/lifecycle/LiveData;",
        "",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannels;",
        "insertAll",
        "",
        "homeFeedMovies",
        "app_dmcenterRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# virtual methods
.method public abstract getHomeFeedTvChannels()Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannels;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract insertAll(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannels;",
            ">;)V"
        }
    .end annotation
.end method
