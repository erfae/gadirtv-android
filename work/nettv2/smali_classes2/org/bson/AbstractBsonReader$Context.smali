.class public abstract Lorg/bson/AbstractBsonReader$Context;
.super Ljava/lang/Object;
.source "AbstractBsonReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bson/AbstractBsonReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "Context"
.end annotation


# instance fields
.field private final contextType:Lorg/bson/BsonContextType;

.field private final parentContext:Lorg/bson/AbstractBsonReader$Context;


# direct methods
.method public constructor <init>(Lorg/bson/AbstractBsonReader$Context;Lorg/bson/BsonContextType;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/bson/AbstractBsonReader$Context;->parentContext:Lorg/bson/AbstractBsonReader$Context;

    .line 3
    iput-object p2, p0, Lorg/bson/AbstractBsonReader$Context;->contextType:Lorg/bson/BsonContextType;

    return-void
.end method

.method public static synthetic access$200(Lorg/bson/AbstractBsonReader$Context;)Lorg/bson/AbstractBsonReader$Context;
    .locals 0

    iget-object p0, p0, Lorg/bson/AbstractBsonReader$Context;->parentContext:Lorg/bson/AbstractBsonReader$Context;

    return-object p0
.end method

.method public static synthetic access$300(Lorg/bson/AbstractBsonReader$Context;)Lorg/bson/BsonContextType;
    .locals 0

    iget-object p0, p0, Lorg/bson/AbstractBsonReader$Context;->contextType:Lorg/bson/BsonContextType;

    return-object p0
.end method


# virtual methods
.method public getContextType()Lorg/bson/BsonContextType;
    .locals 1

    iget-object v0, p0, Lorg/bson/AbstractBsonReader$Context;->contextType:Lorg/bson/BsonContextType;

    return-object v0
.end method

.method public final getParentContext()Lorg/bson/AbstractBsonReader$Context;
    .locals 1

    iget-object v0, p0, Lorg/bson/AbstractBsonReader$Context;->parentContext:Lorg/bson/AbstractBsonReader$Context;

    return-object v0
.end method
