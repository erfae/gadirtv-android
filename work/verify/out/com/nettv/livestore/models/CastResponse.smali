.class public Lcom/nettv/livestore/models/CastResponse;
.super Ljava/lang/Object;
.source "CastResponse.java"


# instance fields
.field public cast:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/CastModel;",
            ">;"
        }
    .end annotation
.end field

.field public id:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCast()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/CastModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nettv/livestore/models/CastResponse;->cast:Ljava/util/List;

    return-object v0
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Lcom/nettv/livestore/models/CastResponse;->id:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "CastResponse{id="

    .line 1
    invoke-static {v0}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/nettv/livestore/models/CastResponse;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nettv/livestore/models/CastResponse;->cast:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
