.class final Lorg/bson/codecs/pojo/PropertyMetadata;
.super Ljava/lang/Object;
.source "PropertyMetadata.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final declaringClassName:Ljava/lang/String;

.field private error:Ljava/lang/String;

.field private field:Ljava/lang/reflect/Field;

.field private getter:Ljava/lang/reflect/Method;

.field private final name:Ljava/lang/String;

.field private final readAnnotations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private setter:Ljava/lang/reflect/Method;

.field private final typeData:Lorg/bson/codecs/pojo/TypeData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bson/codecs/pojo/TypeData<",
            "TT;>;"
        }
    .end annotation
.end field

.field private typeParameterMap:Lorg/bson/codecs/pojo/TypeParameterMap;

.field private typeParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bson/codecs/pojo/TypeData<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final writeAnnotations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/bson/codecs/pojo/TypeData;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/bson/codecs/pojo/TypeData<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bson/codecs/pojo/PropertyMetadata;->readAnnotations:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bson/codecs/pojo/PropertyMetadata;->writeAnnotations:Ljava/util/Map;

    .line 4
    iput-object p1, p0, Lorg/bson/codecs/pojo/PropertyMetadata;->name:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lorg/bson/codecs/pojo/PropertyMetadata;->declaringClassName:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lorg/bson/codecs/pojo/PropertyMetadata;->typeData:Lorg/bson/codecs/pojo/TypeData;

    return-void
.end method

.method private isPublicAndNotStaticOrTransient(I)Z
    .registers 3

    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lorg/bson/codecs/pojo/PropertyMetadata;->notStaticOrTransient(I)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method private notStaticOrTransient(I)Z
    .registers 3

    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p1

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method


# virtual methods
.method public addReadAnnotation(Ljava/lang/annotation/Annotation;)Lorg/bson/codecs/pojo/PropertyMetadata;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lorg/bson/codecs/pojo/PropertyMetadata<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bson/codecs/pojo/PropertyMetadata;->readAnnotations:Ljava/util/Map;

    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 2
    iget-object v0, p0, Lorg/bson/codecs/pojo/PropertyMetadata;->readAnnotations:Ljava/util/Map;

    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/annotation/Annotation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    return-object p0

    .line 3
    :cond_1d
    new-instance v0, Lorg/bson/codecs/configuration/CodecConfigurationException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    iget-object v2, p0, Lorg/bson/codecs/pojo/PropertyMetadata;->name:Ljava/lang/String;

    aput-object v2, v1, p1

    const/4 p1, 0x2

    iget-object v2, p0, Lorg/bson/codecs/pojo/PropertyMetadata;->declaringClassName:Ljava/lang/String;

    aput-object v2, v1, p1

    const-string p1, "Read annotation %s for \'%s\' already exists in %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bson/codecs/configuration/CodecConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_3d
    iget-object v0, p0, Lorg/bson/codecs/pojo/PropertyMetadata;->readAnnotations:Ljava/util/Map;

    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addWriteAnnotation(Ljava/lang/annotation/Annotation;)Lorg/bson/codecs/pojo/PropertyMetadata;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lorg/bson/codecs/pojo/PropertyMetadata<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bson/codecs/pojo/PropertyMetadata;->writeAnnotations:Ljava/util/Map;

    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 2
    iget-object v0, p0, Lorg/bson/codecs/pojo/PropertyMetadata;->writeAnnotations:Ljava/util/Map;

    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/annotation/Annotation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    return-object p0

    .line 3
    :cond_1d
    new-instance v0, Lorg/bson/codecs/configuration/CodecConfigurationException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    iget-object v2, p0, Lorg/bson/codecs/pojo/PropertyMetadata;->name:Ljava/lang/String;

    aput-object v2, v1, p1

    const/4 p1, 0x2

    iget-object v2, p0, Lorg/bson/codecs/pojo/PropertyMetadata;->declaringClassName:Ljava/lang/String;

    aput-object v2, v1, p1

    const-string p1, "Write annotation %s for \'%s\' already exists in %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bson/codecs/configuration/CodecConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_3d
    iget-object v0, p0, Lorg/bson/codecs/pojo/PropertyMetadata;->writeAnnotations:Ljava/util/Map;

    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public field(Ljava/lang/reflect/Field;)Lorg/bson/codecs/pojo/PropertyMetadata;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Lorg/bson/codecs/pojo/PropertyMetadata<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lorg/bson/codecs/pojo/PropertyMetadata;->field:Ljava/lang/reflect/Field;

    return-object p0
.end method

.method public getDeclaringClassName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bson/codecs/pojo/PropertyMetadata;->declaringClassName:Ljava/lang/String;

    return-object v0
.end method

.method public final getError()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bson/codecs/pojo/PropertyMetadata;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getField()Ljava/lang/reflect/Field;
    .registers 2

    iget-object v0, p0, Lorg/bson/codecs/pojo/PropertyMetadata;->field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getGetter()Ljava/lang/reflect/Method;
    .registers 2

    iget-object v0, p0, Lorg/bson/codecs/pojo/PropertyMetadata;->getter:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bson/codecs/pojo/PropertyMetadata;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getReadAnnotations()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/bson/codecs/pojo/PropertyMetadata;->readAnnotations:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSetter()Ljava/lang/reflect/Method;
    .registers 2

    iget-object v0, p0, Lorg/bson/codecs/pojo/PropertyMetadata;->setter:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getTypeData()Lorg/bson/codecs/pojo/TypeData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bson/codecs/pojo/TypeData<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bson/codecs/pojo/PropertyMetadata;->typeData:Lorg/bson/codecs/pojo/TypeData;

    return-object v0
.end method

.method public getTypeParameterMap()Lorg/bson/codecs/pojo/TypeParameterMap;
    .registers 2

    iget-object v0, p0, Lorg/bson/codecs/pojo/PropertyMetadata;->typeParameterMap:Lorg/bson/codecs/pojo/TypeParameterMap;

    return-object v0
.end method

.method public getTypeParameters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bson/codecs/pojo/TypeData<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bson/codecs/pojo/PropertyMetadata;->typeParameters:Ljava/util/List;

    return-object v0
.end method

.method public getWriteAnnotations()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/bson/codecs/pojo/PropertyMetadata;->writeAnnotations:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public isDeserializable()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/bson/codecs/pojo/PropertyMetadata;->setter:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    .line 2
    iget-object v0, p0, Lorg/bson/codecs/pojo/PropertyMetadata;->field:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lorg/bson/codecs/pojo/PropertyMetadata;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/bson/codecs/pojo/PropertyMetadata;->notStaticOrTransient(I)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :cond_22
    :goto_22
    return v1

    .line 3
    :cond_23
    iget-object v0, p0, Lorg/bson/codecs/pojo/PropertyMetadata;->field:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lorg/bson/codecs/pojo/PropertyMetadata;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/bson/codecs/pojo/PropertyMetadata;->isPublicAndNotStaticOrTransient(I)Z

    move-result v0

    if-eqz v0, :cond_3e

    goto :goto_3f

    :cond_3e
    const/4 v1, 0x0

    :goto_3f
    return v1
.end method

.method public isSerializable()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/bson/codecs/pojo/PropertyMetadata;->getter:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    .line 2
    iget-object v0, p0, Lorg/bson/codecs/pojo/PropertyMetadata;->field:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/bson/codecs/pojo/PropertyMetadata;->notStaticOrTransient(I)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :cond_16
    :goto_16
    return v1

    .line 3
    :cond_17
    iget-object v0, p0, Lorg/bson/codecs/pojo/PropertyMetadata;->field:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/bson/codecs/pojo/PropertyMetadata;->isPublicAndNotStaticOrTransient(I)Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    :goto_27
    return v1
.end method

.method public final setError(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/bson/codecs/pojo/PropertyMetadata;->error:Ljava/lang/String;

    return-void
.end method

.method public setGetter(Ljava/lang/reflect/Method;)V
    .registers 2

    iput-object p1, p0, Lorg/bson/codecs/pojo/PropertyMetadata;->getter:Ljava/lang/reflect/Method;

    return-void
.end method

.method public setSetter(Ljava/lang/reflect/Method;)V
    .registers 2

    iput-object p1, p0, Lorg/bson/codecs/pojo/PropertyMetadata;->setter:Ljava/lang/reflect/Method;

    return-void
.end method

.method public typeParameterInfo(Lorg/bson/codecs/pojo/TypeParameterMap;Lorg/bson/codecs/pojo/TypeData;)Lorg/bson/codecs/pojo/PropertyMetadata;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/bson/codecs/pojo/TypeParameterMap;",
            "Lorg/bson/codecs/pojo/TypeData<",
            "TS;>;)",
            "Lorg/bson/codecs/pojo/PropertyMetadata<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_c

    if-eqz p2, :cond_c

    .line 1
    iput-object p1, p0, Lorg/bson/codecs/pojo/PropertyMetadata;->typeParameterMap:Lorg/bson/codecs/pojo/TypeParameterMap;

    .line 2
    invoke-virtual {p2}, Lorg/bson/codecs/pojo/TypeData;->getTypeParameters()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bson/codecs/pojo/PropertyMetadata;->typeParameters:Ljava/util/List;

    :cond_c
    return-object p0
.end method
