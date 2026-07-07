.class final Lorg/bson/codecs/pojo/ConventionAnnotationImpl;
.super Ljava/lang/Object;
.source "ConventionAnnotationImpl.java"

# interfaces
.implements Lorg/bson/codecs/pojo/Convention;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addCreatorPropertyToClassModelBuilder(Lorg/bson/codecs/pojo/ClassModelBuilder;Ljava/lang/String;Ljava/lang/Class;)Lorg/bson/codecs/pojo/PropertyModelBuilder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/bson/codecs/pojo/ClassModelBuilder<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TS;>;)",
            "Lorg/bson/codecs/pojo/PropertyModelBuilder<",
            "TS;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/bson/codecs/pojo/PropertyMetadata;

    .line 2
    invoke-virtual {p1}, Lorg/bson/codecs/pojo/ClassModelBuilder;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Lorg/bson/codecs/pojo/TypeData;->builder(Ljava/lang/Class;)Lorg/bson/codecs/pojo/TypeData$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lorg/bson/codecs/pojo/TypeData$Builder;->build()Lorg/bson/codecs/pojo/TypeData;

    move-result-object p3

    invoke-direct {v0, p2, v1, p3}, Lorg/bson/codecs/pojo/PropertyMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/bson/codecs/pojo/TypeData;)V

    .line 3
    invoke-static {v0}, Lorg/bson/codecs/pojo/PojoBuilderHelper;->createPropertyModelBuilder(Lorg/bson/codecs/pojo/PropertyMetadata;)Lorg/bson/codecs/pojo/PropertyModelBuilder;

    move-result-object p3

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p3, v0}, Lorg/bson/codecs/pojo/PropertyModelBuilder;->readName(Ljava/lang/String;)Lorg/bson/codecs/pojo/PropertyModelBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Lorg/bson/codecs/pojo/PropertyModelBuilder;->writeName(Ljava/lang/String;)Lorg/bson/codecs/pojo/PropertyModelBuilder;

    move-result-object p2

    .line 5
    invoke-virtual {p1, p2}, Lorg/bson/codecs/pojo/ClassModelBuilder;->addProperty(Lorg/bson/codecs/pojo/PropertyModelBuilder;)Lorg/bson/codecs/pojo/ClassModelBuilder;

    return-object p2
.end method

.method private cleanPropertyBuilders(Lorg/bson/codecs/pojo/ClassModelBuilder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bson/codecs/pojo/ClassModelBuilder<",
            "*>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1}, Lorg/bson/codecs/pojo/ClassModelBuilder;->getPropertyModelBuilders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bson/codecs/pojo/PropertyModelBuilder;

    .line 3
    invoke-virtual {v2}, Lorg/bson/codecs/pojo/PropertyModelBuilder;->isReadable()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {v2}, Lorg/bson/codecs/pojo/PropertyModelBuilder;->isWritable()Z

    move-result v3

    if-nez v3, :cond_d

    .line 4
    invoke-virtual {v2}, Lorg/bson/codecs/pojo/PropertyModelBuilder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 5
    :cond_2d
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6
    invoke-virtual {p1, v1}, Lorg/bson/codecs/pojo/ClassModelBuilder;->removeProperty(Ljava/lang/String;)Z

    goto :goto_31

    :cond_41
    return-void
.end method

.method private processClassAnnotation(Lorg/bson/codecs/pojo/ClassModelBuilder;Ljava/lang/annotation/Annotation;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bson/codecs/pojo/ClassModelBuilder<",
            "*>;",
            "Ljava/lang/annotation/Annotation;",
            ")V"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lorg/bson/codecs/pojo/annotations/BsonDiscriminator;

    if-eqz v0, :cond_26

    .line 2
    check-cast p2, Lorg/bson/codecs/pojo/annotations/BsonDiscriminator;

    .line 3
    invoke-interface {p2}, Lorg/bson/codecs/pojo/annotations/BsonDiscriminator;->key()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 5
    invoke-virtual {p1, v0}, Lorg/bson/codecs/pojo/ClassModelBuilder;->discriminatorKey(Ljava/lang/String;)Lorg/bson/codecs/pojo/ClassModelBuilder;

    .line 6
    :cond_15
    invoke-interface {p2}, Lorg/bson/codecs/pojo/annotations/BsonDiscriminator;->value()Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 8
    invoke-virtual {p1, p2}, Lorg/bson/codecs/pojo/ClassModelBuilder;->discriminator(Ljava/lang/String;)Lorg/bson/codecs/pojo/ClassModelBuilder;

    :cond_22
    const/4 p2, 0x1

    .line 9
    invoke-virtual {p1, p2}, Lorg/bson/codecs/pojo/ClassModelBuilder;->enableDiscriminator(Z)Lorg/bson/codecs/pojo/ClassModelBuilder;

    :cond_26
    return-void
.end method

.method private processCreatorAnnotation(Lorg/bson/codecs/pojo/ClassModelBuilder;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/bson/codecs/pojo/ClassModelBuilder<",
            "TT;>;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Lorg/bson/codecs/pojo/ClassModelBuilder;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    array-length v3, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_e
    if-ge v6, v3, :cond_4e

    aget-object v8, v2, v6

    .line 3
    invoke-virtual {v8}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v9

    if-eqz v9, :cond_4b

    invoke-virtual {v8}, Ljava/lang/reflect/Constructor;->isSynthetic()Z

    move-result v9

    if-nez v9, :cond_4b

    .line 4
    invoke-virtual {v8}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x0

    :goto_28
    if-ge v11, v10, :cond_4b

    aget-object v12, v9, v11

    .line 5
    invoke-interface {v12}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v12

    const-class v13, Lorg/bson/codecs/pojo/annotations/BsonCreator;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_48

    if-nez v7, :cond_40

    .line 6
    new-instance v7, Lorg/bson/codecs/pojo/CreatorExecutable;

    invoke-direct {v7, v1, v8}, Lorg/bson/codecs/pojo/CreatorExecutable;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;)V

    goto :goto_48

    .line 7
    :cond_40
    new-instance v0, Lorg/bson/codecs/configuration/CodecConfigurationException;

    const-string v1, "Found multiple constructors annotated with @BsonCreator"

    invoke-direct {v0, v1}, Lorg/bson/codecs/configuration/CodecConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_48
    :goto_48
    add-int/lit8 v11, v11, 0x1

    goto :goto_28

    :cond_4b
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_4e
    move-object v2, v1

    const/4 v3, 0x0

    :goto_50
    const/4 v6, 0x2

    if-eqz v2, :cond_c8

    if-nez v3, :cond_c8

    .line 8
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x0

    :goto_5b
    if-ge v11, v10, :cond_c3

    aget-object v12, v9, v11

    .line 9
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v13

    invoke-static {v13}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v13

    if-eqz v13, :cond_c0

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result v13

    if-nez v13, :cond_c0

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->isBridge()Z

    move-result v13

    if-nez v13, :cond_c0

    .line 10
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v13

    array-length v14, v13

    const/4 v15, 0x0

    :goto_7b
    if-ge v15, v14, :cond_c0

    aget-object v16, v13, v15

    .line 11
    invoke-interface/range {v16 .. v16}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    const-class v8, Lorg/bson/codecs/pojo/annotations/BsonCreator;

    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bd

    if-nez v7, :cond_b5

    .line 12
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_9e

    .line 13
    new-instance v7, Lorg/bson/codecs/pojo/CreatorExecutable;

    invoke-direct {v7, v1, v12}, Lorg/bson/codecs/pojo/CreatorExecutable;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    const/4 v3, 0x1

    goto :goto_bd

    .line 14
    :cond_9e
    new-instance v0, Lorg/bson/codecs/configuration/CodecConfigurationException;

    new-array v1, v6, [Ljava/lang/Object;

    .line 15
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v5

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "Invalid method annotated with @BsonCreator. Returns \'%s\', expected %s"

    .line 16
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bson/codecs/configuration/CodecConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_b5
    new-instance v0, Lorg/bson/codecs/configuration/CodecConfigurationException;

    const-string v1, "Found multiple constructors / methods annotated with @BsonCreator"

    invoke-direct {v0, v1}, Lorg/bson/codecs/configuration/CodecConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_bd
    :goto_bd
    add-int/lit8 v15, v15, 0x1

    goto :goto_7b

    :cond_c0
    add-int/lit8 v11, v11, 0x1

    goto :goto_5b

    .line 18
    :cond_c3
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_50

    :cond_c8
    if-eqz v7, :cond_1cd

    .line 19
    invoke-virtual {v7}, Lorg/bson/codecs/pojo/CreatorExecutable;->getProperties()Ljava/util/List;

    move-result-object v2

    .line 20
    invoke-virtual {v7}, Lorg/bson/codecs/pojo/CreatorExecutable;->getParameterTypes()Ljava/util/List;

    move-result-object v3

    .line 21
    invoke-virtual {v7}, Lorg/bson/codecs/pojo/CreatorExecutable;->getParameterGenericTypes()Ljava/util/List;

    move-result-object v4

    .line 22
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-ne v8, v9, :cond_1c4

    const/4 v8, 0x0

    .line 23
    :goto_e1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_1b9

    .line 24
    invoke-virtual {v7}, Lorg/bson/codecs/pojo/CreatorExecutable;->getIdPropertyIndex()Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_fd

    invoke-virtual {v7}, Lorg/bson/codecs/pojo/CreatorExecutable;->getIdPropertyIndex()Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_fd

    const/4 v9, 0x1

    goto :goto_fe

    :cond_fd
    const/4 v9, 0x0

    .line 25
    :goto_fe
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Class;

    .line 26
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/reflect/Type;

    if-eqz v9, :cond_118

    .line 27
    invoke-virtual/range {p1 .. p1}, Lorg/bson/codecs/pojo/ClassModelBuilder;->getIdPropertyName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/bson/codecs/pojo/ClassModelBuilder;->getProperty(Ljava/lang/String;)Lorg/bson/codecs/pojo/PropertyModelBuilder;

    move-result-object v9

    move-object/from16 v12, p0

    goto/16 :goto_188

    .line 28
    :cond_118
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/bson/codecs/pojo/annotations/BsonProperty;

    .line 29
    invoke-virtual/range {p1 .. p1}, Lorg/bson/codecs/pojo/ClassModelBuilder;->getPropertyModelBuilders()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v13, 0x0

    :goto_127
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_154

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/bson/codecs/pojo/PropertyModelBuilder;

    .line 30
    invoke-interface {v9}, Lorg/bson/codecs/pojo/annotations/BsonProperty;->value()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14}, Lorg/bson/codecs/pojo/PropertyModelBuilder;->getWriteName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_143

    move-object v13, v14

    goto :goto_154

    .line 31
    :cond_143
    invoke-interface {v9}, Lorg/bson/codecs/pojo/annotations/BsonProperty;->value()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14}, Lorg/bson/codecs/pojo/PropertyModelBuilder;->getReadName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_152

    move-object v13, v14

    :cond_152
    const/4 v6, 0x2

    goto :goto_127

    :cond_154
    :goto_154
    if-nez v13, :cond_15f

    .line 32
    invoke-interface {v9}, Lorg/bson/codecs/pojo/annotations/BsonProperty;->value()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/bson/codecs/pojo/ClassModelBuilder;->getProperty(Ljava/lang/String;)Lorg/bson/codecs/pojo/PropertyModelBuilder;

    move-result-object v6

    goto :goto_160

    :cond_15f
    move-object v6, v13

    :goto_160
    if-nez v6, :cond_16d

    .line 33
    invoke-interface {v9}, Lorg/bson/codecs/pojo/annotations/BsonProperty;->value()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v12, p0

    invoke-direct {v12, v0, v6, v10}, Lorg/bson/codecs/pojo/ConventionAnnotationImpl;->addCreatorPropertyToClassModelBuilder(Lorg/bson/codecs/pojo/ClassModelBuilder;Ljava/lang/String;Ljava/lang/Class;)Lorg/bson/codecs/pojo/PropertyModelBuilder;

    move-result-object v9

    goto :goto_188

    :cond_16d
    move-object/from16 v12, p0

    .line 34
    invoke-interface {v9}, Lorg/bson/codecs/pojo/annotations/BsonProperty;->value()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6}, Lorg/bson/codecs/pojo/PropertyModelBuilder;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_184

    .line 35
    invoke-interface {v9}, Lorg/bson/codecs/pojo/annotations/BsonProperty;->value()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/bson/codecs/pojo/PropertyModelBuilder;->writeName(Ljava/lang/String;)Lorg/bson/codecs/pojo/PropertyModelBuilder;

    .line 36
    :cond_184
    invoke-static {v10, v6, v11}, Lorg/bson/codecs/pojo/ConventionAnnotationImpl;->tryToExpandToGenericType(Ljava/lang/Class;Lorg/bson/codecs/pojo/PropertyModelBuilder;Ljava/lang/reflect/Type;)V

    move-object v9, v6

    .line 37
    :goto_188
    invoke-virtual {v9}, Lorg/bson/codecs/pojo/PropertyModelBuilder;->getTypeData()Lorg/bson/codecs/pojo/TypeData;

    move-result-object v6

    invoke-virtual {v6, v10}, Lorg/bson/codecs/pojo/TypeData;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_197

    add-int/lit8 v8, v8, 0x1

    const/4 v6, 0x2

    goto/16 :goto_e1

    :cond_197
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 38
    invoke-virtual {v9}, Lorg/bson/codecs/pojo/PropertyModelBuilder;->getWriteName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    invoke-virtual {v9}, Lorg/bson/codecs/pojo/PropertyModelBuilder;->getTypeData()Lorg/bson/codecs/pojo/TypeData;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bson/codecs/pojo/TypeData;->getType()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v2, 0x2

    aput-object v10, v0, v2

    const-string v2, "Invalid Property type for \'%s\'. Expected %s, found %s."

    .line 39
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Lorg/bson/codecs/pojo/CreatorExecutable;->getError(Ljava/lang/Class;Ljava/lang/String;)Lorg/bson/codecs/configuration/CodecConfigurationException;

    move-result-object v0

    throw v0

    :cond_1b9
    move-object/from16 v12, p0

    .line 40
    new-instance v1, Lorg/bson/codecs/pojo/InstanceCreatorFactoryImpl;

    invoke-direct {v1, v7}, Lorg/bson/codecs/pojo/InstanceCreatorFactoryImpl;-><init>(Lorg/bson/codecs/pojo/CreatorExecutable;)V

    invoke-virtual {v0, v1}, Lorg/bson/codecs/pojo/ClassModelBuilder;->instanceCreatorFactory(Lorg/bson/codecs/pojo/InstanceCreatorFactory;)Lorg/bson/codecs/pojo/ClassModelBuilder;

    goto :goto_1cf

    :cond_1c4
    move-object/from16 v12, p0

    const-string v0, "All parameters in the @BsonCreator method / constructor must be annotated with a @BsonProperty."

    .line 41
    invoke-virtual {v7, v1, v0}, Lorg/bson/codecs/pojo/CreatorExecutable;->getError(Ljava/lang/Class;Ljava/lang/String;)Lorg/bson/codecs/configuration/CodecConfigurationException;

    move-result-object v0

    throw v0

    :cond_1cd
    move-object/from16 v12, p0

    :goto_1cf
    return-void
.end method

.method private processPropertyAnnotations(Lorg/bson/codecs/pojo/ClassModelBuilder;Lorg/bson/codecs/pojo/PropertyModelBuilder;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bson/codecs/pojo/ClassModelBuilder<",
            "*>;",
            "Lorg/bson/codecs/pojo/PropertyModelBuilder<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lorg/bson/codecs/pojo/PropertyModelBuilder;->getReadAnnotations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, ""

    const/4 v3, 0x0

    if-eqz v1, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/annotation/Annotation;

    .line 2
    instance-of v4, v1, Lorg/bson/codecs/pojo/annotations/BsonProperty;

    if-eqz v4, :cond_47

    .line 3
    check-cast v1, Lorg/bson/codecs/pojo/annotations/BsonProperty;

    .line 4
    invoke-interface {v1}, Lorg/bson/codecs/pojo/annotations/BsonProperty;->value()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 5
    invoke-interface {v1}, Lorg/bson/codecs/pojo/annotations/BsonProperty;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/bson/codecs/pojo/PropertyModelBuilder;->readName(Ljava/lang/String;)Lorg/bson/codecs/pojo/PropertyModelBuilder;

    .line 6
    :cond_2e
    invoke-interface {v1}, Lorg/bson/codecs/pojo/annotations/BsonProperty;->useDiscriminator()Z

    move-result v1

    invoke-virtual {p2, v1}, Lorg/bson/codecs/pojo/PropertyModelBuilder;->discriminatorEnabled(Z)Lorg/bson/codecs/pojo/PropertyModelBuilder;

    .line 7
    invoke-virtual {p2}, Lorg/bson/codecs/pojo/PropertyModelBuilder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bson/codecs/pojo/ClassModelBuilder;->getIdPropertyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 8
    invoke-virtual {p1, v3}, Lorg/bson/codecs/pojo/ClassModelBuilder;->idPropertyName(Ljava/lang/String;)Lorg/bson/codecs/pojo/ClassModelBuilder;

    goto :goto_8

    .line 9
    :cond_47
    instance-of v2, v1, Lorg/bson/codecs/pojo/annotations/BsonId;

    if-eqz v2, :cond_53

    .line 10
    invoke-virtual {p2}, Lorg/bson/codecs/pojo/PropertyModelBuilder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/bson/codecs/pojo/ClassModelBuilder;->idPropertyName(Ljava/lang/String;)Lorg/bson/codecs/pojo/ClassModelBuilder;

    goto :goto_8

    .line 11
    :cond_53
    instance-of v1, v1, Lorg/bson/codecs/pojo/annotations/BsonIgnore;

    if-eqz v1, :cond_8

    .line 12
    invoke-virtual {p2, v3}, Lorg/bson/codecs/pojo/PropertyModelBuilder;->readName(Ljava/lang/String;)Lorg/bson/codecs/pojo/PropertyModelBuilder;

    goto :goto_8

    .line 13
    :cond_5b
    invoke-virtual {p2}, Lorg/bson/codecs/pojo/PropertyModelBuilder;->getWriteAnnotations()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_63
    :goto_63
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/annotation/Annotation;

    .line 14
    instance-of v1, v0, Lorg/bson/codecs/pojo/annotations/BsonProperty;

    if-eqz v1, :cond_87

    .line 15
    check-cast v0, Lorg/bson/codecs/pojo/annotations/BsonProperty;

    .line 16
    invoke-interface {v0}, Lorg/bson/codecs/pojo/annotations/BsonProperty;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_63

    .line 17
    invoke-interface {v0}, Lorg/bson/codecs/pojo/annotations/BsonProperty;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/bson/codecs/pojo/PropertyModelBuilder;->writeName(Ljava/lang/String;)Lorg/bson/codecs/pojo/PropertyModelBuilder;

    goto :goto_63

    .line 18
    :cond_87
    instance-of v0, v0, Lorg/bson/codecs/pojo/annotations/BsonIgnore;

    if-eqz v0, :cond_63

    .line 19
    invoke-virtual {p2, v3}, Lorg/bson/codecs/pojo/PropertyModelBuilder;->writeName(Ljava/lang/String;)Lorg/bson/codecs/pojo/PropertyModelBuilder;

    goto :goto_63

    :cond_8f
    return-void
.end method

.method private static tryToExpandToGenericType(Ljava/lang/Class;Lorg/bson/codecs/pojo/PropertyModelBuilder;Ljava/lang/reflect/Type;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/bson/codecs/pojo/PropertyModelBuilder<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/bson/codecs/pojo/PropertyModelBuilder;->getTypeData()Lorg/bson/codecs/pojo/TypeData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/codecs/pojo/TypeData;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2
    invoke-static {p2, p0}, Lorg/bson/codecs/pojo/TypeData;->newInstance(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lorg/bson/codecs/pojo/TypeData;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/bson/codecs/pojo/PropertyModelBuilder;->typeData(Lorg/bson/codecs/pojo/TypeData;)Lorg/bson/codecs/pojo/PropertyModelBuilder;

    :cond_15
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
    invoke-virtual {p1}, Lorg/bson/codecs/pojo/ClassModelBuilder;->getAnnotations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/annotation/Annotation;

    .line 2
    invoke-direct {p0, p1, v1}, Lorg/bson/codecs/pojo/ConventionAnnotationImpl;->processClassAnnotation(Lorg/bson/codecs/pojo/ClassModelBuilder;Ljava/lang/annotation/Annotation;)V

    goto :goto_8

    .line 3
    :cond_18
    invoke-virtual {p1}, Lorg/bson/codecs/pojo/ClassModelBuilder;->getPropertyModelBuilders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bson/codecs/pojo/PropertyModelBuilder;

    .line 4
    invoke-direct {p0, p1, v1}, Lorg/bson/codecs/pojo/ConventionAnnotationImpl;->processPropertyAnnotations(Lorg/bson/codecs/pojo/ClassModelBuilder;Lorg/bson/codecs/pojo/PropertyModelBuilder;)V

    goto :goto_20

    .line 5
    :cond_30
    invoke-direct {p0, p1}, Lorg/bson/codecs/pojo/ConventionAnnotationImpl;->processCreatorAnnotation(Lorg/bson/codecs/pojo/ClassModelBuilder;)V

    .line 6
    invoke-direct {p0, p1}, Lorg/bson/codecs/pojo/ConventionAnnotationImpl;->cleanPropertyBuilders(Lorg/bson/codecs/pojo/ClassModelBuilder;)V

    return-void
.end method
