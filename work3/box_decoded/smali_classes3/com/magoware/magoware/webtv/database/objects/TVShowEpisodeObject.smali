.class public Lcom/magoware/magoware/webtv/database/objects/TVShowEpisodeObject;
.super Lcom/framework/utilityframe/database/DatabaseObject;
.source "TVShowEpisodeObject.java"


# instance fields
.field public description:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public largeimage:Ljava/lang/String;

.field public rate:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public vod_type:Ljava/lang/String;

.field public year:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    const-class v0, Lcom/magoware/magoware/webtv/database/objects/TVShowEpisodeObject;

    const-string v1, "id"

    invoke-direct {p0, v0, v1}, Lcom/framework/utilityframe/database/DatabaseObject;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    const-string v0, ""

    .line 21
    iput-object v0, p0, Lcom/magoware/magoware/webtv/database/objects/TVShowEpisodeObject;->id:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/magoware/magoware/webtv/database/objects/TVShowEpisodeObject;->title:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/magoware/magoware/webtv/database/objects/TVShowEpisodeObject;->description:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/magoware/magoware/webtv/database/objects/TVShowEpisodeObject;->icon:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/magoware/magoware/webtv/database/objects/TVShowEpisodeObject;->largeimage:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/magoware/magoware/webtv/database/objects/TVShowEpisodeObject;->rate:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/magoware/magoware/webtv/database/objects/TVShowEpisodeObject;->year:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/magoware/magoware/webtv/database/objects/TVShowEpisodeObject;->vod_type:Ljava/lang/String;

    return-void
.end method

.method public static getFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "f"
        }
    .end annotation

    const/16 v0, 0x2f

    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, " "

    const-string v1, "%20"

    .line 33
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public toJsonObject()Lorg/json/JSONObject;
    .locals 3

    .line 37
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "id"

    .line 40
    iget-object v2, p0, Lcom/magoware/magoware/webtv/database/objects/TVShowEpisodeObject;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "title"

    .line 41
    iget-object v2, p0, Lcom/magoware/magoware/webtv/database/objects/TVShowEpisodeObject;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "description"

    .line 42
    iget-object v2, p0, Lcom/magoware/magoware/webtv/database/objects/TVShowEpisodeObject;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "icon"

    .line 43
    iget-object v2, p0, Lcom/magoware/magoware/webtv/database/objects/TVShowEpisodeObject;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "largeimage"

    .line 44
    iget-object v2, p0, Lcom/magoware/magoware/webtv/database/objects/TVShowEpisodeObject;->largeimage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rate"

    .line 45
    iget-object v2, p0, Lcom/magoware/magoware/webtv/database/objects/TVShowEpisodeObject;->rate:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "year"

    .line 46
    iget-object v2, p0, Lcom/magoware/magoware/webtv/database/objects/TVShowEpisodeObject;->year:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "vod_type"

    .line 47
    iget-object v2, p0, Lcom/magoware/magoware/webtv/database/objects/TVShowEpisodeObject;->vod_type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 51
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method
