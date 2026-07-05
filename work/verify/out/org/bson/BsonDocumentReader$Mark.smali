.class public Lorg/bson/BsonDocumentReader$Mark;
.super Lorg/bson/AbstractBsonReader$Mark;
.source "BsonDocumentReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bson/BsonDocumentReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Mark"
.end annotation


# instance fields
.field private final context:Lorg/bson/BsonDocumentReader$Context;

.field private final currentValue:Lorg/bson/BsonValue;

.field public final synthetic this$0:Lorg/bson/BsonDocumentReader;


# direct methods
.method public constructor <init>(Lorg/bson/BsonDocumentReader;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lorg/bson/BsonDocumentReader$Mark;->this$0:Lorg/bson/BsonDocumentReader;

    .line 2
    invoke-direct {p0, p1}, Lorg/bson/AbstractBsonReader$Mark;-><init>(Lorg/bson/AbstractBsonReader;)V

    .line 3
    # getter for: Lorg/bson/BsonDocumentReader;->currentValue:Lorg/bson/BsonValue;
    invoke-static {p1}, Lorg/bson/BsonDocumentReader;->access$000(Lorg/bson/BsonDocumentReader;)Lorg/bson/BsonValue;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/BsonDocumentReader$Mark;->currentValue:Lorg/bson/BsonValue;

    .line 4
    invoke-virtual {p1}, Lorg/bson/BsonDocumentReader;->getContext()Lorg/bson/BsonDocumentReader$Context;

    move-result-object p1

    iput-object p1, p0, Lorg/bson/BsonDocumentReader$Mark;->context:Lorg/bson/BsonDocumentReader$Context;

    .line 5
    invoke-virtual {p1}, Lorg/bson/BsonDocumentReader$Context;->mark()V

    return-void
.end method


# virtual methods
.method public reset()V
    .registers 3

    .line 1
    invoke-super {p0}, Lorg/bson/AbstractBsonReader$Mark;->reset()V

    .line 2
    iget-object v0, p0, Lorg/bson/BsonDocumentReader$Mark;->this$0:Lorg/bson/BsonDocumentReader;

    iget-object v1, p0, Lorg/bson/BsonDocumentReader$Mark;->currentValue:Lorg/bson/BsonValue;

    # setter for: Lorg/bson/BsonDocumentReader;->currentValue:Lorg/bson/BsonValue;
    invoke-static {v0, v1}, Lorg/bson/BsonDocumentReader;->access$002(Lorg/bson/BsonDocumentReader;Lorg/bson/BsonValue;)Lorg/bson/BsonValue;

    .line 3
    iget-object v0, p0, Lorg/bson/BsonDocumentReader$Mark;->this$0:Lorg/bson/BsonDocumentReader;

    iget-object v1, p0, Lorg/bson/BsonDocumentReader$Mark;->context:Lorg/bson/BsonDocumentReader$Context;

    invoke-virtual {v0, v1}, Lorg/bson/AbstractBsonReader;->setContext(Lorg/bson/AbstractBsonReader$Context;)V

    .line 4
    iget-object v0, p0, Lorg/bson/BsonDocumentReader$Mark;->context:Lorg/bson/BsonDocumentReader$Context;

    invoke-virtual {v0}, Lorg/bson/BsonDocumentReader$Context;->reset()V

    return-void
.end method
