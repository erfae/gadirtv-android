.class public Lorg/bson/AbstractBsonWriter$Mark;
.super Ljava/lang/Object;
.source "AbstractBsonWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bson/AbstractBsonWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Mark"
.end annotation


# instance fields
.field private final currentName:Ljava/lang/String;

.field private final markedContext:Lorg/bson/AbstractBsonWriter$Context;

.field private final markedState:Lorg/bson/AbstractBsonWriter$State;

.field private final serializationDepth:I

.field public final synthetic this$0:Lorg/bson/AbstractBsonWriter;


# direct methods
.method public constructor <init>(Lorg/bson/AbstractBsonWriter;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/bson/AbstractBsonWriter$Mark;->this$0:Lorg/bson/AbstractBsonWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lorg/bson/AbstractBsonWriter;->access$100(Lorg/bson/AbstractBsonWriter;)Lorg/bson/AbstractBsonWriter$Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/AbstractBsonWriter$Context;->copy()Lorg/bson/AbstractBsonWriter$Context;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/AbstractBsonWriter$Mark;->markedContext:Lorg/bson/AbstractBsonWriter$Context;

    .line 3
    invoke-static {p1}, Lorg/bson/AbstractBsonWriter;->access$200(Lorg/bson/AbstractBsonWriter;)Lorg/bson/AbstractBsonWriter$State;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/AbstractBsonWriter$Mark;->markedState:Lorg/bson/AbstractBsonWriter$State;

    .line 4
    invoke-static {p1}, Lorg/bson/AbstractBsonWriter;->access$100(Lorg/bson/AbstractBsonWriter;)Lorg/bson/AbstractBsonWriter$Context;

    move-result-object v0

    invoke-static {v0}, Lorg/bson/AbstractBsonWriter$Context;->access$000(Lorg/bson/AbstractBsonWriter$Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/AbstractBsonWriter$Mark;->currentName:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lorg/bson/AbstractBsonWriter;->access$300(Lorg/bson/AbstractBsonWriter;)I

    move-result p1

    iput p1, p0, Lorg/bson/AbstractBsonWriter$Mark;->serializationDepth:I

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/bson/AbstractBsonWriter$Mark;->this$0:Lorg/bson/AbstractBsonWriter;

    iget-object v1, p0, Lorg/bson/AbstractBsonWriter$Mark;->markedContext:Lorg/bson/AbstractBsonWriter$Context;

    invoke-virtual {v0, v1}, Lorg/bson/AbstractBsonWriter;->setContext(Lorg/bson/AbstractBsonWriter$Context;)V

    .line 2
    iget-object v0, p0, Lorg/bson/AbstractBsonWriter$Mark;->this$0:Lorg/bson/AbstractBsonWriter;

    iget-object v1, p0, Lorg/bson/AbstractBsonWriter$Mark;->markedState:Lorg/bson/AbstractBsonWriter$State;

    invoke-virtual {v0, v1}, Lorg/bson/AbstractBsonWriter;->setState(Lorg/bson/AbstractBsonWriter$State;)V

    .line 3
    iget-object v0, p0, Lorg/bson/AbstractBsonWriter$Mark;->this$0:Lorg/bson/AbstractBsonWriter;

    invoke-static {v0}, Lorg/bson/AbstractBsonWriter;->access$100(Lorg/bson/AbstractBsonWriter;)Lorg/bson/AbstractBsonWriter$Context;

    move-result-object v0

    iget-object v1, p0, Lorg/bson/AbstractBsonWriter$Mark;->currentName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/bson/AbstractBsonWriter$Context;->access$002(Lorg/bson/AbstractBsonWriter$Context;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lorg/bson/AbstractBsonWriter$Mark;->this$0:Lorg/bson/AbstractBsonWriter;

    iget v1, p0, Lorg/bson/AbstractBsonWriter$Mark;->serializationDepth:I

    invoke-static {v0, v1}, Lorg/bson/AbstractBsonWriter;->access$302(Lorg/bson/AbstractBsonWriter;I)I

    return-void
.end method
