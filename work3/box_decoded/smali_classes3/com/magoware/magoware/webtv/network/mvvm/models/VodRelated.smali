.class public Lcom/magoware/magoware/webtv/network/mvvm/models/VodRelated;
.super Ljava/lang/Object;
.source "VodRelated.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodRelated;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private moviesList:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "response_object"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
            ">;"
        }
    .end annotation
.end field

.field private statusCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status_code"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodRelated$1;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodRelated$1;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodRelated;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodRelated;->moviesList:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodRelated;->statusCode:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMoviesList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodRelated;->moviesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodRelated;->statusCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dest",
            "flags"
        }
    .end annotation

    .line 26
    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodRelated;->moviesList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 27
    iget p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodRelated;->statusCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
