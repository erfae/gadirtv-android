.class public Lcom/magoware/magoware/webtv/network/mvvm/models/HotelBooking;
.super Ljava/lang/Object;
.source "HotelBooking.java"


# instance fields
.field private checkinDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "checkin_date"
    .end annotation
.end field

.field private checkoutDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "checkout_date"
    .end annotation
.end field

.field private roomType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "room_type"
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
.method public getCheckinDate()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/HotelBooking;->checkinDate:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckoutDate()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/HotelBooking;->checkoutDate:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomType()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/HotelBooking;->roomType:Ljava/lang/String;

    return-object v0
.end method
