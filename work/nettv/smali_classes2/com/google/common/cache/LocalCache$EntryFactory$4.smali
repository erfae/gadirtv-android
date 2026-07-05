.class final enum Lcom/google/common/cache/LocalCache$EntryFactory$4;
.super Lcom/google/common/cache/LocalCache$EntryFactory;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache$EntryFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "STRONG_ACCESS_WRITE"

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/common/cache/LocalCache$EntryFactory;-><init>(Ljava/lang/String;ILcom/google/common/cache/LocalCache$1;)V

    return-void
.end method


# virtual methods
.method public final copyEntry(Lcom/google/common/cache/LocalCache$Segment;Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/ReferenceEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/LocalCache$Segment<",
            "TK;TV;>;",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/common/cache/LocalCache$EntryFactory;->copyEntry(Lcom/google/common/cache/LocalCache$Segment;Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/ReferenceEntry;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p2, p1}, Lcom/google/common/cache/LocalCache$EntryFactory;->copyAccessEntry(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)V

    .line 3
    invoke-virtual {p0, p2, p1}, Lcom/google/common/cache/LocalCache$EntryFactory;->copyWriteEntry(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)V

    return-object p1
.end method

.method public final newEntry(Lcom/google/common/cache/LocalCache$Segment;Ljava/lang/Object;ILcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/ReferenceEntry;
    .locals 0
    .param p4    # Lcom/google/common/cache/ReferenceEntry;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/LocalCache$Segment<",
            "TK;TV;>;TK;I",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance p1, Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;

    invoke-direct {p1, p2, p3, p4}, Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;-><init>(Ljava/lang/Object;ILcom/google/common/cache/ReferenceEntry;)V

    return-object p1
.end method
