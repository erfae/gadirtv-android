.class public final Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;
.super Ljava/lang/Object;
.source "HomeFeedMoviesPaused.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0012\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J;\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u0005H\u00d6\u0001R\u0016\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0016\u0010\u0008\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\rR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000b\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;",
        "",
        "id",
        "",
        "title",
        "",
        "backdropPath",
        "resumePosition",
        "percentagePosition",
        "(ILjava/lang/String;Ljava/lang/String;II)V",
        "getBackdropPath",
        "()Ljava/lang/String;",
        "getId",
        "()I",
        "getPercentagePosition",
        "getResumePosition",
        "getTitle",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
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
.field private final backdropPath:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "backdrop_path"
    .end annotation
.end field

.field private final id:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private final percentagePosition:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "percentage_position"
    .end annotation
.end field

.field private final resumePosition:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "resume_position"
    .end annotation
.end field

.field private final title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;II)V
    .locals 1

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backdropPath"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->id:I

    iput-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->backdropPath:Ljava/lang/String;

    iput p4, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->resumePosition:I

    iput p5, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->percentagePosition:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;ILjava/lang/String;Ljava/lang/String;IIILjava/lang/Object;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->id:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->title:Ljava/lang/String;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->backdropPath:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->resumePosition:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->percentagePosition:I

    :cond_4
    move v2, p5

    move-object p2, p0

    move p3, p1

    move-object p4, p7

    move-object p5, v0

    move p6, v1

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->copy(ILjava/lang/String;Ljava/lang/String;II)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->id:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->backdropPath:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->resumePosition:I

    return v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->percentagePosition:I

    return v0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;II)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;
    .locals 7

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backdropPath"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;

    move-object v1, v0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;

    iget v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->id:I

    iget v1, p1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->id:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->title:Ljava/lang/String;

    iget-object v1, p1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->title:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->backdropPath:Ljava/lang/String;

    iget-object v1, p1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->backdropPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->resumePosition:I

    iget v1, p1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->resumePosition:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->percentagePosition:I

    iget p1, p1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->percentagePosition:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getBackdropPath()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->backdropPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->id:I

    return v0
.end method

.method public final getPercentagePosition()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->percentagePosition:I

    return v0
.end method

.method public final getResumePosition()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->resumePosition:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->id:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->title:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->backdropPath:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->resumePosition:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->percentagePosition:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HomeFeedMoviesPaused(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", backdropPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->backdropPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", resumePosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->resumePosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", percentagePosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->percentagePosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
