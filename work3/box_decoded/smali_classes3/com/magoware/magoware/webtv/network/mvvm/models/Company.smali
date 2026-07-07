.class public Lcom/magoware/magoware/webtv/network/mvvm/models/Company;
.super Ljava/lang/Object;
.source "Company.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Company;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private companyName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "company_name"
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private newEncryptionKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "new_encryption_key"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Company$1;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Company$1;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Company;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "companyName",
            "newEncryptionKey"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Company;->id:I

    .line 18
    iput-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Company;->companyName:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Company;->newEncryptionKey:Ljava/lang/String;

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

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Company;->id:I

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Company;->companyName:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Company;->newEncryptionKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCompanyName()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Company;->companyName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Company;->id:I

    return v0
.end method

.method public getNewEncryptionKey()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Company;->newEncryptionKey:Ljava/lang/String;

    return-object v0
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

    .line 47
    iget p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Company;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Company;->companyName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Company;->newEncryptionKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
