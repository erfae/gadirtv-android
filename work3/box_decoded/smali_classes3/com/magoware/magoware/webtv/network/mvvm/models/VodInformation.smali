.class public Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;
.super Ljava/lang/Object;
.source "VodInformation.java"


# instance fields
.field private errorMessage:Ljava/lang/String;

.field private isSuccessful:Z

.field status:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status_code"
    .end annotation
.end field

.field vodItems:Ljava/util/ArrayList;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;->status:I

    return v0
.end method

.method public getVodItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;->vodItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isSuccessful()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;->isSuccessful:Z

    return v0
.end method

.method public setErrorMessage(Ljava/lang/String;)Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorMessage"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;->errorMessage:Ljava/lang/String;

    return-object p0
.end method

.method public setStatus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 37
    iput p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;->status:I

    return-void
.end method

.method public setSuccessful(Z)Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "successful"
        }
    .end annotation

    .line 45
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;->isSuccessful:Z

    return-object p0
.end method

.method public setVodItems(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vodItems"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
            ">;)V"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;->vodItems:Ljava/util/ArrayList;

    return-void
.end method
