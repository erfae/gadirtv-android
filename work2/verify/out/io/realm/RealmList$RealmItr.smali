.class Lio/realm/RealmList$RealmItr;
.super Ljava/lang/Object;
.source "RealmList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/RealmList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RealmItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public cursor:I

.field public expectedModCount:I

.field public lastRet:I

.field public final synthetic this$0:Lio/realm/RealmList;


# direct methods
.method private constructor <init>(Lio/realm/RealmList;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/realm/RealmList$RealmItr;->this$0:Lio/realm/RealmList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/realm/RealmList$RealmItr;->cursor:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lio/realm/RealmList$RealmItr;->lastRet:I

    .line 4
    # getter for: Ljava/util/AbstractList;->modCount:I
    invoke-static {p1}, Lio/realm/RealmList;->access$100(Lio/realm/RealmList;)I

    move-result p1

    iput p1, p0, Lio/realm/RealmList$RealmItr;->expectedModCount:I

    return-void
.end method

.method public synthetic constructor <init>(Lio/realm/RealmList;Lio/realm/RealmList$1;)V
    .registers 3

    .line 5
    invoke-direct {p0, p1}, Lio/realm/RealmList$RealmItr;-><init>(Lio/realm/RealmList;)V

    return-void
.end method


# virtual methods
.method public final checkConcurrentModification()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/realm/RealmList$RealmItr;->this$0:Lio/realm/RealmList;

    # getter for: Ljava/util/AbstractList;->modCount:I
    invoke-static {v0}, Lio/realm/RealmList;->access$400(Lio/realm/RealmList;)I

    move-result v0

    iget v1, p0, Lio/realm/RealmList$RealmItr;->expectedModCount:I

    if-ne v0, v1, :cond_b

    return-void

    .line 2
    :cond_b
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/realm/RealmList$RealmItr;->this$0:Lio/realm/RealmList;

    # invokes: Lio/realm/RealmList;->checkValidRealm()V
    invoke-static {v0}, Lio/realm/RealmList;->access$200(Lio/realm/RealmList;)V

    .line 2
    invoke-virtual {p0}, Lio/realm/RealmList$RealmItr;->checkConcurrentModification()V

    .line 3
    iget v0, p0, Lio/realm/RealmList$RealmItr;->cursor:I

    iget-object v1, p0, Lio/realm/RealmList$RealmItr;->this$0:Lio/realm/RealmList;

    invoke-virtual {v1}, Lio/realm/RealmList;->size()I

    move-result v1

    if-eq v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/RealmList$RealmItr;->this$0:Lio/realm/RealmList;

    # invokes: Lio/realm/RealmList;->checkValidRealm()V
    invoke-static {v0}, Lio/realm/RealmList;->access$200(Lio/realm/RealmList;)V

    .line 2
    invoke-virtual {p0}, Lio/realm/RealmList$RealmItr;->checkConcurrentModification()V

    .line 3
    iget v0, p0, Lio/realm/RealmList$RealmItr;->cursor:I

    .line 4
    :try_start_a
    iget-object v1, p0, Lio/realm/RealmList$RealmItr;->this$0:Lio/realm/RealmList;

    invoke-virtual {v1, v0}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 5
    iput v0, p0, Lio/realm/RealmList$RealmItr;->lastRet:I

    add-int/lit8 v2, v0, 0x1

    .line 6
    iput v2, p0, Lio/realm/RealmList$RealmItr;->cursor:I
    :try_end_16
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_16} :catch_17

    return-object v1

    .line 7
    :catch_17
    invoke-virtual {p0}, Lio/realm/RealmList$RealmItr;->checkConcurrentModification()V

    .line 8
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "Cannot access index "

    const-string v3, " when size is "

    .line 9
    invoke-static {v2, v0, v3}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 10
    iget-object v2, p0, Lio/realm/RealmList$RealmItr;->this$0:Lio/realm/RealmList;

    invoke-virtual {v2}, Lio/realm/RealmList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Remember to check hasNext() before using next()."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public remove()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/realm/RealmList$RealmItr;->this$0:Lio/realm/RealmList;

    # invokes: Lio/realm/RealmList;->checkValidRealm()V
    invoke-static {v0}, Lio/realm/RealmList;->access$200(Lio/realm/RealmList;)V

    .line 2
    iget v0, p0, Lio/realm/RealmList$RealmItr;->lastRet:I

    if-ltz v0, :cond_2f

    .line 3
    invoke-virtual {p0}, Lio/realm/RealmList$RealmItr;->checkConcurrentModification()V

    .line 4
    :try_start_c
    iget-object v0, p0, Lio/realm/RealmList$RealmItr;->this$0:Lio/realm/RealmList;

    iget v1, p0, Lio/realm/RealmList$RealmItr;->lastRet:I

    invoke-virtual {v0, v1}, Lio/realm/RealmList;->remove(I)Ljava/lang/Object;

    .line 5
    iget v0, p0, Lio/realm/RealmList$RealmItr;->lastRet:I

    iget v1, p0, Lio/realm/RealmList$RealmItr;->cursor:I

    if-ge v0, v1, :cond_1d

    add-int/lit8 v1, v1, -0x1

    .line 6
    iput v1, p0, Lio/realm/RealmList$RealmItr;->cursor:I

    :cond_1d
    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lio/realm/RealmList$RealmItr;->lastRet:I

    .line 8
    iget-object v0, p0, Lio/realm/RealmList$RealmItr;->this$0:Lio/realm/RealmList;

    # getter for: Ljava/util/AbstractList;->modCount:I
    invoke-static {v0}, Lio/realm/RealmList;->access$300(Lio/realm/RealmList;)I

    move-result v0

    iput v0, p0, Lio/realm/RealmList$RealmItr;->expectedModCount:I
    :try_end_28
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_28} :catch_29

    return-void

    .line 9
    :catch_29
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 10
    :cond_2f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call remove() twice. Must call next() in between."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
