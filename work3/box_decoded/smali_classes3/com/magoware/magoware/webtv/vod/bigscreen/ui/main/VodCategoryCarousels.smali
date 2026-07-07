.class public Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VodCategoryCarousels;
.super Ljava/lang/Object;
.source "VodCategoryCarousels.java"


# static fields
.field public static categoriesCarousels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VodCategoryCarousels;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private carouselList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;",
            ">;"
        }
    .end annotation
.end field

.field private carouselsVodLists:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VodCategoryCarousels;->categoriesCarousels:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "carouselList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VodCategoryCarousels;->carouselList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCarouselList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VodCategoryCarousels;->carouselList:Ljava/util/List;

    return-object v0
.end method

.method public getCarouselsVodLists()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VodCategoryCarousels;->carouselsVodLists:Ljava/util/HashMap;

    return-object v0
.end method

.method public setCarouselList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "carouselList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;",
            ">;)V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VodCategoryCarousels;->carouselList:Ljava/util/List;

    return-void
.end method

.method public setCarouselsVodLists(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "carouselsVodLists"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;",
            ">;)V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VodCategoryCarousels;->carouselsVodLists:Ljava/util/HashMap;

    return-void
.end method
