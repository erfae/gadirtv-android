.class public Lorg/bson/AbstractBsonWriter$Context;
.super Ljava/lang/Object;
.source "AbstractBsonWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bson/AbstractBsonWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Context"
.end annotation


# instance fields
.field private final contextType:Lorg/bson/BsonContextType;

.field private name:Ljava/lang/String;

.field private final parentContext:Lorg/bson/AbstractBsonWriter$Context;

.field public final synthetic this$0:Lorg/bson/AbstractBsonWriter;


# direct methods
.method public constructor <init>(Lorg/bson/AbstractBsonWriter;Lorg/bson/AbstractBsonWriter$Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lorg/bson/AbstractBsonWriter$Context;->this$0:Lorg/bson/AbstractBsonWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p2, Lorg/bson/AbstractBsonWriter$Context;->parentContext:Lorg/bson/AbstractBsonWriter$Context;

    iput-object p1, p0, Lorg/bson/AbstractBsonWriter$Context;->parentContext:Lorg/bson/AbstractBsonWriter$Context;

    .line 3
    iget-object p1, p2, Lorg/bson/AbstractBsonWriter$Context;->contextType:Lorg/bson/BsonContextType;

    iput-object p1, p0, Lorg/bson/AbstractBsonWriter$Context;->contextType:Lorg/bson/BsonContextType;

    return-void
.end method

.method public constructor <init>(Lorg/bson/AbstractBsonWriter;Lorg/bson/AbstractBsonWriter$Context;Lorg/bson/BsonContextType;)V
    .registers 4

    .line 4
    iput-object p1, p0, Lorg/bson/AbstractBsonWriter$Context;->this$0:Lorg/bson/AbstractBsonWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p2, p0, Lorg/bson/AbstractBsonWriter$Context;->parentContext:Lorg/bson/AbstractBsonWriter$Context;

    .line 6
    iput-object p3, p0, Lorg/bson/AbstractBsonWriter$Context;->contextType:Lorg/bson/BsonContextType;

    return-void
.end method

.method public static synthetic access$000(Lorg/bson/AbstractBsonWriter$Context;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lorg/bson/AbstractBsonWriter$Context;->name:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$002(Lorg/bson/AbstractBsonWriter$Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lorg/bson/AbstractBsonWriter$Context;->name:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public copy()Lorg/bson/AbstractBsonWriter$Context;
    .registers 3

    new-instance v0, Lorg/bson/AbstractBsonWriter$Context;

    iget-object v1, p0, Lorg/bson/AbstractBsonWriter$Context;->this$0:Lorg/bson/AbstractBsonWriter;

    invoke-direct {v0, v1, p0}, Lorg/bson/AbstractBsonWriter$Context;-><init>(Lorg/bson/AbstractBsonWriter;Lorg/bson/AbstractBsonWriter$Context;)V

    return-object v0
.end method

.method public getContextType()Lorg/bson/BsonContextType;
    .registers 2

    iget-object v0, p0, Lorg/bson/AbstractBsonWriter$Context;->contextType:Lorg/bson/BsonContextType;

    return-object v0
.end method

.method public getParentContext()Lorg/bson/AbstractBsonWriter$Context;
    .registers 2

    iget-object v0, p0, Lorg/bson/AbstractBsonWriter$Context;->parentContext:Lorg/bson/AbstractBsonWriter$Context;

    return-object v0
.end method
