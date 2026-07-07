.class public Lorg/bson/BsonBinaryReader$Context;
.super Lorg/bson/AbstractBsonReader$Context;
.source "BsonBinaryReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bson/BsonBinaryReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Context"
.end annotation


# instance fields
.field private final size:I

.field private final startPosition:I


# direct methods
.method public constructor <init>(Lorg/bson/BsonBinaryReader;Lorg/bson/BsonBinaryReader$Context;Lorg/bson/BsonContextType;II)V
    .registers 6

    .line 1
    invoke-direct {p0, p2, p3}, Lorg/bson/AbstractBsonReader$Context;-><init>(Lorg/bson/AbstractBsonReader$Context;Lorg/bson/BsonContextType;)V

    .line 2
    iput p4, p0, Lorg/bson/BsonBinaryReader$Context;->startPosition:I

    .line 3
    iput p5, p0, Lorg/bson/BsonBinaryReader$Context;->size:I

    return-void
.end method

.method public static synthetic access$000(Lorg/bson/BsonBinaryReader$Context;)I
    .registers 1

    iget p0, p0, Lorg/bson/BsonBinaryReader$Context;->startPosition:I

    return p0
.end method

.method public static synthetic access$100(Lorg/bson/BsonBinaryReader$Context;)I
    .registers 1

    iget p0, p0, Lorg/bson/BsonBinaryReader$Context;->size:I

    return p0
.end method


# virtual methods
.method public final popContext(I)Lorg/bson/BsonBinaryReader$Context;
    .registers 6

    .line 1
    iget v0, p0, Lorg/bson/BsonBinaryReader$Context;->startPosition:I

    sub-int/2addr p1, v0

    .line 2
    iget v0, p0, Lorg/bson/BsonBinaryReader$Context;->size:I

    if-ne p1, v0, :cond_e

    .line 3
    invoke-virtual {p0}, Lorg/bson/AbstractBsonReader$Context;->getParentContext()Lorg/bson/AbstractBsonReader$Context;

    move-result-object p1

    check-cast p1, Lorg/bson/BsonBinaryReader$Context;

    return-object p1

    .line 4
    :cond_e
    new-instance v0, Lorg/bson/BsonSerializationException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lorg/bson/BsonBinaryReader$Context;->size:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Expected size to be %d, not %d."

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bson/BsonSerializationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
