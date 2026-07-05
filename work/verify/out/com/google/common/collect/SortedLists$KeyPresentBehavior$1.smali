.class final enum Lcom/google/common/collect/SortedLists$KeyPresentBehavior$1;
.super Lcom/google/common/collect/SortedLists$KeyPresentBehavior;
.source "SortedLists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/SortedLists$KeyPresentBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 4

    const-string v0, "ANY_PRESENT"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;-><init>(Ljava/lang/String;ILcom/google/common/collect/SortedLists$1;)V

    return-void
.end method


# virtual methods
.method public final resultIndex(Ljava/util/Comparator;Ljava/lang/Object;Ljava/util/List;I)I
    .registers 5
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;TE;",
            "Ljava/util/List<",
            "+TE;>;I)I"
        }
    .end annotation

    return p4
.end method
