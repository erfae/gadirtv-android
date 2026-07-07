.class final Lorg/bson/codecs/pojo/ConventionObjectIdGeneratorsImpl;
.super Ljava/lang/Object;
.source "ConventionObjectIdGeneratorsImpl.java"

# interfaces
.implements Lorg/bson/codecs/pojo/Convention;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lorg/bson/codecs/pojo/ClassModelBuilder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bson/codecs/pojo/ClassModelBuilder<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/bson/codecs/pojo/ClassModelBuilder;->getIdGenerator()Lorg/bson/codecs/pojo/IdGenerator;

    move-result-object v0

    if-nez v0, :cond_45

    invoke-virtual {p1}, Lorg/bson/codecs/pojo/ClassModelBuilder;->getIdPropertyName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 2
    invoke-virtual {p1}, Lorg/bson/codecs/pojo/ClassModelBuilder;->getIdPropertyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bson/codecs/pojo/ClassModelBuilder;->getProperty(Ljava/lang/String;)Lorg/bson/codecs/pojo/PropertyModelBuilder;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 3
    invoke-virtual {v0}, Lorg/bson/codecs/pojo/PropertyModelBuilder;->getTypeData()Lorg/bson/codecs/pojo/TypeData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/codecs/pojo/TypeData;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lorg/bson/codecs/pojo/ClassModelBuilder;->getIdGenerator()Lorg/bson/codecs/pojo/IdGenerator;

    move-result-object v1

    if-nez v1, :cond_32

    const-class v1, Lorg/bson/types/ObjectId;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 5
    sget-object v0, Lorg/bson/codecs/pojo/IdGenerators;->OBJECT_ID_GENERATOR:Lorg/bson/codecs/pojo/IdGenerator;

    invoke-virtual {p1, v0}, Lorg/bson/codecs/pojo/ClassModelBuilder;->idGenerator(Lorg/bson/codecs/pojo/IdGenerator;)Lorg/bson/codecs/pojo/ClassModelBuilder;

    goto :goto_45

    .line 6
    :cond_32
    invoke-virtual {p1}, Lorg/bson/codecs/pojo/ClassModelBuilder;->getIdGenerator()Lorg/bson/codecs/pojo/IdGenerator;

    move-result-object v1

    if-nez v1, :cond_45

    const-class v1, Lorg/bson/BsonObjectId;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 7
    sget-object v0, Lorg/bson/codecs/pojo/IdGenerators;->BSON_OBJECT_ID_GENERATOR:Lorg/bson/codecs/pojo/IdGenerator;

    invoke-virtual {p1, v0}, Lorg/bson/codecs/pojo/ClassModelBuilder;->idGenerator(Lorg/bson/codecs/pojo/IdGenerator;)Lorg/bson/codecs/pojo/ClassModelBuilder;

    :cond_45
    :goto_45
    return-void
.end method
