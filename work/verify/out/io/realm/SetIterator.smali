.class abstract Lio/realm/SetIterator;
.super Ljava/lang/Object;
.source "SetValueOperator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final baseRealm:Lio/realm/BaseRealm;

.field public final osSet:Lio/realm/internal/OsSet;

.field private pos:I


# direct methods
.method public constructor <init>(Lio/realm/internal/OsSet;Lio/realm/BaseRealm;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lio/realm/SetIterator;->pos:I

    .line 3
    iput-object p1, p0, Lio/realm/SetIterator;->osSet:Lio/realm/internal/OsSet;

    .line 4
    iput-object p2, p0, Lio/realm/SetIterator;->baseRealm:Lio/realm/BaseRealm;

    return-void
.end method


# virtual methods
.method public getValueAtIndex(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/SetIterator;->osSet:Lio/realm/internal/OsSet;

    invoke-virtual {v0, p1}, Lio/realm/internal/OsSet;->getValueAtIndex(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hasNext()Z
    .registers 7

    iget v0, p0, Lio/realm/SetIterator;->pos:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    int-to-long v2, v0

    iget-object v0, p0, Lio/realm/SetIterator;->osSet:Lio/realm/internal/OsSet;

    invoke-virtual {v0}, Lio/realm/internal/OsSet;->size()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method public next()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/realm/SetIterator;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/realm/SetIterator;->pos:I

    .line 2
    iget-object v0, p0, Lio/realm/SetIterator;->osSet:Lio/realm/internal/OsSet;

    invoke-virtual {v0}, Lio/realm/internal/OsSet;->size()J

    move-result-wide v0

    .line 3
    iget v2, p0, Lio/realm/SetIterator;->pos:I

    int-to-long v3, v2

    cmp-long v5, v3, v0

    if-gez v5, :cond_18

    .line 4
    invoke-virtual {p0, v2}, Lio/realm/SetIterator;->getValueAtIndex(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 5
    :cond_18
    new-instance v2, Ljava/util/NoSuchElementException;

    const-string v3, "Cannot access index "

    .line 6
    invoke-static {v3}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 7
    iget v4, p0, Lio/realm/SetIterator;->pos:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " when size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ". Remember to check hasNext() before using next()."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
