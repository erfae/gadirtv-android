.class Lio/realm/internal/objectstore/OsObjectBuilder$4;
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
        "Ljava/lang/Short;",
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
    check-cast p3, Ljava/lang/Short;

    invoke-virtual {p0, p1, p2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder$4;->handleItem(JLjava/lang/Short;)V

    return-void
.end method

.method public handleItem(JLjava/lang/Short;)V
    .registers 6

    .line 2
    invoke-virtual {p3}, Ljava/lang/Short;->shortValue()S

    move-result p3

    int-to-long v0, p3

    # invokes: Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddIntegerListItem(JJ)V
    invoke-static {p1, p2, v0, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->access$000(JJ)V

    return-void
.end method
