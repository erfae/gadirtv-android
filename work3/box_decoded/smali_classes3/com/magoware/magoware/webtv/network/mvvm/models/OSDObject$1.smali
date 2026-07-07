.class Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject$1;
.super Ljava/lang/Object;
.source "OSDObject.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 11
    new-instance v0, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;

    invoke-direct {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;-><init>(Landroid/os/Parcel;)V

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

    .line 8
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject$1;->createFromParcel(Landroid/os/Parcel;)Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 16
    new-array p1, p1, [Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;

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

    .line 8
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject$1;->newArray(I)[Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;

    move-result-object p1

    return-object p1
.end method
