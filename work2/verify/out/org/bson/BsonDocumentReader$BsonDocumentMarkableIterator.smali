.class Lorg/bson/BsonDocumentReader$BsonDocumentMarkableIterator;
.super Ljava/lang/Object;
.source "BsonDocumentReader.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bson/BsonDocumentReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BsonDocumentMarkableIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private baseIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation
.end field

.field private curIndex:I

.field private markIterator:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private marking:Z


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bson/BsonDocumentReader$BsonDocumentMarkableIterator;->markIterator:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lorg/bson/BsonDocumentReader$BsonDocumentMarkableIterator;->baseIterator:Ljava/util/Iterator;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lorg/bson/BsonDocumentReader$BsonDocumentMarkableIterator;->curIndex:I

    .line 5
    iput-boolean p1, p0, Lorg/bson/BsonDocumentReader$BsonDocumentMarkableIterator;->marking:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    iget-object v0, p0, Lorg/bson/BsonDocumentReader$BsonDocumentMarkableIterator;->baseIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_15

    iget v0, p0, Lorg/bson/BsonDocumentReader$BsonDocumentMarkableIterator;->curIndex:I

    iget-object v1, p0, Lorg/bson/BsonDocumentReader$BsonDocumentMarkableIterator;->markIterator:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method public final mark()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bson/BsonDocumentReader$BsonDocumentMarkableIterator;->marking:Z

    return-void
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/bson/BsonDocumentReader$BsonDocumentMarkableIterator;->curIndex:I

    iget-object v1, p0, Lorg/bson/BsonDocumentReader$BsonDocumentMarkableIterator;->markIterator:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 2
    iget-object v0, p0, Lorg/bson/BsonDocumentReader$BsonDocumentMarkableIterator;->markIterator:Ljava/util/List;

    iget v1, p0, Lorg/bson/BsonDocumentReader$BsonDocumentMarkableIterator;->curIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 3
    iget-boolean v1, p0, Lorg/bson/BsonDocumentReader$BsonDocumentMarkableIterator;->marking:Z

    if-eqz v1, :cond_1d

    .line 4
    iget v1, p0, Lorg/bson/BsonDocumentReader$BsonDocumentMarkableIterator;->curIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bson/BsonDocumentReader$BsonDocumentMarkableIterator;->curIndex:I

    goto :goto_39

    .line 5
    :cond_1d
    iget-object v1, p0, Lorg/bson/BsonDocumentReader$BsonDocumentMarkableIterator;->markIterator:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_39

    .line 6
    :cond_24
    iget-object v0, p0, Lorg/bson/BsonDocumentReader$BsonDocumentMarkableIterator;->baseIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lorg/bson/BsonDocumentReader$BsonDocumentMarkableIterator;->marking:Z

    if-eqz v1, :cond_39

    .line 8
    iget-object v1, p0, Lorg/bson/BsonDocumentReader$BsonDocumentMarkableIterator;->markIterator:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget v1, p0, Lorg/bson/BsonDocumentReader$BsonDocumentMarkableIterator;->curIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bson/BsonDocumentReader$BsonDocumentMarkableIterator;->curIndex:I

    :cond_39
    :goto_39
    return-object v0
.end method

.method public remove()V
    .registers 1

    return-void
.end method

.method public final reset()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lorg/bson/BsonDocumentReader$BsonDocumentMarkableIterator;->curIndex:I

    .line 2
    iput-boolean v0, p0, Lorg/bson/BsonDocumentReader$BsonDocumentMarkableIterator;->marking:Z

    return-void
.end method
