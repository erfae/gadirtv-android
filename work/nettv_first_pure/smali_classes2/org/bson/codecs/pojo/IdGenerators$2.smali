.class Lorg/bson/codecs/pojo/IdGenerators$2;
.super Ljava/lang/Object;
.source "IdGenerators.java"

# interfaces
.implements Lorg/bson/codecs/pojo/IdGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bson/codecs/pojo/IdGenerators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/bson/codecs/pojo/IdGenerator<",
        "Lorg/bson/BsonObjectId;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic generate()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/bson/codecs/pojo/IdGenerators$2;->generate()Lorg/bson/BsonObjectId;

    move-result-object v0

    return-object v0
.end method

.method public generate()Lorg/bson/BsonObjectId;
    .locals 1

    .line 2
    new-instance v0, Lorg/bson/BsonObjectId;

    invoke-direct {v0}, Lorg/bson/BsonObjectId;-><init>()V

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lorg/bson/BsonObjectId;",
            ">;"
        }
    .end annotation

    const-class v0, Lorg/bson/BsonObjectId;

    return-object v0
.end method
