.class public Lio/realm/rx/ObjectChange;
.super Ljava/lang/Object;
.source "ObjectChange.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lio/realm/RealmModel;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final changeset:Lio/realm/ObjectChangeSet;

.field private final object:Lio/realm/RealmModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/realm/RealmModel;Lio/realm/ObjectChangeSet;)V
    .registers 3
    .param p2    # Lio/realm/ObjectChangeSet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lio/realm/ObjectChangeSet;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/realm/rx/ObjectChange;->object:Lio/realm/RealmModel;

    .line 3
    iput-object p2, p0, Lio/realm/rx/ObjectChange;->changeset:Lio/realm/ObjectChangeSet;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2f

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2f

    .line 2
    :cond_12
    check-cast p1, Lio/realm/rx/ObjectChange;

    .line 3
    iget-object v2, p0, Lio/realm/rx/ObjectChange;->object:Lio/realm/RealmModel;

    iget-object v3, p1, Lio/realm/rx/ObjectChange;->object:Lio/realm/RealmModel;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    return v1

    .line 4
    :cond_1f
    iget-object v2, p0, Lio/realm/rx/ObjectChange;->changeset:Lio/realm/ObjectChangeSet;

    iget-object p1, p1, Lio/realm/rx/ObjectChange;->changeset:Lio/realm/ObjectChangeSet;

    if-eqz v2, :cond_2a

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2e

    :cond_2a
    if-nez p1, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    return v0

    :cond_2f
    :goto_2f
    return v1
.end method

.method public getChangeset()Lio/realm/ObjectChangeSet;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lio/realm/rx/ObjectChange;->changeset:Lio/realm/ObjectChangeSet;

    return-object v0
.end method

.method public getObject()Lio/realm/RealmModel;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/rx/ObjectChange;->object:Lio/realm/RealmModel;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lio/realm/rx/ObjectChange;->object:Lio/realm/RealmModel;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lio/realm/rx/ObjectChange;->changeset:Lio/realm/ObjectChangeSet;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "ObjectChange{object="

    .line 1
    invoke-static {v0}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/realm/rx/ObjectChange;->object:Lio/realm/RealmModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", changeset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/realm/rx/ObjectChange;->changeset:Lio/realm/ObjectChangeSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
