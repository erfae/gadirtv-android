.class public Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;
.super Ljava/lang/Object;
.source "VodListObject.java"


# instance fields
.field private carousel:Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field private moviesList:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "results"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
            ">;"
        }
    .end annotation
.end field

.field private page:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "page"
    .end annotation
.end field

.field private totalPages:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total_pages"
    .end annotation
.end field

.field private totalResults:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total_results"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCarousel()Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;->carousel:Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    const-string v0, "Sample description"

    return-object v0
.end method

.method public getMoviesList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;->moviesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPage()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;->page:I

    return v0
.end method

.method public getTotalPages()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;->totalPages:I

    return v0
.end method

.method public getTotalResults()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;->totalResults:I

    return v0
.end method

.method public setCategory(Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "carousel"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;->carousel:Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListObject;->description:Ljava/lang/String;

    return-void
.end method
