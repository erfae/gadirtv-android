.class public final Lcom/google/ads/interactivemedia/v3/internal/ago;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/aeh;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/afc;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/adk;

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/afe;

.field private final d:Lcom/google/ads/interactivemedia/v3/internal/agd;

.field private final e:Lcom/google/ads/interactivemedia/v3/internal/aik;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/afc;Lcom/google/ads/interactivemedia/v3/internal/adk;Lcom/google/ads/interactivemedia/v3/internal/afe;Lcom/google/ads/interactivemedia/v3/internal/agd;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/aik;->a()Lcom/google/ads/interactivemedia/v3/internal/aik;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ago;->e:Lcom/google/ads/interactivemedia/v3/internal/aik;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ago;->a:Lcom/google/ads/interactivemedia/v3/internal/afc;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ago;->b:Lcom/google/ads/interactivemedia/v3/internal/adk;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ago;->c:Lcom/google/ads/interactivemedia/v3/internal/afe;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/ago;->d:Lcom/google/ads/interactivemedia/v3/internal/agd;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/internal/adr;Lcom/google/ads/interactivemedia/v3/internal/aim;)Lcom/google/ads/interactivemedia/v3/internal/aeg;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/ads/interactivemedia/v3/internal/adr;",
            "Lcom/google/ads/interactivemedia/v3/internal/aim<",
            "TT;>;)",
            "Lcom/google/ads/interactivemedia/v3/internal/aeg<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    .line 2
    invoke-virtual/range {p2 .. p2}, Lcom/google/ads/interactivemedia/v3/internal/aim;->a()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    .line 3
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    const/4 v12, 0x0

    if-nez v2, :cond_0

    return-object v12

    :cond_0
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ago;->a:Lcom/google/ads/interactivemedia/v3/internal/afc;

    move-object/from16 v3, p2

    .line 4
    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/afc;->a(Lcom/google/ads/interactivemedia/v3/internal/aim;)Lcom/google/ads/interactivemedia/v3/internal/afq;

    move-result-object v13

    new-instance v14, Lcom/google/ads/interactivemedia/v3/internal/agm;

    new-instance v15, Ljava/util/LinkedHashMap;

    .line 5
    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    .line 6
    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move-object v0, v13

    goto/16 :goto_d

    .line 7
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/google/ads/interactivemedia/v3/internal/aim;->b()Ljava/lang/reflect/Type;

    move-result-object v10

    move-object v9, v1

    move-object/from16 v16, v3

    :goto_0
    const-class v1, Ljava/lang/Object;

    if-eq v9, v1, :cond_1

    .line 8
    invoke-virtual {v9}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v8

    .line 9
    array-length v7, v8

    const/4 v6, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v7, :cond_16

    aget-object v4, v8, v5

    const/4 v3, 0x1

    .line 10
    invoke-virtual {v0, v4, v3}, Lcom/google/ads/interactivemedia/v3/internal/ago;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v1

    .line 11
    invoke-virtual {v0, v4, v6}, Lcom/google/ads/interactivemedia/v3/internal/ago;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v2

    if-nez v1, :cond_4

    if-nez v2, :cond_3

    move/from16 v28, v5

    move/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 p2, v9

    move-object/from16 v20, v13

    const/16 v30, 0x0

    move-object v13, v10

    goto/16 :goto_c

    :cond_3
    const/16 v17, 0x1

    goto :goto_2

    :cond_4
    move/from16 v17, v2

    :goto_2
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ago;->e:Lcom/google/ads/interactivemedia/v3/internal/aik;

    .line 12
    invoke-virtual {v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/aik;->a(Ljava/lang/reflect/AccessibleObject;)V

    .line 13
    invoke-virtual/range {v16 .. v16}, Lcom/google/ads/interactivemedia/v3/internal/aim;->b()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-static {v2, v9, v6}, Lcom/google/ads/interactivemedia/v3/internal/aen;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v18

    const-class v2, Lcom/google/ads/interactivemedia/v3/internal/aej;

    .line 14
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/aej;

    if-nez v2, :cond_b

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ago;->b:Lcom/google/ads/interactivemedia/v3/internal/adk;

    check-cast v2, Ljava/lang/Enum;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_a

    if-eq v2, v3, :cond_9

    const/4 v1, 0x2

    if-eq v2, v1, :cond_8

    const/4 v1, 0x3

    if-eq v2, v1, :cond_7

    const/4 v1, 0x4

    if-eq v2, v1, :cond_6

    const/4 v1, 0x5

    if-eq v2, v1, :cond_5

    .line 24
    throw v12

    :cond_5
    throw v12

    :cond_6
    throw v12

    :cond_7
    throw v12

    :cond_8
    throw v12

    :cond_9
    throw v12

    .line 15
    :cond_a
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_3

    .line 17
    :cond_b
    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/internal/aej;->a()Ljava/lang/String;

    move-result-object v6

    .line 18
    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/internal/aej;->b()[Ljava/lang/String;

    move-result-object v2

    .line 19
    array-length v12, v2

    if-nez v12, :cond_c

    .line 20
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :goto_3
    move/from16 v20, v1

    move-object v12, v2

    goto :goto_5

    :cond_c
    new-instance v3, Ljava/util/ArrayList;

    move/from16 v20, v1

    add-int/lit8 v1, v12, 0x1

    .line 21
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v12, :cond_d

    .line 23
    aget-object v6, v2, v1

    .line 24
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_d
    move-object v12, v3

    .line 25
    :goto_5
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v1, v20

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v6, :cond_14

    .line 26
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v21, v12

    move-object/from16 v12, v20

    check-cast v12, Ljava/lang/String;

    if-eqz v3, :cond_e

    const/16 v20, 0x0

    goto :goto_7

    :cond_e
    const/16 v20, 0x1

    :goto_7
    and-int v1, v20, v1

    move-object/from16 v20, v9

    .line 27
    invoke-static/range {v18 .. v18}, Lcom/google/ads/interactivemedia/v3/internal/aim;->a(Ljava/lang/reflect/Type;)Lcom/google/ads/interactivemedia/v3/internal/aim;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/ads/interactivemedia/v3/internal/aim;->a()Ljava/lang/Class;

    move-result-object v22

    .line 28
    invoke-static/range {v22 .. v22}, Lcom/google/ads/interactivemedia/v3/internal/afr;->a(Ljava/lang/reflect/Type;)Z

    move-result v22

    move-object/from16 v23, v2

    const-class v2, Lcom/google/ads/interactivemedia/v3/internal/aei;

    .line 29
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/aei;

    if-eqz v2, :cond_f

    move/from16 v24, v3

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ago;->a:Lcom/google/ads/interactivemedia/v3/internal/afc;

    .line 30
    invoke-static {v3, v11, v9, v2}, Lcom/google/ads/interactivemedia/v3/internal/agd;->a(Lcom/google/ads/interactivemedia/v3/internal/afc;Lcom/google/ads/interactivemedia/v3/internal/adr;Lcom/google/ads/interactivemedia/v3/internal/aim;Lcom/google/ads/interactivemedia/v3/internal/aei;)Lcom/google/ads/interactivemedia/v3/internal/aeg;

    move-result-object v2

    goto :goto_8

    :cond_f
    move/from16 v24, v3

    const/4 v2, 0x0

    :goto_8
    if-eqz v2, :cond_10

    const/16 v25, 0x1

    goto :goto_9

    :cond_10
    const/16 v25, 0x0

    :goto_9
    if-nez v2, :cond_11

    .line 31
    invoke-virtual {v11, v9}, Lcom/google/ads/interactivemedia/v3/internal/adr;->a(Lcom/google/ads/interactivemedia/v3/internal/aim;)Lcom/google/ads/interactivemedia/v3/internal/aeg;

    move-result-object v2

    :cond_11
    move-object/from16 v26, v2

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/agn;

    const/4 v2, 0x1

    if-eq v2, v1, :cond_12

    move/from16 v27, v1

    const/16 v19, 0x0

    goto :goto_a

    :cond_12
    move/from16 v27, v1

    const/16 v19, 0x1

    :goto_a
    move-object v1, v3

    move-object/from16 v0, v23

    const/16 v23, 0x1

    move-object v2, v12

    move-object v11, v3

    move/from16 v23, v24

    const/16 v24, 0x1

    move/from16 v3, v19

    move-object/from16 v19, v4

    move/from16 v4, v17

    move/from16 v28, v5

    move-object/from16 v5, v19

    move/from16 v29, v6

    const/16 v30, 0x0

    move/from16 v6, v25

    move/from16 v25, v7

    move-object/from16 v7, v26

    move-object/from16 v26, v8

    move-object/from16 v8, p1

    move-object/from16 p2, v20

    move-object/from16 v20, v13

    move-object v13, v10

    move/from16 v10, v22

    .line 32
    invoke-direct/range {v1 .. v10}, Lcom/google/ads/interactivemedia/v3/internal/agn;-><init>(Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLcom/google/ads/interactivemedia/v3/internal/aeg;Lcom/google/ads/interactivemedia/v3/internal/adr;Lcom/google/ads/interactivemedia/v3/internal/aim;Z)V

    .line 33
    invoke-interface {v15, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/agn;

    if-nez v0, :cond_13

    goto :goto_b

    :cond_13
    move-object v2, v0

    :goto_b
    add-int/lit8 v3, v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v9, p2

    move-object v10, v13

    move-object/from16 v4, v19

    move-object/from16 v13, v20

    move-object/from16 v12, v21

    move/from16 v7, v25

    move-object/from16 v8, v26

    move/from16 v1, v27

    move/from16 v5, v28

    move/from16 v6, v29

    goto/16 :goto_6

    :cond_14
    move-object v0, v2

    move/from16 v28, v5

    move/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 p2, v9

    move-object/from16 v20, v13

    const/16 v30, 0x0

    move-object v13, v10

    if-nez v0, :cond_15

    :goto_c
    add-int/lit8 v5, v28, 0x1

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v9, p2

    move-object v10, v13

    move-object/from16 v13, v20

    move/from16 v7, v25

    move-object/from16 v8, v26

    const/4 v6, 0x0

    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " declares multiple JSON fields named "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/agn;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16
    move-object/from16 p2, v9

    move-object/from16 v20, v13

    move-object v13, v10

    .line 34
    invoke-virtual/range {v16 .. v16}, Lcom/google/ads/interactivemedia/v3/internal/aim;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-static {v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/aen;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/aim;->a(Ljava/lang/reflect/Type;)Lcom/google/ads/interactivemedia/v3/internal/aim;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/ads/interactivemedia/v3/internal/aim;->a()Ljava/lang/Class;

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v13, v20

    const/4 v12, 0x0

    goto/16 :goto_0

    .line 35
    :goto_d
    invoke-direct {v14, v0, v15}, Lcom/google/ads/interactivemedia/v3/internal/agm;-><init>(Lcom/google/ads/interactivemedia/v3/internal/afq;Ljava/util/Map;)V

    return-object v14
.end method

.method public final a(Ljava/lang/reflect/Field;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ago;->c:Lcom/google/ads/interactivemedia/v3/internal/afe;

    .line 37
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/ads/interactivemedia/v3/internal/afe;->a(Ljava/lang/Class;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/afe;->a(Ljava/lang/reflect/Field;Z)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
