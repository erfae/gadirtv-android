.class public Lorg/bson/LazyBSONCallback;
.super Lorg/bson/EmptyBSONCallback;
.source "LazyBSONCallback.java"


# instance fields
.field private root:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/bson/EmptyBSONCallback;-><init>()V

    return-void
.end method

.method private getRoot()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/bson/LazyBSONCallback;->root:Ljava/lang/Object;

    return-object v0
.end method

.method private setRoot(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lorg/bson/LazyBSONCallback;->root:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public createArray([BI)Ljava/util/List;
    .registers 4

    new-instance v0, Lorg/bson/LazyBSONList;

    invoke-direct {v0, p1, p2, p0}, Lorg/bson/LazyBSONList;-><init>([BILorg/bson/LazyBSONCallback;)V

    return-object v0
.end method

.method public createDBRef(Ljava/lang/String;Lorg/bson/types/ObjectId;)Ljava/lang/Object;
    .registers 5

    new-instance v0, Lorg/bson/BasicBSONObject;

    const-string v1, "$ns"

    invoke-direct {v0, v1, p1}, Lorg/bson/BasicBSONObject;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "$id"

    invoke-virtual {v0, p1, p2}, Lorg/bson/BasicBSONObject;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/bson/BasicBSONObject;

    move-result-object p1

    return-object p1
.end method

.method public createObject([BI)Ljava/lang/Object;
    .registers 4

    new-instance v0, Lorg/bson/LazyBSONObject;

    invoke-direct {v0, p1, p2, p0}, Lorg/bson/LazyBSONObject;-><init>([BILorg/bson/LazyBSONCallback;)V

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Lorg/bson/LazyBSONCallback;->getRoot()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public gotBinary(Ljava/lang/String;B[B)V
    .registers 4

    const/4 p1, 0x0

    invoke-virtual {p0, p3, p1}, Lorg/bson/LazyBSONCallback;->createObject([BI)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bson/LazyBSONCallback;->setRoot(Ljava/lang/Object;)V

    return-void
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bson/LazyBSONCallback;->root:Ljava/lang/Object;

    return-void
.end method
