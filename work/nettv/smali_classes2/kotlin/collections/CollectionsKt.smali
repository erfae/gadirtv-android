.class public final Lkotlin/collections/CollectionsKt;
.super Lkotlin/collections/CollectionsKt___CollectionsKt;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "kotlin/collections/CollectionsKt__CollectionsJVMKt",
        "kotlin/collections/CollectionsKt__CollectionsKt",
        "kotlin/collections/CollectionsKt__IterablesKt",
        "kotlin/collections/CollectionsKt__IteratorsJVMKt",
        "kotlin/collections/CollectionsKt__IteratorsKt",
        "kotlin/collections/CollectionsKt__MutableCollectionsJVMKt",
        "kotlin/collections/CollectionsKt__MutableCollectionsKt",
        "kotlin/collections/CollectionsKt__ReversedViewsKt",
        "kotlin/collections/CollectionsKt___CollectionsJvmKt",
        "kotlin/collections/CollectionsKt___CollectionsKt"
    }
    k = 0x4
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x31
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;-><init>()V

    return-void
.end method

.method public static bridge synthetic binarySearch$default(Ljava/util/List;Ljava/lang/Comparable;)I
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt__CollectionsKt;->binarySearch$default(Ljava/util/List;Ljava/lang/Comparable;IIILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic collectionSizeOrDefault(Ljava/lang/Iterable;)I
    .locals 1
    .param p0    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic dropLast(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->dropLast(Ljava/util/List;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic joinTo$default(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7c

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v9}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinTo$default(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Appendable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;
    .locals 9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    move v7, p5

    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
