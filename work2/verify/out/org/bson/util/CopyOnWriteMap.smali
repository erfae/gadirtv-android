.class abstract Lorg/bson/util/CopyOnWriteMap;
.super Lorg/bson/util/AbstractCopyOnWriteMap;
.source "CopyOnWriteMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bson/util/CopyOnWriteMap$Linked;,
        Lorg/bson/util/CopyOnWriteMap$Hash;,
        Lorg/bson/util/CopyOnWriteMap$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/bson/util/AbstractCopyOnWriteMap<",
        "TK;TV;",
        "Ljava/util/Map<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6e209c6cd39d23fdL


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lorg/bson/util/AbstractCopyOnWriteMap$View$Type;->LIVE:Lorg/bson/util/AbstractCopyOnWriteMap$View$Type;

    .line 2
    invoke-direct {p0, v0, v1}, Lorg/bson/util/AbstractCopyOnWriteMap;-><init>(Ljava/util/Map;Lorg/bson/util/AbstractCopyOnWriteMap$View$Type;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Lorg/bson/util/AbstractCopyOnWriteMap$View$Type;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;",
            "Lorg/bson/util/AbstractCopyOnWriteMap$View$Type;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/bson/util/AbstractCopyOnWriteMap;-><init>(Ljava/util/Map;Lorg/bson/util/AbstractCopyOnWriteMap$View$Type;)V

    return-void
.end method

.method public static builder()Lorg/bson/util/CopyOnWriteMap$Builder;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/bson/util/CopyOnWriteMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lorg/bson/util/CopyOnWriteMap$Builder;

    invoke-direct {v0}, Lorg/bson/util/CopyOnWriteMap$Builder;-><init>()V

    return-object v0
.end method

.method public static newHashMap()Lorg/bson/util/CopyOnWriteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/bson/util/CopyOnWriteMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/bson/util/CopyOnWriteMap;->builder()Lorg/bson/util/CopyOnWriteMap$Builder;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/bson/util/CopyOnWriteMap$Builder;->newHashMap()Lorg/bson/util/CopyOnWriteMap;

    move-result-object v0

    return-object v0
.end method

.method public static newHashMap(Ljava/util/Map;)Lorg/bson/util/CopyOnWriteMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Lorg/bson/util/CopyOnWriteMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3
    invoke-static {}, Lorg/bson/util/CopyOnWriteMap;->builder()Lorg/bson/util/CopyOnWriteMap$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p0}, Lorg/bson/util/CopyOnWriteMap$Builder;->addAll(Ljava/util/Map;)Lorg/bson/util/CopyOnWriteMap$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bson/util/CopyOnWriteMap$Builder;->newHashMap()Lorg/bson/util/CopyOnWriteMap;

    move-result-object p0

    return-object p0
.end method

.method public static newLinkedMap()Lorg/bson/util/CopyOnWriteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/bson/util/CopyOnWriteMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/bson/util/CopyOnWriteMap;->builder()Lorg/bson/util/CopyOnWriteMap$Builder;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/bson/util/CopyOnWriteMap$Builder;->newLinkedMap()Lorg/bson/util/CopyOnWriteMap;

    move-result-object v0

    return-object v0
.end method

.method public static newLinkedMap(Ljava/util/Map;)Lorg/bson/util/CopyOnWriteMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Lorg/bson/util/CopyOnWriteMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3
    invoke-static {}, Lorg/bson/util/CopyOnWriteMap;->builder()Lorg/bson/util/CopyOnWriteMap$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p0}, Lorg/bson/util/CopyOnWriteMap$Builder;->addAll(Ljava/util/Map;)Lorg/bson/util/CopyOnWriteMap$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bson/util/CopyOnWriteMap$Builder;->newLinkedMap()Lorg/bson/util/CopyOnWriteMap;

    move-result-object p0

    return-object p0
.end method
