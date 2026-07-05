.class public Lcom/nettv/livestore/models/SubTitleUserModel$UserModel;
.super Ljava/lang/Object;
.source "SubTitleUserModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nettv/livestore/models/SubTitleUserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserModel"
.end annotation


# instance fields
.field public allowed_downloads:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "allowed_downloads"
    .end annotation
.end field

.field public allowed_translations:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "allowed_translations"
    .end annotation
.end field

.field public ext_installed:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ext_installed"
    .end annotation
.end field

.field public level:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "level"
    .end annotation
.end field

.field public remaining_downloads:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "remaining_downloads"
    .end annotation
.end field

.field public vip:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vip"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllowed_downloads()I
    .registers 2

    iget v0, p0, Lcom/nettv/livestore/models/SubTitleUserModel$UserModel;->allowed_downloads:I

    return v0
.end method

.method public getAllowed_translations()I
    .registers 2

    iget v0, p0, Lcom/nettv/livestore/models/SubTitleUserModel$UserModel;->allowed_translations:I

    return v0
.end method

.method public getLevel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/SubTitleUserModel$UserModel;->level:Ljava/lang/String;

    return-object v0
.end method

.method public getRemaining_downloads()I
    .registers 2

    iget v0, p0, Lcom/nettv/livestore/models/SubTitleUserModel$UserModel;->remaining_downloads:I

    return v0
.end method

.method public isExt_installed()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nettv/livestore/models/SubTitleUserModel$UserModel;->ext_installed:Z

    return v0
.end method

.method public isVip()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nettv/livestore/models/SubTitleUserModel$UserModel;->vip:Z

    return v0
.end method
