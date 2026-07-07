.class public Lcom/nettv/livestore/models/ResumeModel;
.super Ljava/lang/Object;
.source "ResumeModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public last_position:J

.field public name:Ljava/lang/String;

.field public pro:I

.field public tmdb_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/nettv/livestore/models/ResumeModel;->tmdb_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLast_position()J
    .registers 3

    iget-wide v0, p0, Lcom/nettv/livestore/models/ResumeModel;->last_position:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/ResumeModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPro()I
    .registers 2

    iget v0, p0, Lcom/nettv/livestore/models/ResumeModel;->pro:I

    return v0
.end method

.method public getTmdb_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/ResumeModel;->tmdb_id:Ljava/lang/String;

    return-object v0
.end method

.method public setLast_position(J)V
    .registers 3

    iput-wide p1, p0, Lcom/nettv/livestore/models/ResumeModel;->last_position:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/ResumeModel;->name:Ljava/lang/String;

    return-void
.end method

.method public setPro(I)V
    .registers 2

    iput p1, p0, Lcom/nettv/livestore/models/ResumeModel;->pro:I

    return-void
.end method

.method public setTmdb_id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/ResumeModel;->tmdb_id:Ljava/lang/String;

    return-void
.end method
