.class Lio/realm/internal/objectstore/OsObjectBuilder$14;
.super Ljava/lang/Object;
.source "OsObjectBuilder.java"

# interfaces
.implements Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/objectstore/OsObjectBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback<",
        "Lorg/bson/types/ObjectId;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handleItem(JLjava/lang/Object;)V
    .registers 4

    .line 1
    check-cast p3, Lorg/bson/types/ObjectId;

    invoke-virtual {p0, p1, p2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder$14;->handleItem(JLorg/bson/types/ObjectId;)V

    return-void
.end method

.method public handleItem(JLorg/bson/types/ObjectId;)V
    .registers 4

    .line 2
    invoke-virtual {p3}, Lorg/bson/types/ObjectId;->toString()Ljava/lang/String;

    move-result-object p3

    # invokes: Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddObjectIdListItem(JLjava/lang/String;)V
    invoke-static {p1, p2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->access$900(JLjava/lang/String;)V

    return-void
.end method
