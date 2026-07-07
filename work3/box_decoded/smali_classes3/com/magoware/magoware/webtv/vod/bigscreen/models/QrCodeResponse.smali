.class public Lcom/magoware/magoware/webtv/vod/bigscreen/models/QrCodeResponse;
.super Ljava/lang/Object;
.source "QrCodeResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private extraData:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "extra_data"
    .end annotation
.end field

.field private responseObject:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "response_object"
    .end annotation
.end field

.field private statusCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status_code"
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
.method public getExtraData()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/models/QrCodeResponse;->extraData:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseObject()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/models/QrCodeResponse;->responseObject:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/models/QrCodeResponse;->statusCode:Ljava/lang/String;

    return-object v0
.end method
