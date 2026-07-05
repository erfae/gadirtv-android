.class Lorg/bson/RawBsonArray$RawBsonArrayList$Itr;
.super Ljava/lang/Object;
.source "RawBsonArray.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bson/RawBsonArray$RawBsonArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/bson/BsonValue;",
        ">;"
    }
.end annotation


# instance fields
.field private bsonReader:Lorg/bson/BsonBinaryReader;

.field private currentPosition:I

.field private cursor:I

.field public final synthetic this$0:Lorg/bson/RawBsonArray$RawBsonArrayList;


# direct methods
.method public constructor <init>(Lorg/bson/RawBsonArray$RawBsonArrayList;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/bson/RawBsonArray$RawBsonArrayList$Itr;->this$0:Lorg/bson/RawBsonArray$RawBsonArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lorg/bson/RawBsonArray$RawBsonArrayList$Itr;->cursor:I

    .line 3
    iput p1, p0, Lorg/bson/RawBsonArray$RawBsonArrayList$Itr;->currentPosition:I

    .line 4
    invoke-virtual {p0, p1}, Lorg/bson/RawBsonArray$RawBsonArrayList$Itr;->setIterator(I)V

    return-void
.end method

.method public constructor <init>(Lorg/bson/RawBsonArray$RawBsonArrayList;I)V
    .registers 3

    .line 5
    iput-object p1, p0, Lorg/bson/RawBsonArray$RawBsonArrayList$Itr;->this$0:Lorg/bson/RawBsonArray$RawBsonArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lorg/bson/RawBsonArray$RawBsonArrayList$Itr;->cursor:I

    .line 7
    iput p1, p0, Lorg/bson/RawBsonArray$RawBsonArrayList$Itr;->currentPosition:I

    .line 8
    invoke-virtual {p0, p2}, Lorg/bson/RawBsonArray$RawBsonArrayList$Itr;->setIterator(I)V

    return-void
.end method


# virtual methods
.method public getCursor()I
    .registers 2

    iget v0, p0, Lorg/bson/RawBsonArray$RawBsonArrayList$Itr;->cursor:I

    return v0
.end method

.method public hasNext()Z
    .registers 3

    .line 1
    iget v0, p0, Lorg/bson/RawBsonArray$RawBsonArrayList$Itr;->cursor:I

    iget-object v1, p0, Lorg/bson/RawBsonArray$RawBsonArrayList$Itr;->this$0:Lorg/bson/RawBsonArray$RawBsonArrayList;

    invoke-virtual {v1}, Lorg/bson/RawBsonArray$RawBsonArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    if-nez v0, :cond_14

    .line 2
    iget-object v1, p0, Lorg/bson/RawBsonArray$RawBsonArrayList$Itr;->bsonReader:Lorg/bson/BsonBinaryReader;

    invoke-virtual {v1}, Lorg/bson/BsonBinaryReader;->close()V

    :cond_14
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/bson/RawBsonArray$RawBsonArrayList$Itr;->next()Lorg/bson/BsonValue;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/bson/BsonValue;
    .registers 3

    .line 2
    :goto_0
    iget v0, p0, Lorg/bson/RawBsonArray$RawBsonArrayList$Itr;->cursor:I

    iget v1, p0, Lorg/bson/RawBsonArray$RawBsonArrayList$Itr;->currentPosition:I

    if-le v0, v1, :cond_21

    iget-object v0, p0, Lorg/bson/RawBsonArray$RawBsonArrayList$Itr;->bsonReader:Lorg/bson/BsonBinaryReader;

    invoke-virtual {v0}, Lorg/bson/BsonBinaryReader;->readBsonType()Lorg/bson/BsonType;

    move-result-object v0

    sget-object v1, Lorg/bson/BsonType;->END_OF_DOCUMENT:Lorg/bson/BsonType;

    if-eq v0, v1, :cond_21

    .line 3
    iget-object v0, p0, Lorg/bson/RawBsonArray$RawBsonArrayList$Itr;->bsonReader:Lorg/bson/BsonBinaryReader;

    invoke-virtual {v0}, Lorg/bson/AbstractBsonReader;->skipName()V

    .line 4
    iget-object v0, p0, Lorg/bson/RawBsonArray$RawBsonArrayList$Itr;->bsonReader:Lorg/bson/BsonBinaryReader;

    invoke-virtual {v0}, Lorg/bson/AbstractBsonReader;->skipValue()V

    .line 5
    iget v0, p0, Lorg/bson/RawBsonArray$RawBsonArrayList$Itr;->currentPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bson/RawBsonArray$RawBsonArrayList$Itr;->currentPosition:I

    goto :goto_0

    .line 6
    :cond_21
    iget-object v0, p0, Lorg/bson/RawBsonArray$RawBsonArrayList$Itr;->bsonReader:Lorg/bson/BsonBinaryReader;

    invoke-virtual {v0}, Lorg/bson/BsonBinaryReader;->readBsonType()Lorg/bson/BsonType;

    move-result-object v0

    sget-object v1, Lorg/bson/BsonType;->END_OF_DOCUMENT:Lorg/bson/BsonType;

    if-eq v0, v1, :cond_45

    .line 7
    iget-object v0, p0, Lorg/bson/RawBsonArray$RawBsonArrayList$Itr;->bsonReader:Lorg/bson/BsonBinaryReader;

    invoke-virtual {v0}, Lorg/bson/AbstractBsonReader;->skipName()V

    .line 8
    iget v0, p0, Lorg/bson/RawBsonArray$RawBsonArrayList$Itr;->cursor:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bson/RawBsonArray$RawBsonArrayList$Itr;->cursor:I

    .line 9
    iput v0, p0, Lorg/bson/RawBsonArray$RawBsonArrayList$Itr;->currentPosition:I

    .line 10
    iget-object v0, p0, Lorg/bson/RawBsonArray$RawBsonArrayList$Itr;->this$0:Lorg/bson/RawBsonArray$RawBsonArrayList;

    # getter for: Lorg/bson/RawBsonArray$RawBsonArrayList;->bytes:[B
    invoke-static {v0}, Lorg/bson/RawBsonArray$RawBsonArrayList;->access$000(Lorg/bson/RawBsonArray$RawBsonArrayList;)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bson/RawBsonArray$RawBsonArrayList$Itr;->bsonReader:Lorg/bson/BsonBinaryReader;

    invoke-static {v0, v1}, Lorg/bson/RawBsonValueHelper;->decode([BLorg/bson/BsonBinaryReader;)Lorg/bson/BsonValue;

    move-result-object v0

    return-object v0

    .line 11
    :cond_45
    iget-object v0, p0, Lorg/bson/RawBsonArray$RawBsonArrayList$Itr;->bsonReader:Lorg/bson/BsonBinaryReader;

    invoke-virtual {v0}, Lorg/bson/BsonBinaryReader;->close()V

    .line 12
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "RawBsonArray instances are immutable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCursor(I)V
    .registers 2

    iput p1, p0, Lorg/bson/RawBsonArray$RawBsonArrayList$Itr;->cursor:I

    return-void
.end method

.method public final setIterator(I)V
    .registers 2

    .line 1
    iput p1, p0, Lorg/bson/RawBsonArray$RawBsonArrayList$Itr;->cursor:I

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lorg/bson/RawBsonArray$RawBsonArrayList$Itr;->currentPosition:I

    .line 3
    iget-object p1, p0, Lorg/bson/RawBsonArray$RawBsonArrayList$Itr;->bsonReader:Lorg/bson/BsonBinaryReader;

    if-eqz p1, :cond_c

    .line 4
    invoke-virtual {p1}, Lorg/bson/BsonBinaryReader;->close()V

    .line 5
    :cond_c
    iget-object p1, p0, Lorg/bson/RawBsonArray$RawBsonArrayList$Itr;->this$0:Lorg/bson/RawBsonArray$RawBsonArrayList;

    # invokes: Lorg/bson/RawBsonArray$RawBsonArrayList;->createReader()Lorg/bson/BsonBinaryReader;
    invoke-static {p1}, Lorg/bson/RawBsonArray$RawBsonArrayList;->access$300(Lorg/bson/RawBsonArray$RawBsonArrayList;)Lorg/bson/BsonBinaryReader;

    move-result-object p1

    iput-object p1, p0, Lorg/bson/RawBsonArray$RawBsonArrayList$Itr;->bsonReader:Lorg/bson/BsonBinaryReader;

    .line 6
    invoke-virtual {p1}, Lorg/bson/AbstractBsonReader;->readStartDocument()V

    return-void
.end method
