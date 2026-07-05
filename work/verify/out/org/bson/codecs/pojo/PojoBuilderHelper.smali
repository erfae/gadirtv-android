.class final Lorg/bson/codecs/pojo/PojoBuilderHelper;
.super Ljava/lang/Object;
.source "PojoBuilderHelper.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cachePropertyTypeData(Lorg/bson/codecs/pojo/PropertyMetadata;Ljava/util/Map;Lorg/bson/codecs/pojo/TypeData;Ljava/util/List;Ljava/lang/reflect/Type;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/bson/codecs/pojo/PropertyMetadata<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/bson/codecs/pojo/TypeParameterMap;",
            ">;",
            "Lorg/bson/codecs/pojo/TypeData<",
            "TS;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p3, p4}, Lorg/bson/codecs/pojo/PojoBuilderHelper;->getTypeParameterMap(Ljava/util/List;Ljava/lang/reflect/Type;)Lorg/bson/codecs/pojo/TypeParameterMap;

    move-result-object p3

    .line 2
    invoke-virtual {p0}, Lorg/bson/codecs/pojo/PropertyMetadata;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p1, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p3, p2}, Lorg/bson/codecs/pojo/PropertyMetadata;->typeParameterInfo(Lorg/bson/codecs/pojo/TypeParameterMap;Lorg/bson/codecs/pojo/TypeData;)Lorg/bson/codecs/pojo/PropertyMetadata;

    return-void
.end method

.method public static configureClassModelBuilder(Lorg/bson/codecs/pojo/ClassModelBuilder;Ljava/lang/Class;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/bson/codecs/pojo/ClassModelBuilder<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "clazz"

    .line 1
    invoke-static {v2, v1}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v0, v2}, Lorg/bson/codecs/pojo/ClassModelBuilder;->type(Ljava/lang/Class;)Lorg/bson/codecs/pojo/ClassModelBuilder;

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 4
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    .line 6
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    move-object v11, v1

    const/16 v16, 0x0

    .line 7
    :goto_2a
    invoke-virtual {v11}, Ljava/lang/Class;->isEnum()Z

    move-result v4

    const/16 v17, 0x0

    if-nez v4, :cond_1df

    invoke-virtual {v11}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_1df

    .line 8
    invoke-virtual {v11}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 9
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-virtual {v11}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v4

    array-length v6, v4

    const/4 v7, 0x0

    :goto_4e
    if-ge v7, v6, :cond_5c

    aget-object v8, v4, v7

    .line 11
    invoke-interface {v8}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_4e

    .line 12
    :cond_5c
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 13
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-virtual {v11}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    :goto_6c
    if-ge v9, v8, :cond_c7

    aget-object v15, v7, v9

    .line 15
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v18

    if-eqz v18, :cond_c0

    invoke-virtual {v15}, Ljava/lang/reflect/Method;->isBridge()Z

    move-result v18

    if-nez v18, :cond_c0

    .line 16
    invoke-static {v15}, Lorg/bson/codecs/pojo/PropertyReflectionUtils;->isGetter(Ljava/lang/reflect/Method;)Z

    move-result v18

    if-eqz v18, :cond_8a

    .line 17
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c0

    .line 18
    :cond_8a
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v19, v7

    const-string v7, "set"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b9

    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, 0x3

    if-le v5, v7, :cond_b9

    .line 19
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_b9

    .line 20
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v5

    goto :goto_ba

    :cond_b9
    const/4 v5, 0x0

    :goto_ba
    if-eqz v5, :cond_c2

    .line 21
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c2

    :cond_c0
    :goto_c0
    move-object/from16 v19, v7

    :cond_c2
    :goto_c2
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v7, v19

    goto :goto_6c

    .line 22
    :cond_c7
    new-instance v15, Lorg/bson/codecs/pojo/PropertyReflectionUtils$PropertyMethods;

    invoke-direct {v15, v6, v4}, Lorg/bson/codecs/pojo/PropertyReflectionUtils$PropertyMethods;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 23
    invoke-virtual {v15}, Lorg/bson/codecs/pojo/PropertyReflectionUtils$PropertyMethods;->getSetterMethods()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_d4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_120

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Ljava/lang/reflect/Method;

    .line 24
    invoke-static {v9}, Lorg/bson/codecs/pojo/PropertyReflectionUtils;->toPropertyName(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v4

    .line 25
    invoke-virtual {v3, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-static {v9}, Lorg/bson/codecs/pojo/TypeData;->newInstance(Ljava/lang/reflect/Method;)Lorg/bson/codecs/pojo/TypeData;

    move-result-object v7

    .line 27
    invoke-static {v9}, Lorg/bson/codecs/pojo/PojoBuilderHelper;->getGenericType(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Type;

    move-result-object v19

    move-object v5, v13

    move-object v6, v14

    move-object v8, v12

    move-object v1, v9

    move-object/from16 v9, v16

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    move-object/from16 v11, v19

    .line 28
    invoke-static/range {v4 .. v11}, Lorg/bson/codecs/pojo/PojoBuilderHelper;->getOrCreateMethodPropertyMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/bson/codecs/pojo/TypeData;Ljava/util/Map;Lorg/bson/codecs/pojo/TypeData;Ljava/util/List;Ljava/lang/reflect/Type;)Lorg/bson/codecs/pojo/PropertyMetadata;

    move-result-object v4

    .line 29
    invoke-virtual {v4}, Lorg/bson/codecs/pojo/PropertyMetadata;->getSetter()Ljava/lang/reflect/Method;

    move-result-object v5

    if-nez v5, :cond_119

    .line 30
    invoke-virtual {v4, v1}, Lorg/bson/codecs/pojo/PropertyMetadata;->setSetter(Ljava/lang/reflect/Method;)V

    .line 31
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    array-length v5, v1

    const/4 v6, 0x0

    :goto_10f
    if-ge v6, v5, :cond_119

    aget-object v7, v1, v6

    .line 32
    invoke-virtual {v4, v7}, Lorg/bson/codecs/pojo/PropertyMetadata;->addWriteAnnotation(Ljava/lang/annotation/Annotation;)Lorg/bson/codecs/pojo/PropertyMetadata;

    add-int/lit8 v6, v6, 0x1

    goto :goto_10f

    :cond_119
    move-object/from16 v1, p1

    move-object/from16 v10, v20

    move-object/from16 v11, v21

    goto :goto_d4

    :cond_120
    move-object/from16 v20, v10

    move-object/from16 v21, v11

    .line 33
    invoke-virtual {v15}, Lorg/bson/codecs/pojo/PropertyReflectionUtils$PropertyMethods;->getGetterMethods()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12c
    :goto_12c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Ljava/lang/reflect/Method;

    .line 34
    invoke-static {v15}, Lorg/bson/codecs/pojo/PropertyReflectionUtils;->toPropertyName(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v4

    .line 35
    invoke-virtual {v3, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-virtual {v14, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bson/codecs/pojo/PropertyMetadata;

    if-eqz v5, :cond_14f

    .line 37
    invoke-virtual {v5}, Lorg/bson/codecs/pojo/PropertyMetadata;->getGetter()Ljava/lang/reflect/Method;

    move-result-object v5

    if-eqz v5, :cond_14f

    goto :goto_12c

    .line 38
    :cond_14f
    invoke-static {v15}, Lorg/bson/codecs/pojo/TypeData;->newInstance(Ljava/lang/reflect/Method;)Lorg/bson/codecs/pojo/TypeData;

    move-result-object v7

    .line 39
    invoke-static {v15}, Lorg/bson/codecs/pojo/PojoBuilderHelper;->getGenericType(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Type;

    move-result-object v11

    move-object v5, v13

    move-object v6, v14

    move-object v8, v12

    move-object/from16 v9, v16

    move-object/from16 v10, v20

    .line 40
    invoke-static/range {v4 .. v11}, Lorg/bson/codecs/pojo/PojoBuilderHelper;->getOrCreateMethodPropertyMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/bson/codecs/pojo/TypeData;Ljava/util/Map;Lorg/bson/codecs/pojo/TypeData;Ljava/util/List;Ljava/lang/reflect/Type;)Lorg/bson/codecs/pojo/PropertyMetadata;

    move-result-object v4

    .line 41
    invoke-virtual {v4}, Lorg/bson/codecs/pojo/PropertyMetadata;->getGetter()Ljava/lang/reflect/Method;

    move-result-object v5

    if-nez v5, :cond_12c

    .line 42
    invoke-virtual {v4, v15}, Lorg/bson/codecs/pojo/PropertyMetadata;->setGetter(Ljava/lang/reflect/Method;)V

    .line 43
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_171
    if-ge v7, v6, :cond_12c

    aget-object v8, v5, v7

    .line 44
    invoke-virtual {v4, v8}, Lorg/bson/codecs/pojo/PropertyMetadata;->addReadAnnotation(Ljava/lang/annotation/Annotation;)Lorg/bson/codecs/pojo/PropertyMetadata;

    add-int/lit8 v7, v7, 0x1

    goto :goto_171

    .line 45
    :cond_17b
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v15, v1

    const/4 v11, 0x0

    :goto_181
    if-ge v11, v15, :cond_1cd

    aget-object v10, v1, v11

    .line 46
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 48
    invoke-static {v10}, Lorg/bson/codecs/pojo/TypeData;->newInstance(Ljava/lang/reflect/Field;)Lorg/bson/codecs/pojo/TypeData;

    move-result-object v7

    .line 49
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v18

    move-object v5, v13

    move-object v6, v14

    move-object v8, v12

    move-object/from16 v9, v16

    move-object/from16 v19, v1

    move-object v1, v10

    move-object/from16 v10, v20

    move/from16 v22, v11

    move-object/from16 v11, v18

    .line 50
    invoke-static/range {v4 .. v11}, Lorg/bson/codecs/pojo/PojoBuilderHelper;->getOrCreateFieldPropertyMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/bson/codecs/pojo/TypeData;Ljava/util/Map;Lorg/bson/codecs/pojo/TypeData;Ljava/util/List;Ljava/lang/reflect/Type;)Lorg/bson/codecs/pojo/PropertyMetadata;

    move-result-object v4

    if-eqz v4, :cond_1c8

    .line 51
    invoke-virtual {v4}, Lorg/bson/codecs/pojo/PropertyMetadata;->getField()Ljava/lang/reflect/Field;

    move-result-object v5

    if-nez v5, :cond_1c8

    .line 52
    invoke-virtual {v4, v1}, Lorg/bson/codecs/pojo/PropertyMetadata;->field(Ljava/lang/reflect/Field;)Lorg/bson/codecs/pojo/PropertyMetadata;

    .line 53
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    array-length v5, v1

    const/4 v6, 0x0

    :goto_1bb
    if-ge v6, v5, :cond_1c8

    aget-object v7, v1, v6

    .line 54
    invoke-virtual {v4, v7}, Lorg/bson/codecs/pojo/PropertyMetadata;->addReadAnnotation(Ljava/lang/annotation/Annotation;)Lorg/bson/codecs/pojo/PropertyMetadata;

    .line 55
    invoke-virtual {v4, v7}, Lorg/bson/codecs/pojo/PropertyMetadata;->addWriteAnnotation(Ljava/lang/annotation/Annotation;)Lorg/bson/codecs/pojo/PropertyMetadata;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1bb

    :cond_1c8
    add-int/lit8 v11, v22, 0x1

    move-object/from16 v1, v19

    goto :goto_181

    .line 56
    :cond_1cd
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    move-object/from16 v4, v21

    invoke-static {v1, v4}, Lorg/bson/codecs/pojo/TypeData;->newInstance(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lorg/bson/codecs/pojo/TypeData;

    move-result-object v16

    .line 57
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v11

    move-object/from16 v1, p1

    goto/16 :goto_2a

    :cond_1df
    move-object v4, v11

    .line 58
    invoke-virtual {v4}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_1f1

    .line 59
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 60
    :cond_1f1
    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1f5
    :goto_1f5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 61
    invoke-virtual {v14, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bson/codecs/pojo/PropertyMetadata;

    .line 62
    invoke-virtual {v3}, Lorg/bson/codecs/pojo/PropertyMetadata;->isSerializable()Z

    move-result v4

    if-nez v4, :cond_213

    invoke-virtual {v3}, Lorg/bson/codecs/pojo/PropertyMetadata;->isDeserializable()Z

    move-result v4

    if-eqz v4, :cond_1f5

    .line 63
    :cond_213
    invoke-static {v3}, Lorg/bson/codecs/pojo/PojoBuilderHelper;->createPropertyModelBuilder(Lorg/bson/codecs/pojo/PropertyMetadata;)Lorg/bson/codecs/pojo/PropertyModelBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/bson/codecs/pojo/ClassModelBuilder;->addProperty(Lorg/bson/codecs/pojo/PropertyModelBuilder;)Lorg/bson/codecs/pojo/ClassModelBuilder;

    goto :goto_1f5

    .line 64
    :cond_21b
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 65
    invoke-virtual {v0, v2}, Lorg/bson/codecs/pojo/ClassModelBuilder;->annotations(Ljava/util/List;)Lorg/bson/codecs/pojo/ClassModelBuilder;

    .line 66
    invoke-virtual {v0, v12}, Lorg/bson/codecs/pojo/ClassModelBuilder;->propertyNameToTypeParameterMap(Ljava/util/Map;)Lorg/bson/codecs/pojo/ClassModelBuilder;

    .line 67
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v15, 0x0

    :goto_22b
    if-ge v3, v2, :cond_254

    aget-object v4, v1, v3

    .line 68
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_250

    .line 69
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-nez v5, :cond_24a

    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v5

    if-eqz v5, :cond_250

    :cond_24a
    const/4 v5, 0x1

    .line 70
    invoke-virtual {v4, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object v15, v4

    goto :goto_251

    :cond_250
    const/4 v5, 0x1

    :goto_251
    add-int/lit8 v3, v3, 0x1

    goto :goto_22b

    .line 71
    :cond_254
    new-instance v1, Lorg/bson/codecs/pojo/InstanceCreatorFactoryImpl;

    new-instance v2, Lorg/bson/codecs/pojo/CreatorExecutable;

    move-object/from16 v3, p1

    invoke-direct {v2, v3, v15}, Lorg/bson/codecs/pojo/CreatorExecutable;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;)V

    invoke-direct {v1, v2}, Lorg/bson/codecs/pojo/InstanceCreatorFactoryImpl;-><init>(Lorg/bson/codecs/pojo/CreatorExecutable;)V

    invoke-virtual {v0, v1}, Lorg/bson/codecs/pojo/ClassModelBuilder;->instanceCreatorFactory(Lorg/bson/codecs/pojo/InstanceCreatorFactory;)Lorg/bson/codecs/pojo/ClassModelBuilder;

    return-void
.end method

.method public static createPropertyModelBuilder(Lorg/bson/codecs/pojo/PropertyMetadata;)Lorg/bson/codecs/pojo/PropertyModelBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/bson/codecs/pojo/PropertyMetadata<",
            "TT;>;)",
            "Lorg/bson/codecs/pojo/PropertyModelBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/bson/codecs/pojo/PropertyModel;->builder()Lorg/bson/codecs/pojo/PropertyModelBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lorg/bson/codecs/pojo/PropertyMetadata;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bson/codecs/pojo/PropertyModelBuilder;->propertyName(Ljava/lang/String;)Lorg/bson/codecs/pojo/PropertyModelBuilder;

    .line 3
    invoke-virtual {p0}, Lorg/bson/codecs/pojo/PropertyMetadata;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bson/codecs/pojo/PropertyModelBuilder;->readName(Ljava/lang/String;)Lorg/bson/codecs/pojo/PropertyModelBuilder;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lorg/bson/codecs/pojo/PropertyMetadata;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bson/codecs/pojo/PropertyModelBuilder;->writeName(Ljava/lang/String;)Lorg/bson/codecs/pojo/PropertyModelBuilder;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lorg/bson/codecs/pojo/PropertyMetadata;->getTypeData()Lorg/bson/codecs/pojo/TypeData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bson/codecs/pojo/PropertyModelBuilder;->typeData(Lorg/bson/codecs/pojo/TypeData;)Lorg/bson/codecs/pojo/PropertyModelBuilder;

    .line 6
    invoke-virtual {p0}, Lorg/bson/codecs/pojo/PropertyMetadata;->getReadAnnotations()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bson/codecs/pojo/PropertyModelBuilder;->readAnnotations(Ljava/util/List;)Lorg/bson/codecs/pojo/PropertyModelBuilder;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lorg/bson/codecs/pojo/PropertyMetadata;->getWriteAnnotations()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bson/codecs/pojo/PropertyModelBuilder;->writeAnnotations(Ljava/util/List;)Lorg/bson/codecs/pojo/PropertyModelBuilder;

    move-result-object v0

    new-instance v1, Lorg/bson/codecs/pojo/PropertyModelSerializationImpl;

    invoke-direct {v1}, Lorg/bson/codecs/pojo/PropertyModelSerializationImpl;-><init>()V

    .line 8
    invoke-virtual {v0, v1}, Lorg/bson/codecs/pojo/PropertyModelBuilder;->propertySerialization(Lorg/bson/codecs/pojo/PropertySerialization;)Lorg/bson/codecs/pojo/PropertyModelBuilder;

    move-result-object v0

    new-instance v1, Lorg/bson/codecs/pojo/PropertyAccessorImpl;

    invoke-direct {v1, p0}, Lorg/bson/codecs/pojo/PropertyAccessorImpl;-><init>(Lorg/bson/codecs/pojo/PropertyMetadata;)V

    .line 9
    invoke-virtual {v0, v1}, Lorg/bson/codecs/pojo/PropertyModelBuilder;->propertyAccessor(Lorg/bson/codecs/pojo/PropertyAccessor;)Lorg/bson/codecs/pojo/PropertyModelBuilder;

    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lorg/bson/codecs/pojo/PropertyMetadata;->getError()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bson/codecs/pojo/PropertyModelBuilder;->setError(Ljava/lang/String;)Lorg/bson/codecs/pojo/PropertyModelBuilder;

    .line 11
    invoke-virtual {p0}, Lorg/bson/codecs/pojo/PropertyMetadata;->getTypeParameters()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_54

    .line 12
    invoke-static {v0, p0}, Lorg/bson/codecs/pojo/PojoBuilderHelper;->specializePropertyModelBuilder(Lorg/bson/codecs/pojo/PropertyModelBuilder;Lorg/bson/codecs/pojo/PropertyMetadata;)V

    :cond_54
    return-object v0
.end method

.method private static getGenericType(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Type;
    .registers 2

    invoke-static {p0}, Lorg/bson/codecs/pojo/PropertyReflectionUtils;->isGetter(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object p0

    goto :goto_12

    :cond_b
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    :goto_12
    return-object p0
.end method

.method private static getOrCreateFieldPropertyMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/bson/codecs/pojo/TypeData;Ljava/util/Map;Lorg/bson/codecs/pojo/TypeData;Ljava/util/List;Ljava/lang/reflect/Type;)Lorg/bson/codecs/pojo/PropertyMetadata;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/bson/codecs/pojo/PropertyMetadata<",
            "*>;>;",
            "Lorg/bson/codecs/pojo/TypeData<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/bson/codecs/pojo/TypeParameterMap;",
            ">;",
            "Lorg/bson/codecs/pojo/TypeData<",
            "TS;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lorg/bson/codecs/pojo/PropertyMetadata<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lorg/bson/codecs/pojo/PojoBuilderHelper;->getOrCreatePropertyMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/bson/codecs/pojo/TypeData;)Lorg/bson/codecs/pojo/PropertyMetadata;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lorg/bson/codecs/pojo/PropertyMetadata;->getTypeData()Lorg/bson/codecs/pojo/TypeData;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bson/codecs/pojo/TypeData;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p3}, Lorg/bson/codecs/pojo/TypeData;->getType()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_18

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_18
    invoke-static {p0, p4, p5, p6, p7}, Lorg/bson/codecs/pojo/PojoBuilderHelper;->cachePropertyTypeData(Lorg/bson/codecs/pojo/PropertyMetadata;Ljava/util/Map;Lorg/bson/codecs/pojo/TypeData;Ljava/util/List;Ljava/lang/reflect/Type;)V

    return-object p0
.end method

.method private static getOrCreateMethodPropertyMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/bson/codecs/pojo/TypeData;Ljava/util/Map;Lorg/bson/codecs/pojo/TypeData;Ljava/util/List;Ljava/lang/reflect/Type;)Lorg/bson/codecs/pojo/PropertyMetadata;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/bson/codecs/pojo/PropertyMetadata<",
            "*>;>;",
            "Lorg/bson/codecs/pojo/TypeData<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/bson/codecs/pojo/TypeParameterMap;",
            ">;",
            "Lorg/bson/codecs/pojo/TypeData<",
            "TS;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lorg/bson/codecs/pojo/PropertyMetadata<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lorg/bson/codecs/pojo/PojoBuilderHelper;->getOrCreatePropertyMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/bson/codecs/pojo/TypeData;)Lorg/bson/codecs/pojo/PropertyMetadata;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Lorg/bson/codecs/pojo/PropertyMetadata;->getTypeData()Lorg/bson/codecs/pojo/TypeData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/codecs/pojo/TypeData;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3}, Lorg/bson/codecs/pojo/TypeData;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bson/codecs/pojo/PojoBuilderHelper;->isAssignableClass(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_32

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    .line 3
    invoke-virtual {p2}, Lorg/bson/codecs/pojo/PropertyMetadata;->getTypeData()Lorg/bson/codecs/pojo/TypeData;

    move-result-object p1

    aput-object p1, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const-string p0, "Property \'%s\' in %s, has differing data types: %s and %s."

    .line 4
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/bson/codecs/pojo/PropertyMetadata;->setError(Ljava/lang/String;)V

    .line 5
    :cond_32
    invoke-static {p2, p4, p5, p6, p7}, Lorg/bson/codecs/pojo/PojoBuilderHelper;->cachePropertyTypeData(Lorg/bson/codecs/pojo/PropertyMetadata;Ljava/util/Map;Lorg/bson/codecs/pojo/TypeData;Ljava/util/List;Ljava/lang/reflect/Type;)V

    return-object p2
.end method

.method private static getOrCreatePropertyMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/bson/codecs/pojo/TypeData;)Lorg/bson/codecs/pojo/PropertyMetadata;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/bson/codecs/pojo/PropertyMetadata<",
            "*>;>;",
            "Lorg/bson/codecs/pojo/TypeData<",
            "TT;>;)",
            "Lorg/bson/codecs/pojo/PropertyMetadata<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bson/codecs/pojo/PropertyMetadata;

    if-nez v0, :cond_10

    .line 2
    new-instance v0, Lorg/bson/codecs/pojo/PropertyMetadata;

    invoke-direct {v0, p0, p1, p3}, Lorg/bson/codecs/pojo/PropertyMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/bson/codecs/pojo/TypeData;)V

    .line 3
    invoke-interface {p2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    return-object v0
.end method

.method private static getTypeParameterMap(Ljava/util/List;Ljava/lang/reflect/Type;)Lorg/bson/codecs/pojo/TypeParameterMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lorg/bson/codecs/pojo/TypeParameterMap;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2
    new-instance v1, Lorg/bson/codecs/pojo/TypeParameterMap$Builder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/bson/codecs/pojo/TypeParameterMap$Builder;-><init>(Lorg/bson/codecs/pojo/TypeParameterMap$1;)V

    const/4 v2, -0x1

    if-eq v0, v2, :cond_15

    .line 3
    invoke-virtual {v1, v0}, Lorg/bson/codecs/pojo/TypeParameterMap$Builder;->addIndex(I)Lorg/bson/codecs/pojo/TypeParameterMap$Builder;

    goto :goto_39

    .line 4
    :cond_15
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_39

    .line 5
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    const/4 v0, 0x0

    .line 6
    :goto_1c
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_39

    .line 7
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v2, :cond_36

    .line 8
    invoke-virtual {v1, v0, v3}, Lorg/bson/codecs/pojo/TypeParameterMap$Builder;->addIndex(II)Lorg/bson/codecs/pojo/TypeParameterMap$Builder;

    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 9
    :cond_39
    :goto_39
    invoke-virtual {v1}, Lorg/bson/codecs/pojo/TypeParameterMap$Builder;->build()Lorg/bson/codecs/pojo/TypeParameterMap;

    move-result-object p0

    return-object p0
.end method

.method private static isAssignableClass(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method private static specializePropertyModelBuilder(Lorg/bson/codecs/pojo/PropertyModelBuilder;Lorg/bson/codecs/pojo/PropertyMetadata;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/bson/codecs/pojo/PropertyModelBuilder<",
            "TV;>;",
            "Lorg/bson/codecs/pojo/PropertyMetadata<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/bson/codecs/pojo/PropertyMetadata;->getTypeParameterMap()Lorg/bson/codecs/pojo/TypeParameterMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/codecs/pojo/TypeParameterMap;->hasTypeParameters()Z

    move-result v0

    if-eqz v0, :cond_9f

    invoke-virtual {p1}, Lorg/bson/codecs/pojo/PropertyMetadata;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9f

    .line 2
    invoke-virtual {p1}, Lorg/bson/codecs/pojo/PropertyMetadata;->getTypeParameterMap()Lorg/bson/codecs/pojo/TypeParameterMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/codecs/pojo/TypeParameterMap;->getPropertyToClassParamIndexMap()Ljava/util/Map;

    move-result-object v0

    const/4 v1, -0x1

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_38

    .line 4
    invoke-virtual {p1}, Lorg/bson/codecs/pojo/PropertyMetadata;->getTypeParameters()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bson/codecs/pojo/TypeData;

    goto :goto_9c

    .line 5
    :cond_38
    invoke-virtual {p0}, Lorg/bson/codecs/pojo/PropertyModelBuilder;->getTypeData()Lorg/bson/codecs/pojo/TypeData;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bson/codecs/pojo/TypeData;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/bson/codecs/pojo/TypeData;->builder(Ljava/lang/Class;)Lorg/bson/codecs/pojo/TypeData$Builder;

    move-result-object v1

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/bson/codecs/pojo/PropertyModelBuilder;->getTypeData()Lorg/bson/codecs/pojo/TypeData;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bson/codecs/pojo/TypeData;->getTypeParameters()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x0

    .line 7
    :goto_52
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_95

    .line 8
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_60
    :goto_60
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_92

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_60

    .line 10
    invoke-virtual {p1}, Lorg/bson/codecs/pojo/PropertyMetadata;->getTypeParameters()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_60

    :cond_92
    add-int/lit8 v3, v3, 0x1

    goto :goto_52

    .line 11
    :cond_95
    invoke-virtual {v1, v2}, Lorg/bson/codecs/pojo/TypeData$Builder;->addTypeParameters(Ljava/util/List;)Lorg/bson/codecs/pojo/TypeData$Builder;

    .line 12
    invoke-virtual {v1}, Lorg/bson/codecs/pojo/TypeData$Builder;->build()Lorg/bson/codecs/pojo/TypeData;

    move-result-object p1

    .line 13
    :goto_9c
    invoke-virtual {p0, p1}, Lorg/bson/codecs/pojo/PropertyModelBuilder;->typeData(Lorg/bson/codecs/pojo/TypeData;)Lorg/bson/codecs/pojo/PropertyModelBuilder;

    :cond_9f
    return-void
.end method

.method public static stateNotNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TV;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_3

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "%s cannot be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
