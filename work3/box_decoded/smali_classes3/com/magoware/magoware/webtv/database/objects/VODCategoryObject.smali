.class public Lcom/magoware/magoware/webtv/database/objects/VODCategoryObject;
.super Lcom/framework/utilityframe/database/DatabaseObject;
.source "VODCategoryObject.java"


# instance fields
.field public IconUrl:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public pay:Ljava/lang/String;

.field public small_icon_url:Ljava/lang/String;

.field public sorting:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    const-class v0, Lcom/magoware/magoware/webtv/database/objects/VODCategoryObject;

    const-string v1, "id"

    invoke-direct {p0, v0, v1}, Lcom/framework/utilityframe/database/DatabaseObject;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    const-string v0, ""

    .line 20
    iput-object v0, p0, Lcom/magoware/magoware/webtv/database/objects/VODCategoryObject;->id:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/magoware/magoware/webtv/database/objects/VODCategoryObject;->name:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/magoware/magoware/webtv/database/objects/VODCategoryObject;->pay:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/magoware/magoware/webtv/database/objects/VODCategoryObject;->password:Ljava/lang/String;

    const/4 v1, 0x0

    .line 24
    iput v1, p0, Lcom/magoware/magoware/webtv/database/objects/VODCategoryObject;->sorting:I

    .line 25
    iput-object v0, p0, Lcom/magoware/magoware/webtv/database/objects/VODCategoryObject;->IconUrl:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/magoware/magoware/webtv/database/objects/VODCategoryObject;->small_icon_url:Ljava/lang/String;

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

    .line 30
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, " "

    const-string v1, "%20"

    .line 31
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public toJsonObject()Lorg/json/JSONObject;
    .locals 3

    .line 35
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "id"

    .line 38
    iget-object v2, p0, Lcom/magoware/magoware/webtv/database/objects/VODCategoryObject;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "name"

    .line 39
    iget-object v2, p0, Lcom/magoware/magoware/webtv/database/objects/VODCategoryObject;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pay"

    .line 40
    iget-object v2, p0, Lcom/magoware/magoware/webtv/database/objects/VODCategoryObject;->pay:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "password"

    .line 41
    iget-object v2, p0, Lcom/magoware/magoware/webtv/database/objects/VODCategoryObject;->password:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sorting"

    .line 42
    iget v2, p0, Lcom/magoware/magoware/webtv/database/objects/VODCategoryObject;->sorting:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "IconUrl"

    .line 43
    iget-object v2, p0, Lcom/magoware/magoware/webtv/database/objects/VODCategoryObject;->IconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "small_icon_url"

    .line 44
    iget-object v2, p0, Lcom/magoware/magoware/webtv/database/objects/VODCategoryObject;->small_icon_url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 46
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method
