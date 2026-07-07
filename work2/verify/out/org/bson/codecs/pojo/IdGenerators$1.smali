.class Lorg/bson/codecs/pojo/IdGenerators$1;
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
        "Lorg/bson/types/ObjectId;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic generate()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/bson/codecs/pojo/IdGenerators$1;->generate()Lorg/bson/types/ObjectId;

    move-result-object v0

    return-object v0
.end method

.method public generate()Lorg/bson/types/ObjectId;
    .registers 2

    .line 2
    new-instance v0, Lorg/bson/types/ObjectId;

    invoke-direct {v0}, Lorg/bson/types/ObjectId;-><init>()V

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lorg/bson/types/ObjectId;",
            ">;"
        }
    .end annotation

    const-class v0, Lorg/bson/types/ObjectId;

    return-object v0
.end method
