.class public Lcom/nettv/livestore/models/ResumeSeriesModel;
.super Ljava/lang/Object;
.source "ResumeSeriesModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public episode_pos:I

.field public name:Ljava/lang/String;

.field public season_pos:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEpisode_pos()I
    .registers 2

    iget v0, p0, Lcom/nettv/livestore/models/ResumeSeriesModel;->episode_pos:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/ResumeSeriesModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSeason_pos()I
    .registers 2

    iget v0, p0, Lcom/nettv/livestore/models/ResumeSeriesModel;->season_pos:I

    return v0
.end method

.method public setEpisode_pos(I)V
    .registers 2

    iput p1, p0, Lcom/nettv/livestore/models/ResumeSeriesModel;->episode_pos:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/ResumeSeriesModel;->name:Ljava/lang/String;

    return-void
.end method

.method public setSeason_pos(I)V
    .registers 2

    iput p1, p0, Lcom/nettv/livestore/models/ResumeSeriesModel;->season_pos:I

    return-void
.end method
