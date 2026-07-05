.class final enum Lorg/bson/util/AbstractCopyOnWriteMap$View$Type$1;
.super Lorg/bson/util/AbstractCopyOnWriteMap$View$Type;
.source "AbstractCopyOnWriteMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bson/util/AbstractCopyOnWriteMap$View$Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "STABLE"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/bson/util/AbstractCopyOnWriteMap$View$Type;-><init>(Ljava/lang/String;ILorg/bson/util/AbstractCopyOnWriteMap$1;)V

    return-void
.end method


# virtual methods
.method public final get(Lorg/bson/util/AbstractCopyOnWriteMap;)Lorg/bson/util/AbstractCopyOnWriteMap$View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "TK;TV;>;>(",
            "Lorg/bson/util/AbstractCopyOnWriteMap<",
            "TK;TV;TM;>;)",
            "Lorg/bson/util/AbstractCopyOnWriteMap$View<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lorg/bson/util/AbstractCopyOnWriteMap$Immutable;

    invoke-direct {v0, p1}, Lorg/bson/util/AbstractCopyOnWriteMap$Immutable;-><init>(Lorg/bson/util/AbstractCopyOnWriteMap;)V

    return-object v0
.end method
