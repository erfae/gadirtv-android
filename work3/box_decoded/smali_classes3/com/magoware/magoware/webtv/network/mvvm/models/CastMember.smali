.class public Lcom/magoware/magoware/webtv/network/mvvm/models/CastMember;
.super Ljava/lang/Object;
.source "CastMember.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private castId:I
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "cast_id"
    .end annotation
.end field

.field private character:Ljava/lang/String;

.field private creditId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "credit_id"
    .end annotation
.end field

.field private id:I

.field private name:Ljava/lang/String;

.field private order:I

.field private profilePath:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "profile_path"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCastId()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/CastMember;->castId:I

    return v0
.end method

.method public getCharacter()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/CastMember;->character:Ljava/lang/String;

    return-object v0
.end method

.method public getCreditId()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/CastMember;->creditId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/CastMember;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/CastMember;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/CastMember;->order:I

    return v0
.end method

.method public getProfilePath()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/CastMember;->profilePath:Ljava/lang/String;

    return-object v0
.end method

.method public setCastId(I)Lcom/magoware/magoware/webtv/network/mvvm/models/CastMember;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "castId"
        }
    .end annotation

    .line 50
    iput p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/CastMember;->castId:I

    return-object p0
.end method

.method public setCharacter(Ljava/lang/String;)Lcom/magoware/magoware/webtv/network/mvvm/models/CastMember;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "character"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/CastMember;->character:Ljava/lang/String;

    return-object p0
.end method

.method public setCreditId(Ljava/lang/String;)Lcom/magoware/magoware/webtv/network/mvvm/models/CastMember;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "creditId"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/CastMember;->creditId:Ljava/lang/String;

    return-object p0
.end method

.method public setId(I)Lcom/magoware/magoware/webtv/network/mvvm/models/CastMember;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 41
    iput p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/CastMember;->id:I

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/magoware/magoware/webtv/network/mvvm/models/CastMember;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/CastMember;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setOrder(I)Lcom/magoware/magoware/webtv/network/mvvm/models/CastMember;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "order"
        }
    .end annotation

    .line 86
    iput p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/CastMember;->order:I

    return-object p0
.end method

.method public setProfilePath(Ljava/lang/String;)Lcom/magoware/magoware/webtv/network/mvvm/models/CastMember;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "profilePath"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/CastMember;->profilePath:Ljava/lang/String;

    return-object p0
.end method
