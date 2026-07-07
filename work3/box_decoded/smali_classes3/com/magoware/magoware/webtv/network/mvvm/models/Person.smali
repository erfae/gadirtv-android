.class public Lcom/magoware/magoware/webtv/network/mvvm/models/Person;
.super Ljava/lang/Object;
.source "Person.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Person;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adult:Z

.field private biography:Ljava/lang/String;

.field private birthday:Ljava/lang/String;

.field private deathday:Ljava/lang/String;

.field private gender:I

.field private homepage:Ljava/lang/String;

.field private id:I

.field private name:Ljava/lang/String;

.field private placeOfBirth:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "place_of_birth"
    .end annotation
.end field

.field private popularity:F

.field private profilePath:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "profile_path"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 170
    new-instance v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Person$1;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Person$1;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Person;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
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

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Person;->id:I

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Person;->biography:Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Person;->birthday:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Person;->deathday:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Person;->gender:I

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Person;->homepage:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Person;->name:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Person;->popularity:F

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Person;->adult:Z

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Person;->profilePath:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Person;->placeOfBirth:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBiography()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Person;->biography:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Person;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getDeathday()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Person;->deathday:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Person;->gender:I

    return v0
.end method

.method public getHomepage()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Person;->homepage:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Person;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Person;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaceOfBirth()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Person;->placeOfBirth:Ljava/lang/String;

    return-object v0
.end method

.method public getPopularity()F
    .locals 1

    .line 101
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Person;->popularity:F

    return v0
.end method

.method public getProfilePath()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Person;->profilePath:Ljava/lang/String;

    return-object v0
.end method

.method public isAdult()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Person;->adult:Z

    return v0
.end method

.method public setAdult(Z)Lcom/magoware/magoware/webtv/network/mvvm/models/Person;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adult"
        }
    .end annotation

    .line 114
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Person;->adult:Z

    return-object p0
.end method

.method public setBiography(Ljava/lang/String;)Lcom/magoware/magoware/webtv/network/mvvm/models/Person;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "biography"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Person;->biography:Ljava/lang/String;

    return-object p0
.end method

.method public setBirthday(Ljava/lang/String;)Lcom/magoware/magoware/webtv/network/mvvm/models/Person;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "birthday"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Person;->birthday:Ljava/lang/String;

    return-object p0
.end method

.method public setDeathday(Ljava/lang/String;)Lcom/magoware/magoware/webtv/network/mvvm/models/Person;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deathday"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Person;->deathday:Ljava/lang/String;

    return-object p0
.end method

.method public setGender(I)Lcom/magoware/magoware/webtv/network/mvvm/models/Person;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gender"
        }
    .end annotation

    .line 78
    iput p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Person;->gender:I

    return-object p0
.end method

.method public setHomepage(Ljava/lang/String;)Lcom/magoware/magoware/webtv/network/mvvm/models/Person;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "homepage"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Person;->homepage:Ljava/lang/String;

    return-object p0
.end method

.method public setId(I)Lcom/magoware/magoware/webtv/network/mvvm/models/Person;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 42
    iput p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Person;->id:I

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/magoware/magoware/webtv/network/mvvm/models/Person;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Person;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setPlaceOfBirth(Ljava/lang/String;)Lcom/magoware/magoware/webtv/network/mvvm/models/Person;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "placeOfBirth"
        }
    .end annotation

    .line 132
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Person;->placeOfBirth:Ljava/lang/String;

    return-object p0
.end method

.method public setPopularity(F)Lcom/magoware/magoware/webtv/network/mvvm/models/Person;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "popularity"
        }
    .end annotation

    .line 105
    iput p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Person;->popularity:F

    return-object p0
.end method

.method public setProfilePath(Ljava/lang/String;)Lcom/magoware/magoware/webtv/network/mvvm/models/Person;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "profilePath"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Person;->profilePath:Ljava/lang/String;

    return-object p0
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

    .line 143
    iget p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Person;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Person;->biography:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Person;->birthday:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Person;->deathday:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Person;->gender:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Person;->homepage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Person;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Person;->popularity:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 151
    iget-boolean p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Person;->adult:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 152
    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Person;->profilePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget-object p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/Person;->placeOfBirth:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
