.class final Lorg/bson/codecs/pojo/TypeParameterMap;
.super Ljava/lang/Object;
.source "TypeParameterMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bson/codecs/pojo/TypeParameterMap$Builder;
    }
.end annotation


# instance fields
.field private final propertyToClassParamIndexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/bson/codecs/pojo/TypeParameterMap;->propertyToClassParamIndexMap:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;Lorg/bson/codecs/pojo/TypeParameterMap$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/bson/codecs/pojo/TypeParameterMap;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lorg/bson/codecs/pojo/TypeParameterMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lorg/bson/codecs/pojo/TypeParameterMap;

    .line 3
    iget-object v2, p0, Lorg/bson/codecs/pojo/TypeParameterMap;->propertyToClassParamIndexMap:Ljava/util/Map;

    iget-object p1, p1, Lorg/bson/codecs/pojo/TypeParameterMap;->propertyToClassParamIndexMap:Ljava/util/Map;

    .line 4
    invoke-interface {v2, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public final getPropertyToClassParamIndexMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bson/codecs/pojo/TypeParameterMap;->propertyToClassParamIndexMap:Ljava/util/Map;

    return-object v0
.end method

.method public final hasTypeParameters()Z
    .locals 1

    iget-object v0, p0, Lorg/bson/codecs/pojo/TypeParameterMap;->propertyToClassParamIndexMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bson/codecs/pojo/TypeParameterMap;->propertyToClassParamIndexMap:Ljava/util/Map;

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "TypeParameterMap{fieldToClassParamIndexMap="

    .line 1
    invoke-static {v0}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/bson/codecs/pojo/TypeParameterMap;->propertyToClassParamIndexMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
