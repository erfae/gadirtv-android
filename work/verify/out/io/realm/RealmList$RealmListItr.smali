.class Lio/realm/RealmList$RealmListItr;
.super Lio/realm/RealmList$RealmItr;
.source "RealmList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/RealmList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RealmListItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/RealmList<",
        "TE;>.RealmItr;",
        "Ljava/util/ListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lio/realm/RealmList;


# direct methods
.method public constructor <init>(Lio/realm/RealmList;I)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/realm/RealmList$RealmListItr;->this$0:Lio/realm/RealmList;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/realm/RealmList$RealmItr;-><init>(Lio/realm/RealmList;Lio/realm/RealmList$1;)V

    if-ltz p2, :cond_11

    .line 2
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result v0

    if-gt p2, v0, :cond_11

    .line 3
    iput p2, p0, Lio/realm/RealmList$RealmItr;->cursor:I

    return-void

    .line 4
    :cond_11
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Starting location must be a valid index: [0, "

    .line 5
    invoke-static {v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lio/realm/RealmList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]. Index was "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/RealmList$RealmListItr;->this$0:Lio/realm/RealmList;

    iget-object v0, v0, Lio/realm/RealmList;->baseRealm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    invoke-virtual {p0}, Lio/realm/RealmList$RealmItr;->checkConcurrentModification()V

    .line 3
    :try_start_a
    iget v0, p0, Lio/realm/RealmList$RealmItr;->cursor:I

    .line 4
    iget-object v1, p0, Lio/realm/RealmList$RealmListItr;->this$0:Lio/realm/RealmList;

    invoke-virtual {v1, v0, p1}, Lio/realm/RealmList;->add(ILjava/lang/Object;)V

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lio/realm/RealmList$RealmItr;->lastRet:I

    add-int/lit8 v0, v0, 0x1

    .line 6
    iput v0, p0, Lio/realm/RealmList$RealmItr;->cursor:I

    .line 7
    iget-object p1, p0, Lio/realm/RealmList$RealmListItr;->this$0:Lio/realm/RealmList;

    # getter for: Ljava/util/AbstractList;->modCount:I
    invoke-static {p1}, Lio/realm/RealmList;->access$600(Lio/realm/RealmList;)I

    move-result p1

    iput p1, p0, Lio/realm/RealmList$RealmItr;->expectedModCount:I
    :try_end_20
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_20} :catch_21

    return-void

    .line 8
    :catch_21
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method public hasPrevious()Z
    .registers 2

    iget v0, p0, Lio/realm/RealmList$RealmItr;->cursor:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public nextIndex()I
    .registers 2

    iget v0, p0, Lio/realm/RealmList$RealmItr;->cursor:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/realm/RealmList$RealmItr;->checkConcurrentModification()V

    .line 2
    iget v0, p0, Lio/realm/RealmList$RealmItr;->cursor:I

    add-int/lit8 v0, v0, -0x1

    .line 3
    :try_start_7
    iget-object v1, p0, Lio/realm/RealmList$RealmListItr;->this$0:Lio/realm/RealmList;

    invoke-virtual {v1, v0}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 4
    iput v0, p0, Lio/realm/RealmList$RealmItr;->cursor:I

    iput v0, p0, Lio/realm/RealmList$RealmItr;->lastRet:I
    :try_end_11
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_11} :catch_12

    return-object v1

    .line 5
    :catch_12
    invoke-virtual {p0}, Lio/realm/RealmList$RealmItr;->checkConcurrentModification()V

    .line 6
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "Cannot access index less than zero. This was "

    const-string v3, ". Remember to check hasPrevious() before using previous()."

    .line 7
    invoke-static {v2, v0, v3}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-direct {v1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public previousIndex()I
    .registers 2

    iget v0, p0, Lio/realm/RealmList$RealmItr;->cursor:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/RealmList$RealmListItr;->this$0:Lio/realm/RealmList;

    iget-object v0, v0, Lio/realm/RealmList;->baseRealm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 2
    iget v0, p0, Lio/realm/RealmList$RealmItr;->lastRet:I

    if-ltz v0, :cond_24

    .line 3
    invoke-virtual {p0}, Lio/realm/RealmList$RealmItr;->checkConcurrentModification()V

    .line 4
    :try_start_e
    iget-object v0, p0, Lio/realm/RealmList$RealmListItr;->this$0:Lio/realm/RealmList;

    iget v1, p0, Lio/realm/RealmList$RealmItr;->lastRet:I

    invoke-virtual {v0, v1, p1}, Lio/realm/RealmList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lio/realm/RealmList$RealmListItr;->this$0:Lio/realm/RealmList;

    # getter for: Ljava/util/AbstractList;->modCount:I
    invoke-static {p1}, Lio/realm/RealmList;->access$500(Lio/realm/RealmList;)I

    move-result p1

    iput p1, p0, Lio/realm/RealmList$RealmItr;->expectedModCount:I
    :try_end_1d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_1d} :catch_1e

    return-void

    .line 6
    :catch_1e
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    .line 7
    :cond_24
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
