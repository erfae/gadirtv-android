.class public Lcom/nettv/livestore/models/AppInfoModel;
.super Ljava/lang/Object;
.source "AppInfoModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/models/AppInfoModel$UrlModel;
    }
.end annotation


# instance fields
.field private apk_link:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "apk_link"
    .end annotation
.end field

.field private app_version:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "app_version"
    .end annotation
.end field

.field private device_key:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "device_key"
    .end annotation
.end field

.field private expiredDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expire_date"
    .end annotation
.end field

.field private is_google_pay:Z

.field private is_trial:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_trial"
    .end annotation
.end field

.field private languageModels:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "languages"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/LanguageModel;",
            ">;"
        }
    .end annotation
.end field

.field private lock:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lock"
    .end annotation
.end field

.field private mac_address:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mac_address"
    .end annotation
.end field

.field private note_content:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "note_content"
    .end annotation
.end field

.field private note_title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "note_title"
    .end annotation
.end field

.field private parent_control:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "parent_control"
    .end annotation
.end field

.field private parent_synced:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "parent_synced"
    .end annotation
.end field

.field private pin_code:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pin"
    .end annotation
.end field

.field private plan_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "plan_id"
    .end annotation
.end field

.field private price:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "price"
    .end annotation
.end field

.field private result:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "urls"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/AppInfoModel$UrlModel;",
            ">;"
        }
    .end annotation
.end field

.field private success:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mac_registered"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApk_link()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/AppInfoModel;->apk_link:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_version()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/AppInfoModel;->app_version:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "1.0"

    :cond_0
    return-object v0
.end method

.method public getDevice_key()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/AppInfoModel;->device_key:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiredDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/AppInfoModel;->expiredDate:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getIs_trial()I
    .locals 1

    iget v0, p0, Lcom/nettv/livestore/models/AppInfoModel;->is_trial:I

    return v0
.end method

.method public getLanguageModels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/LanguageModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/models/AppInfoModel;->languageModels:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method

.method public getLock()I
    .locals 1

    iget v0, p0, Lcom/nettv/livestore/models/AppInfoModel;->lock:I

    return v0
.end method

.method public getMac_address()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/AppInfoModel;->mac_address:Ljava/lang/String;

    return-object v0
.end method

.method public getNoteContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/AppInfoModel;->note_content:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "To IBO Player PRO"

    :cond_0
    return-object v0
.end method

.method public getNoteTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/AppInfoModel;->note_title:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Welcome"

    :cond_0
    return-object v0
.end method

.method public getParent_control()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/models/AppInfoModel;->parent_control:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/nettv/livestore/models/AppInfoModel;->parent_control:Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "0000"

    return-object v0
.end method

.method public getParent_synced()I
    .locals 1

    iget v0, p0, Lcom/nettv/livestore/models/AppInfoModel;->parent_synced:I

    return v0
.end method

.method public getPin_code()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/AppInfoModel;->pin_code:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "0000"

    :cond_0
    return-object v0
.end method

.method public getPlan_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/AppInfoModel;->plan_id:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/AppInfoModel;->price:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nettv/livestore/models/AppInfoModel;->price:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "7.9"

    :goto_1
    return-object v0
.end method

.method public getResult()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/AppInfoModel$UrlModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nettv/livestore/models/AppInfoModel;->result:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;

    const-string v3, "GADIR"

    invoke-virtual {v2, v3}, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;->setName(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    :try_start_swap
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    const-string v3, "gadir.co"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v4}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://gadir.co:80"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;->setUrl(Ljava/lang/String;)V
    :try_end_swap
    .catch Ljava/lang/Exception; {:try_start_swap .. :try_end_swap} :catch_swap

    goto :cond_1

    :catch_swap
    nop

    :cond_1
    return-object v0
.end method

.method public getSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nettv/livestore/models/AppInfoModel;->success:Z

    return v0
.end method

.method public isIs_google_pay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nettv/livestore/models/AppInfoModel;->is_google_pay:Z

    return v0
.end method

.method public setExpiredDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/models/AppInfoModel;->expiredDate:Ljava/lang/String;

    return-void
.end method

.method public setIs_google_pay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nettv/livestore/models/AppInfoModel;->is_google_pay:Z

    return-void
.end method

.method public setIs_trial(I)V
    .locals 0

    iput p1, p0, Lcom/nettv/livestore/models/AppInfoModel;->is_trial:I

    return-void
.end method

.method public setLanguageModels(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/LanguageModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nettv/livestore/models/AppInfoModel;->languageModels:Ljava/util/List;

    return-void
.end method

.method public setLock(I)V
    .locals 0

    iput p1, p0, Lcom/nettv/livestore/models/AppInfoModel;->lock:I

    return-void
.end method

.method public setPin_code(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/models/AppInfoModel;->pin_code:Ljava/lang/String;

    return-void
.end method

.method public setResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/AppInfoModel$UrlModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nettv/livestore/models/AppInfoModel;->result:Ljava/util/List;

    return-void
.end method
