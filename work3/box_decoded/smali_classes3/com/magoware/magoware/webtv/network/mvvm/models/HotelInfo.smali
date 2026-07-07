.class public Lcom/magoware/magoware/webtv/network/mvvm/models/HotelInfo;
.super Ljava/lang/Object;
.source "HotelInfo.java"


# instance fields
.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "description",
            "url"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/HotelInfo;->title:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/HotelInfo;->description:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/HotelInfo;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/HotelInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/HotelInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/HotelInfo;->url:Ljava/lang/String;

    return-object v0
.end method
