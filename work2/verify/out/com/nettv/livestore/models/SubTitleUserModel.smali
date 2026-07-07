.class public Lcom/nettv/livestore/models/SubTitleUserModel;
.super Ljava/lang/Object;
.source "SubTitleUserModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/models/SubTitleUserModel$UserModel;
    }
.end annotation


# instance fields
.field public status:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field public token:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "token"
    .end annotation
.end field

.field public userModel:Lcom/nettv/livestore/models/SubTitleUserModel$UserModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatus()I
    .registers 2

    iget v0, p0, Lcom/nettv/livestore/models/SubTitleUserModel;->status:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/SubTitleUserModel;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserModel()Lcom/nettv/livestore/models/SubTitleUserModel$UserModel;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/SubTitleUserModel;->userModel:Lcom/nettv/livestore/models/SubTitleUserModel$UserModel;

    return-object v0
.end method
