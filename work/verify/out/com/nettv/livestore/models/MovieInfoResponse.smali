.class public Lcom/nettv/livestore/models/MovieInfoResponse;
.super Ljava/lang/Object;
.source "MovieInfoResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public info:Lcom/nettv/livestore/models/MovieInfo;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfo()Lcom/nettv/livestore/models/MovieInfo;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/MovieInfoResponse;->info:Lcom/nettv/livestore/models/MovieInfo;

    return-object v0
.end method

.method public setInfo(Lcom/nettv/livestore/models/MovieInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/MovieInfoResponse;->info:Lcom/nettv/livestore/models/MovieInfo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "MovieInfoResponse{info="

    .line 1
    invoke-static {v0}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/nettv/livestore/models/MovieInfoResponse;->info:Lcom/nettv/livestore/models/MovieInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
