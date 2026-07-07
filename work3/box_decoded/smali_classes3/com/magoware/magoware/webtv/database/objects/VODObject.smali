.class public Lcom/magoware/magoware/webtv/database/objects/VODObject;
.super Lcom/framework/utilityframe/database/DatabaseObject;
.source "VODObject.java"


# instance fields
.field public TokenUrl:Ljava/lang/String;

.field public categories:Ljava/lang/String;

.field public categoryid:Ljava/lang/String;

.field public dataadded:J

.field public description:Ljava/lang/String;

.field public encryption:Ljava/lang/String;

.field public encryption_url:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public largeimage:Ljava/lang/String;

.field public pin_protected:I

.field public rate:Ljava/lang/String;

.field public stream_format:Ljava/lang/String;

.field public subtitles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/database/objects/SubtitleObject;",
            ">;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/String;

.field public token:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public vod_type:Ljava/lang/String;

.field public year:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 34
    const-class v0, Lcom/magoware/magoware/webtv/database/objects/VODObject;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/framework/utilityframe/database/DatabaseObject;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 35
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/VODObject;->id:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/VODObject;->title:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/VODObject;->url:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/database/objects/VODObject;->subtitles:Ljava/util/ArrayList;

    .line 39
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/VODObject;->description:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/VODObject;->icon:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/VODObject;->largeimage:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/VODObject;->categoryid:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/VODObject;->categories:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/VODObject;->rate:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/VODObject;->token:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/VODObject;->TokenUrl:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/VODObject;->encryption:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/VODObject;->year:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 50
    iput-wide v2, p0, Lcom/magoware/magoware/webtv/database/objects/VODObject;->dataadded:J

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/magoware/magoware/webtv/database/objects/VODObject;->pin_protected:I

    .line 52
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/VODObject;->stream_format:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/VODObject;->encryption_url:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/VODObject;->vod_type:Ljava/lang/String;

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

    .line 58
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, " "

    const-string v1, "%20"

    .line 59
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public toJsonObject()Lorg/json/JSONObject;
    .locals 4

    .line 63
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "title"

    .line 66
    iget-object v2, p0, Lcom/magoware/magoware/webtv/database/objects/VODObject;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "description"

    .line 67
    iget-object v2, p0, Lcom/magoware/magoware/webtv/database/objects/VODObject;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "id"

    .line 68
    iget-object v2, p0, Lcom/magoware/magoware/webtv/database/objects/VODObject;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "url"

    .line 70
    iget-object v2, p0, Lcom/magoware/magoware/webtv/database/objects/VODObject;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "icon"

    .line 71
    iget-object v2, p0, Lcom/magoware/magoware/webtv/database/objects/VODObject;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "largeimage"

    .line 72
    iget-object v2, p0, Lcom/magoware/magoware/webtv/database/objects/VODObject;->largeimage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "categoryid"

    .line 73
    iget-object v2, p0, Lcom/magoware/magoware/webtv/database/objects/VODObject;->categoryid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "dataadded"

    .line 74
    iget-wide v2, p0, Lcom/magoware/magoware/webtv/database/objects/VODObject;->dataadded:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "rate"

    .line 75
    iget-object v2, p0, Lcom/magoware/magoware/webtv/database/objects/VODObject;->rate:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "token"

    .line 76
    iget-object v2, p0, Lcom/magoware/magoware/webtv/database/objects/VODObject;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "TokenUrl"

    .line 77
    iget-object v2, p0, Lcom/magoware/magoware/webtv/database/objects/VODObject;->TokenUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "encryption"

    .line 78
    iget-object v2, p0, Lcom/magoware/magoware/webtv/database/objects/VODObject;->encryption:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "year"

    .line 79
    iget-object v2, p0, Lcom/magoware/magoware/webtv/database/objects/VODObject;->year:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pin_protected"

    .line 80
    iget v2, p0, Lcom/magoware/magoware/webtv/database/objects/VODObject;->pin_protected:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "stream_format"

    .line 81
    iget-object v2, p0, Lcom/magoware/magoware/webtv/database/objects/VODObject;->stream_format:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "encryption_url"

    .line 82
    iget-object v2, p0, Lcom/magoware/magoware/webtv/database/objects/VODObject;->encryption_url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "vod_type"

    .line 83
    iget-object v2, p0, Lcom/magoware/magoware/webtv/database/objects/VODObject;->vod_type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 86
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method
