.class public Lcom/magoware/magoware/webtv/network/mvvm/models/HotelOrders;
.super Ljava/lang/Object;
.source "HotelOrders.java"


# instance fields
.field private datetime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "datetime"
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDatetime()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/HotelOrders;->datetime:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/HotelOrders;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/HotelOrders;->id:I

    return v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/HotelOrders;->status:Ljava/lang/String;

    return-object v0
.end method
