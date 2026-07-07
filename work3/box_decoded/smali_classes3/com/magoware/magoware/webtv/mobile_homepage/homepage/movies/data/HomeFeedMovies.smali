.class public final Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;
.super Ljava/lang/Object;
.source "HomeFeedMovies.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0006H\u00c6\u0003J1\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u0006H\u00d6\u0001R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\n\"\u0004\u0008\u000e\u0010\u000cR\u0016\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;",
        "",
        "idd",
        "",
        "id",
        "title",
        "",
        "posterPath",
        "(IILjava/lang/String;Ljava/lang/String;)V",
        "getId",
        "()I",
        "setId",
        "(I)V",
        "getIdd",
        "setIdd",
        "getPosterPath",
        "()Ljava/lang/String;",
        "getTitle",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "app_dmcenterRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private id:I

.field private idd:I

.field private final posterPath:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "poster_path"
    .end annotation
.end field

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "posterPath"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;->idd:I

    iput p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;->id:I

    iput-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;->title:Ljava/lang/String;

    iput-object p4, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;->posterPath:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;IILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;->idd:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;->id:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;->title:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;->posterPath:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;->copy(IILjava/lang/String;Ljava/lang/String;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;->idd:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;->id:I

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;->posterPath:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(IILjava/lang/String;Ljava/lang/String;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;
    .locals 1

    const-string v0, "title"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "posterPath"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;

    iget v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;->idd:I

    iget v1, p1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;->idd:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;->id:I

    iget v1, p1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;->id:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;->title:Ljava/lang/String;

    iget-object v1, p1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;->title:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;->posterPath:Ljava/lang/String;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;->posterPath:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getId()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;->id:I

    return v0
.end method

.method public final getIdd()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;->idd:I

    return v0
.end method

.method public final getPosterPath()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;->posterPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;->idd:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;->id:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;->title:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;->posterPath:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final setId(I)V
    .locals 0

    .line 11
    iput p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;->id:I

    return-void
.end method

.method public final setIdd(I)V
    .locals 0

    .line 10
    iput p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;->idd:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HomeFeedMovies(idd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;->idd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", posterPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;->posterPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
