.class public Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;
.super Lcom/framework/utilityframe/database/DatabaseObject;
.source "TVChannelObject.java"


# instance fields
.field public channel_mode:Ljava/lang/String;

.field public channel_number:I

.field private companyId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "company_id"
    .end annotation
.end field

.field public contentId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "channel_streams.vmx_asset_id"
    .end annotation
.end field

.field public drm_platform:Ljava/lang/String;

.field public encryption:Ljava/lang/String;

.field public encryption1:Ljava/lang/String;

.field public encryption_url:Ljava/lang/String;

.field public favorite_channel:Ljava/lang/String;

.field public genre_id:Ljava/lang/String;

.field public icon_url:Ljava/lang/String;

.field public id:I

.field public pin_protected:Ljava/lang/String;

.field public stream_format:Ljava/lang/String;

.field public stream_source_id:I

.field public stream_url:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public token:I

.field public token_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    const-class v0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    const-string v1, "number"

    invoke-direct {p0, v0, v1}, Lcom/framework/utilityframe/database/DatabaseObject;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->id:I

    const-string v1, ""

    .line 33
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->genre_id:Ljava/lang/String;

    .line 34
    iput v0, p0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_number:I

    .line 36
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->title:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->icon_url:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_mode:Ljava/lang/String;

    .line 39
    iput v0, p0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->stream_source_id:I

    .line 40
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->stream_url:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->stream_format:Ljava/lang/String;

    .line 42
    iput v0, p0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->token:I

    .line 43
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->token_url:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->encryption:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->encryption1:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->favorite_channel:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->encryption_url:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->pin_protected:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->drm_platform:Ljava/lang/String;

    .line 50
    iput v0, p0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->companyId:I

    .line 51
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->contentId:Ljava/lang/String;

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

    .line 60
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, " "

    const-string v1, "%20"

    .line 61
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getCompanyId()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->companyId:I

    return v0
.end method

.method public hasToken()Z
    .locals 2

    .line 65
    iget v0, p0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->token:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isFavoriteChannel()Z
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->favorite_channel:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setToken(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .line 69
    iput p1, p0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->token:I

    return-void
.end method
