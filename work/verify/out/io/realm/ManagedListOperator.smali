.class abstract Lio/realm/ManagedListOperator;
.super Ljava/lang/Object;
.source "ManagedListOperator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final osList:Lio/realm/internal/OsList;

.field public final realm:Lio/realm/BaseRealm;


# direct methods
.method public constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/OsList;Ljava/lang/Class;)V
    .registers 4
    .param p3    # Ljava/lang/Class;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsList;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/realm/ManagedListOperator;->realm:Lio/realm/BaseRealm;

    .line 3
    iput-object p3, p0, Lio/realm/ManagedListOperator;->clazz:Ljava/lang/Class;

    .line 4
    iput-object p2, p0, Lio/realm/ManagedListOperator;->osList:Lio/realm/internal/OsList;

    return-void
.end method

.method private appendNull()V
    .registers 2

    iget-object v0, p0, Lio/realm/ManagedListOperator;->osList:Lio/realm/internal/OsList;

    invoke-virtual {v0}, Lio/realm/internal/OsList;->addNull()V

    return-void
.end method


# virtual methods
.method public final append(Ljava/lang/Object;)V
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lio/realm/ManagedListOperator;->checkValidValue(Ljava/lang/Object;)V

    if-nez p1, :cond_9

    .line 2
    invoke-direct {p0}, Lio/realm/ManagedListOperator;->appendNull()V

    goto :goto_c

    .line 3
    :cond_9
    invoke-virtual {p0, p1}, Lio/realm/ManagedListOperator;->appendValue(Ljava/lang/Object;)V

    :goto_c
    return-void
.end method

.method public abstract appendValue(Ljava/lang/Object;)V
.end method

.method public final checkInsertIndex(I)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lio/realm/ManagedListOperator;->size()I

    move-result v0

    if-ltz p1, :cond_9

    if-lt v0, p1, :cond_9

    return-void

    .line 2
    :cond_9
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Invalid index "

    const-string v2, ", size is "

    .line 3
    invoke-static {v1, p1, v2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 4
    iget-object v1, p0, Lio/realm/ManagedListOperator;->osList:Lio/realm/internal/OsList;

    invoke-virtual {v1}, Lio/realm/internal/OsList;->size()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract checkValidValue(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract forRealmModel()Z
.end method

.method public abstract get(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public final getOsList()Lio/realm/internal/OsList;
    .registers 2

    iget-object v0, p0, Lio/realm/ManagedListOperator;->osList:Lio/realm/internal/OsList;

    return-object v0
.end method

.method public final insert(ILjava/lang/Object;)V
    .registers 3
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lio/realm/ManagedListOperator;->checkValidValue(Ljava/lang/Object;)V

    if-nez p2, :cond_9

    .line 2
    invoke-virtual {p0, p1}, Lio/realm/ManagedListOperator;->insertNull(I)V

    goto :goto_c

    .line 3
    :cond_9
    invoke-virtual {p0, p1, p2}, Lio/realm/ManagedListOperator;->insertValue(ILjava/lang/Object;)V

    :goto_c
    return-void
.end method

.method public insertNull(I)V
    .registers 5

    iget-object v0, p0, Lio/realm/ManagedListOperator;->osList:Lio/realm/internal/OsList;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/OsList;->insertNull(J)V

    return-void
.end method

.method public abstract insertValue(ILjava/lang/Object;)V
.end method

.method public final isEmpty()Z
    .registers 2

    iget-object v0, p0, Lio/realm/ManagedListOperator;->osList:Lio/realm/internal/OsList;

    invoke-virtual {v0}, Lio/realm/internal/OsList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final isValid()Z
    .registers 2

    iget-object v0, p0, Lio/realm/ManagedListOperator;->osList:Lio/realm/internal/OsList;

    invoke-virtual {v0}, Lio/realm/internal/OsList;->isValid()Z

    move-result v0

    return v0
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lio/realm/ManagedListOperator;->checkValidValue(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0, p1}, Lio/realm/ManagedListOperator;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez p2, :cond_d

    .line 3
    invoke-virtual {p0, p1}, Lio/realm/ManagedListOperator;->setNull(I)V

    goto :goto_10

    .line 4
    :cond_d
    invoke-virtual {p0, p1, p2}, Lio/realm/ManagedListOperator;->setValue(ILjava/lang/Object;)V

    :goto_10
    return-object v0
.end method

.method public setNull(I)V
    .registers 5

    iget-object v0, p0, Lio/realm/ManagedListOperator;->osList:Lio/realm/internal/OsList;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/OsList;->setNull(J)V

    return-void
.end method

.method public abstract setValue(ILjava/lang/Object;)V
.end method

.method public final size()I
    .registers 6

    iget-object v0, p0, Lio/realm/ManagedListOperator;->osList:Lio/realm/internal/OsList;

    invoke-virtual {v0}, Lio/realm/internal/OsList;->size()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gez v4, :cond_f

    long-to-int v1, v0

    goto :goto_12

    :cond_f
    const v1, 0x7fffffff

    :goto_12
    return v1
.end method
