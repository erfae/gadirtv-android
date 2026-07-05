.class Lorg/bson/RawBsonArray$RawBsonArrayList$ListItr;
.super Lorg/bson/RawBsonArray$RawBsonArrayList$Itr;
.source "RawBsonArray.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bson/RawBsonArray$RawBsonArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/bson/RawBsonArray$RawBsonArrayList$Itr;",
        "Ljava/util/ListIterator<",
        "Lorg/bson/BsonValue;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/bson/RawBsonArray$RawBsonArrayList;


# direct methods
.method public constructor <init>(Lorg/bson/RawBsonArray$RawBsonArrayList;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lorg/bson/RawBsonArray$RawBsonArrayList$ListItr;->this$0:Lorg/bson/RawBsonArray$RawBsonArrayList;

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/bson/RawBsonArray$RawBsonArrayList$Itr;-><init>(Lorg/bson/RawBsonArray$RawBsonArrayList;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lorg/bson/BsonValue;

    invoke-virtual {p0, p1}, Lorg/bson/RawBsonArray$RawBsonArrayList$ListItr;->add(Lorg/bson/BsonValue;)V

    return-void
.end method

.method public add(Lorg/bson/BsonValue;)V
    .registers 3

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "RawBsonArray instances are immutable"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasPrevious()Z
    .registers 2

    invoke-virtual {p0}, Lorg/bson/RawBsonArray$RawBsonArrayList$Itr;->getCursor()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public nextIndex()I
    .registers 2

    invoke-virtual {p0}, Lorg/bson/RawBsonArray$RawBsonArrayList$Itr;->getCursor()I

    move-result v0

    return v0
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/bson/RawBsonArray$RawBsonArrayList$ListItr;->previous()Lorg/bson/BsonValue;

    move-result-object v0

    return-object v0
.end method

.method public previous()Lorg/bson/BsonValue;
    .registers 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/bson/RawBsonArray$RawBsonArrayList$ListItr;->this$0:Lorg/bson/RawBsonArray$RawBsonArrayList;

    invoke-virtual {p0}, Lorg/bson/RawBsonArray$RawBsonArrayList$ListItr;->previousIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bson/RawBsonArray$RawBsonArrayList;->get(I)Lorg/bson/BsonValue;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lorg/bson/RawBsonArray$RawBsonArrayList$ListItr;->previousIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/bson/RawBsonArray$RawBsonArrayList$Itr;->setIterator(I)V
    :try_end_11
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v0

    .line 4
    :catch_12
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .registers 2

    invoke-virtual {p0}, Lorg/bson/RawBsonArray$RawBsonArrayList$Itr;->getCursor()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lorg/bson/BsonValue;

    invoke-virtual {p0, p1}, Lorg/bson/RawBsonArray$RawBsonArrayList$ListItr;->set(Lorg/bson/BsonValue;)V

    return-void
.end method

.method public set(Lorg/bson/BsonValue;)V
    .registers 3

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "RawBsonArray instances are immutable"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
