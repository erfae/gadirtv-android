.class public final synthetic Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static m(Ljava/lang/CharSequence;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)I
    .registers 4

    .line 1
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    return p0
.end method

.method public static m(Lkotlin/UInt;I)I
    .registers 2

    .line 4
    invoke-virtual {p0}, Lkotlin/UInt;->unbox-impl()I

    move-result p0

    add-int/2addr p0, p1

    .line 5
    invoke-static {p0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result p0

    return p0
.end method

.method public static m(Lkotlin/ranges/IntRange;I)I
    .registers 2

    .line 6
    invoke-virtual {p0}, Lkotlin/ranges/IntRange;->getEndInclusive()Ljava/lang/Integer;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/2addr p0, p1

    return p0
.end method

.method public static m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .registers 4

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 9
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    .line 10
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static m(Landroid/util/JsonReader;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
    .registers 2

    .line 11
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    .line 12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 13
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public static m(Lio/realm/Realm;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    .line 14
    invoke-virtual {p0, p1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p0

    .line 15
    invoke-virtual {p0, p2, p3}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p0

    .line 16
    invoke-virtual {p0}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static m(Ljava/lang/CharSequence;ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .registers 3

    .line 17
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    .line 18
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    .line 19
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static m([BILkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .registers 3

    .line 20
    invoke-static {p0, p1}, Lkotlin/UByteArray;->get-w2LRezQ([BI)B

    move-result p0

    .line 21
    invoke-static {p0}, Lkotlin/UByte;->box-impl(B)Lkotlin/UByte;

    move-result-object p0

    .line 22
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static m([IILkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .registers 3

    .line 23
    invoke-static {p0, p1}, Lkotlin/UIntArray;->get-pVg5ArA([II)I

    move-result p0

    .line 24
    invoke-static {p0}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object p0

    .line 25
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static m([JILkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .registers 3

    .line 26
    invoke-static {p0, p1}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide p0

    .line 27
    invoke-static {p0, p1}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object p0

    .line 28
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static m([SILkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .registers 3

    .line 29
    invoke-static {p0, p1}, Lkotlin/UShortArray;->get-Mh2AYeg([SI)S

    move-result p0

    .line 30
    invoke-static {p0}, Lkotlin/UShort;->box-impl(S)Lkotlin/UShort;

    move-result-object p0

    .line 31
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 6

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public static m(Ljava/util/LinkedHashMap;Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 3

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    .line 57
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static m(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 3

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    .line 60
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static m(Ljava/lang/Iterable;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)Ljava/util/Iterator;
    .registers 4

    .line 62
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static m(Lkotlin/sequences/Sequence;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)Ljava/util/Iterator;
    .registers 4

    .line 65
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static m()Lkotlin/KotlinNothingValueException;
    .registers 1

    .line 68
    invoke-static {}, Lkotlinx/coroutines/flow/FlowKt;->noImpl()Ljava/lang/Void;

    .line 69
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 70
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    return-object v0
.end method

.method public static m(II)Lkotlin/collections/IntIterator;
    .registers 3

    .line 71
    new-instance v0, Lkotlin/ranges/IntRange;

    .line 72
    invoke-direct {v0, p0, p1}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 73
    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/collections/IntIterator;

    move-result-object p0

    return-object p0
.end method

.method public static m(Landroid/content/Context;ILandroid/widget/TextView;)V
    .registers 3

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 75
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    .line 76
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public static m(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .registers 3

    .line 77
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 78
    invoke-virtual {p0, p2}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public static m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V
    .registers 4

    .line 80
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
