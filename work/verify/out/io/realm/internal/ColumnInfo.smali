.class public abstract Lio/realm/internal/ColumnInfo;
.super Ljava/lang/Object;
.source "ColumnInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/ColumnInfo$ColumnDetails;
    }
.end annotation


# instance fields
.field private final columnKeysFromColumnNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/realm/internal/ColumnInfo$ColumnDetails;",
            ">;"
        }
    .end annotation
.end field

.field private final columnkeysFromJavaFieldNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/realm/internal/ColumnInfo$ColumnDetails;",
            ">;"
        }
    .end annotation
.end field

.field private final javaFieldNameToInternalNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mutable:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, v0}, Lio/realm/internal/ColumnInfo;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lio/realm/internal/ColumnInfo;-><init>(IZ)V

    return-void
.end method

.method private constructor <init>(IZ)V
    .registers 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lio/realm/internal/ColumnInfo;->columnkeysFromJavaFieldNames:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lio/realm/internal/ColumnInfo;->columnKeysFromColumnNames:Ljava/util/Map;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lio/realm/internal/ColumnInfo;->javaFieldNameToInternalNames:Ljava/util/Map;

    .line 7
    iput-boolean p2, p0, Lio/realm/internal/ColumnInfo;->mutable:Z

    return-void
.end method


# virtual methods
.method public final addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J
    .registers 6

    .line 1
    invoke-virtual {p3, p2}, Lio/realm/internal/OsObjectSchemaInfo;->getProperty(Ljava/lang/String;)Lio/realm/internal/Property;

    move-result-object p3

    .line 2
    new-instance v0, Lio/realm/internal/ColumnInfo$ColumnDetails;

    invoke-direct {v0, p3}, Lio/realm/internal/ColumnInfo$ColumnDetails;-><init>(Lio/realm/internal/Property;)V

    .line 3
    iget-object v1, p0, Lio/realm/internal/ColumnInfo;->columnkeysFromJavaFieldNames:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lio/realm/internal/ColumnInfo;->columnKeysFromColumnNames:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lio/realm/internal/ColumnInfo;->javaFieldNameToInternalNames:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p3}, Lio/realm/internal/Property;->getColumnKey()J

    move-result-wide p1

    return-wide p1
.end method

.method public abstract copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
.end method

.method public copyFrom(Lio/realm/internal/ColumnInfo;)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lio/realm/internal/ColumnInfo;->mutable:Z

    if-eqz v0, :cond_31

    const-string v0, "Attempt to copy null ColumnInfo"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lio/realm/internal/ColumnInfo;->columnkeysFromJavaFieldNames:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    iget-object v0, p0, Lio/realm/internal/ColumnInfo;->columnkeysFromJavaFieldNames:Ljava/util/Map;

    iget-object v1, p1, Lio/realm/internal/ColumnInfo;->columnkeysFromJavaFieldNames:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 5
    iget-object v0, p0, Lio/realm/internal/ColumnInfo;->columnKeysFromColumnNames:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 6
    iget-object v0, p0, Lio/realm/internal/ColumnInfo;->columnKeysFromColumnNames:Ljava/util/Map;

    iget-object v1, p1, Lio/realm/internal/ColumnInfo;->columnKeysFromColumnNames:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 7
    iget-object v0, p0, Lio/realm/internal/ColumnInfo;->javaFieldNameToInternalNames:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 8
    iget-object v0, p0, Lio/realm/internal/ColumnInfo;->javaFieldNameToInternalNames:Ljava/util/Map;

    iget-object v1, p1, Lio/realm/internal/ColumnInfo;->javaFieldNameToInternalNames:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 9
    invoke-virtual {p0, p1, p0}, Lio/realm/internal/ColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    return-void

    .line 10
    :cond_31
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Attempt to modify an immutable ColumnInfo"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getColumnDetails(Ljava/lang/String;)Lio/realm/internal/ColumnInfo$ColumnDetails;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lio/realm/internal/ColumnInfo;->columnkeysFromJavaFieldNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/internal/ColumnInfo$ColumnDetails;

    return-object p1
.end method

.method public getColumnKey(Ljava/lang/String;)J
    .registers 4

    .line 1
    iget-object v0, p0, Lio/realm/internal/ColumnInfo;->columnkeysFromJavaFieldNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/internal/ColumnInfo$ColumnDetails;

    if-nez p1, :cond_d

    const-wide/16 v0, -0x1

    goto :goto_f

    .line 2
    :cond_d
    iget-wide v0, p1, Lio/realm/internal/ColumnInfo$ColumnDetails;->columnKey:J

    :goto_f
    return-wide v0
.end method

.method public getColumnKeysMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/realm/internal/ColumnInfo$ColumnDetails;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/internal/ColumnInfo;->columnkeysFromJavaFieldNames:Ljava/util/Map;

    return-object v0
.end method

.method public getInternalFieldName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lio/realm/internal/ColumnInfo;->javaFieldNameToInternalNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final isMutable()Z
    .registers 2

    iget-boolean v0, p0, Lio/realm/internal/ColumnInfo;->mutable:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ColumnInfo["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "mutable="

    .line 2
    invoke-static {v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    iget-boolean v2, p0, Lio/realm/internal/ColumnInfo;->mutable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v2, p0, Lio/realm/internal/ColumnInfo;->columnkeysFromJavaFieldNames:Ljava/util/Map;

    const-string v3, "->"

    const/4 v4, 0x0

    const-string v5, "]"

    if-eqz v2, :cond_60

    const-string v2, "JavaFieldNames=["

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v2, p0, Lio/realm/internal/ColumnInfo;->columnkeysFromJavaFieldNames:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v6, 0x0

    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    if-eqz v6, :cond_48

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_48
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    goto :goto_37

    .line 9
    :cond_5d
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_60
    iget-object v2, p0, Lio/realm/internal/ColumnInfo;->columnKeysFromColumnNames:Ljava/util/Map;

    if-eqz v2, :cond_9c

    const-string v2, ", InternalFieldNames=["

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-object v2, p0, Lio/realm/internal/ColumnInfo;->columnKeysFromColumnNames:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_73
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_99

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    if-eqz v4, :cond_84

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :cond_84
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    goto :goto_73

    .line 15
    :cond_99
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    :cond_9c
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
