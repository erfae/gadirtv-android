.class public Lcom/nettv/livestore/models/CatchupModel;
.super Ljava/lang/Object;
.source "CatchupModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private dayofweek:Ljava/lang/String;

.field private epgEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/CatchUpEpg;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDayofweek()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/CatchupModel;->dayofweek:Ljava/lang/String;

    return-object v0
.end method

.method public getEpgEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/CatchUpEpg;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nettv/livestore/models/CatchupModel;->epgEvents:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/CatchupModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setDayofweek(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/models/CatchupModel;->dayofweek:Ljava/lang/String;

    return-void
.end method

.method public setEpgEvents(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/CatchUpEpg;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nettv/livestore/models/CatchupModel;->epgEvents:Ljava/util/List;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/models/CatchupModel;->name:Ljava/lang/String;

    return-void
.end method
