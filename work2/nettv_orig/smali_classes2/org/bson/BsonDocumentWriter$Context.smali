.class Lorg/bson/BsonDocumentWriter$Context;
.super Lorg/bson/AbstractBsonWriter$Context;
.source "BsonDocumentWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bson/BsonDocumentWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Context"
.end annotation


# instance fields
.field private container:Lorg/bson/BsonValue;

.field public final synthetic this$0:Lorg/bson/BsonDocumentWriter;


# direct methods
.method public constructor <init>(Lorg/bson/BsonDocumentWriter;)V
    .locals 2

    .line 4
    iput-object p1, p0, Lorg/bson/BsonDocumentWriter$Context;->this$0:Lorg/bson/BsonDocumentWriter;

    .line 5
    sget-object v0, Lorg/bson/BsonContextType;->TOP_LEVEL:Lorg/bson/BsonContextType;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/bson/AbstractBsonWriter$Context;-><init>(Lorg/bson/AbstractBsonWriter;Lorg/bson/AbstractBsonWriter$Context;Lorg/bson/BsonContextType;)V

    return-void
.end method

.method public constructor <init>(Lorg/bson/BsonDocumentWriter;Lorg/bson/BsonValue;Lorg/bson/BsonContextType;Lorg/bson/BsonDocumentWriter$Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/bson/BsonDocumentWriter$Context;->this$0:Lorg/bson/BsonDocumentWriter;

    .line 2
    invoke-direct {p0, p1, p4, p3}, Lorg/bson/AbstractBsonWriter$Context;-><init>(Lorg/bson/AbstractBsonWriter;Lorg/bson/AbstractBsonWriter$Context;Lorg/bson/BsonContextType;)V

    .line 3
    iput-object p2, p0, Lorg/bson/BsonDocumentWriter$Context;->container:Lorg/bson/BsonValue;

    return-void
.end method

.method public static synthetic access$000(Lorg/bson/BsonDocumentWriter$Context;)Lorg/bson/BsonValue;
    .locals 0

    iget-object p0, p0, Lorg/bson/BsonDocumentWriter$Context;->container:Lorg/bson/BsonValue;

    return-object p0
.end method


# virtual methods
.method public final add(Lorg/bson/BsonValue;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/bson/BsonDocumentWriter$Context;->container:Lorg/bson/BsonValue;

    instance-of v1, v0, Lorg/bson/BsonArray;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lorg/bson/BsonArray;

    invoke-virtual {v0, p1}, Lorg/bson/BsonArray;->add(Lorg/bson/BsonValue;)Z

    goto :goto_0

    .line 3
    :cond_0
    check-cast v0, Lorg/bson/BsonDocument;

    iget-object v1, p0, Lorg/bson/BsonDocumentWriter$Context;->this$0:Lorg/bson/BsonDocumentWriter;

    invoke-virtual {v1}, Lorg/bson/AbstractBsonWriter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/bson/BsonDocument;->put(Ljava/lang/String;Lorg/bson/BsonValue;)Lorg/bson/BsonValue;

    :goto_0
    return-void
.end method
