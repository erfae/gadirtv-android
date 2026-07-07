.class public Landroidx/leanback/supportleanbackshowcase/models/TVShowSeason;
.super Ljava/lang/Object;
.source "TVShowSeason.java"


# instance fields
.field public id:Ljava/lang/String;

.field public season_number:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public vod_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 12
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/TVShowSeason;->id:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/TVShowSeason;->title:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/TVShowSeason;->vod_type:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/TVShowSeason;->season_number:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getID()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/TVShowSeason;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getSeasonNumber()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/TVShowSeason;->season_number:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/TVShowSeason;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVodType()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/models/TVShowSeason;->vod_type:Ljava/lang/String;

    return-object v0
.end method

.method public setID(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/models/TVShowSeason;->id:Ljava/lang/String;

    return-void
.end method

.method public setSeasonNumber(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/models/TVShowSeason;->season_number:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/models/TVShowSeason;->title:Ljava/lang/String;

    return-void
.end method

.method public setVodType(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/models/TVShowSeason;->vod_type:Ljava/lang/String;

    return-void
.end method
