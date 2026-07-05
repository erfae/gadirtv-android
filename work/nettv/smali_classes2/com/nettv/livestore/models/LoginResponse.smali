.class public Lcom/nettv/livestore/models/LoginResponse;
.super Ljava/lang/Object;
.source "LoginResponse.java"


# instance fields
.field private server_info:Lcom/nettv/livestore/models/ServerModel;

.field private user_info:Lcom/nettv/livestore/models/LoginModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getServerModel()Lcom/nettv/livestore/models/ServerModel;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/LoginResponse;->server_info:Lcom/nettv/livestore/models/ServerModel;

    return-object v0
.end method

.method public getUser_info()Lcom/nettv/livestore/models/LoginModel;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/LoginResponse;->user_info:Lcom/nettv/livestore/models/LoginModel;

    return-object v0
.end method

.method public setServerModel(Lcom/nettv/livestore/models/ServerModel;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/models/LoginResponse;->server_info:Lcom/nettv/livestore/models/ServerModel;

    return-void
.end method

.method public setUser_info(Lcom/nettv/livestore/models/LoginModel;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/models/LoginResponse;->user_info:Lcom/nettv/livestore/models/LoginModel;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "LoginResponse{user_info="

    .line 1
    invoke-static {v0}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/nettv/livestore/models/LoginResponse;->user_info:Lcom/nettv/livestore/models/LoginModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "server_info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nettv/livestore/models/LoginResponse;->server_info:Lcom/nettv/livestore/models/ServerModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
