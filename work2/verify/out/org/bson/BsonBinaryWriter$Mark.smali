.class public Lorg/bson/BsonBinaryWriter$Mark;
.super Lorg/bson/AbstractBsonWriter$Mark;
.source "BsonBinaryWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bson/BsonBinaryWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Mark"
.end annotation


# instance fields
.field private final position:I

.field public final synthetic this$0:Lorg/bson/BsonBinaryWriter;


# direct methods
.method public constructor <init>(Lorg/bson/BsonBinaryWriter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/bson/BsonBinaryWriter$Mark;->this$0:Lorg/bson/BsonBinaryWriter;

    invoke-direct {p0, p1}, Lorg/bson/AbstractBsonWriter$Mark;-><init>(Lorg/bson/AbstractBsonWriter;)V

    .line 2
    # getter for: Lorg/bson/BsonBinaryWriter;->bsonOutput:Lorg/bson/io/BsonOutput;
    invoke-static {p1}, Lorg/bson/BsonBinaryWriter;->access$200(Lorg/bson/BsonBinaryWriter;)Lorg/bson/io/BsonOutput;

    move-result-object p1

    invoke-interface {p1}, Lorg/bson/io/BsonOutput;->getPosition()I

    move-result p1

    iput p1, p0, Lorg/bson/BsonBinaryWriter$Mark;->position:I

    return-void
.end method


# virtual methods
.method public final reset()V
    .registers 3

    .line 1
    invoke-super {p0}, Lorg/bson/AbstractBsonWriter$Mark;->reset()V

    .line 2
    iget-object v0, p0, Lorg/bson/BsonBinaryWriter$Mark;->this$0:Lorg/bson/BsonBinaryWriter;

    # getter for: Lorg/bson/BsonBinaryWriter;->bsonOutput:Lorg/bson/io/BsonOutput;
    invoke-static {v0}, Lorg/bson/BsonBinaryWriter;->access$200(Lorg/bson/BsonBinaryWriter;)Lorg/bson/io/BsonOutput;

    move-result-object v0

    iget-object v1, p0, Lorg/bson/BsonBinaryWriter$Mark;->this$0:Lorg/bson/BsonBinaryWriter;

    # getter for: Lorg/bson/BsonBinaryWriter;->mark:Lorg/bson/BsonBinaryWriter$Mark;
    invoke-static {v1}, Lorg/bson/BsonBinaryWriter;->access$300(Lorg/bson/BsonBinaryWriter;)Lorg/bson/BsonBinaryWriter$Mark;

    move-result-object v1

    iget v1, v1, Lorg/bson/BsonBinaryWriter$Mark;->position:I

    invoke-interface {v0, v1}, Lorg/bson/io/BsonOutput;->truncateToPosition(I)V

    return-void
.end method
