.class public Lcom/magoware/magoware/webtv/network/mvvm/models/MovieResponse;
.super Ljava/lang/Object;
.source "MovieResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private description:Ljava/lang/String;

.field private page:I

.field private results:Ljava/util/List;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "results"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
            ">;"
        }
    .end annotation
.end field

.field private totalPages:I
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "total_pages"
    .end annotation
.end field

.field private totalResults:I
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "total_results"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieResponse;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getPage()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieResponse;->page:I

    return v0
.end method

.method public getResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieResponse;->results:Ljava/util/List;

    return-object v0
.end method

.method public getTotalPages()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieResponse;->totalPages:I

    return v0
.end method

.method public getTotalResults()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieResponse;->totalResults:I

    return v0
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

    .line 75
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieResponse;->description:Ljava/lang/String;

    return-void
.end method

.method public setPage(I)Lcom/magoware/magoware/webtv/network/mvvm/models/MovieResponse;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "page"
        }
    .end annotation

    .line 39
    iput p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieResponse;->page:I

    return-object p0
.end method

.method public setResults(Ljava/util/List;)Lcom/magoware/magoware/webtv/network/mvvm/models/MovieResponse;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "results"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
            ">;)",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/MovieResponse;"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieResponse;->results:Ljava/util/List;

    return-object p0
.end method

.method public setTotalPages(I)Lcom/magoware/magoware/webtv/network/mvvm/models/MovieResponse;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "totalPages"
        }
    .end annotation

    .line 57
    iput p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieResponse;->totalPages:I

    return-object p0
.end method

.method public setTotalResults(I)Lcom/magoware/magoware/webtv/network/mvvm/models/MovieResponse;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "totalResults"
        }
    .end annotation

    .line 66
    iput p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/MovieResponse;->totalResults:I

    return-object p0
.end method
