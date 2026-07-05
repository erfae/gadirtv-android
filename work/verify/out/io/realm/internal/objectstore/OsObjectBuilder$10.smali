.class Lio/realm/internal/objectstore/OsObjectBuilder$10;
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
        "Ljava/util/Date;",
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
    check-cast p3, Ljava/util/Date;

    invoke-virtual {p0, p1, p2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder$10;->handleItem(JLjava/util/Date;)V

    return-void
.end method

.method public handleItem(JLjava/util/Date;)V
    .registers 6

    .line 2
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    # invokes: Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddDateListItem(JJ)V
    invoke-static {p1, p2, v0, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->access$500(JJ)V

    return-void
.end method
