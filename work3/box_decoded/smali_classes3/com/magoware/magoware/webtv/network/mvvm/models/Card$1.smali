.class Lcom/magoware/magoware/webtv/network/mvvm/models/Card$1;
.super Ljava/lang/Object;
.source "Card.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/network/mvvm/models/Card;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/magoware/magoware/webtv/network/mvvm/models/Card;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 319
    new-instance v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-direct {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "in"
        }
    .end annotation

    .line 316
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$1;->createFromParcel(Landroid/os/Parcel;)Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/magoware/magoware/webtv/network/mvvm/models/Card;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 324
    new-array p1, p1, [Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "size"
        }
    .end annotation

    .line 316
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$1;->newArray(I)[Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    move-result-object p1

    return-object p1
.end method
