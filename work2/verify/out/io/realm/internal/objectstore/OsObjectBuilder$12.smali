.class Lio/realm/internal/objectstore/OsObjectBuilder$12;
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
        "Lio/realm/MutableRealmInteger;",
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
.method public handleItem(JLio/realm/MutableRealmInteger;)V
    .registers 6

    .line 2
    invoke-virtual {p3}, Lio/realm/MutableRealmInteger;->get()Ljava/lang/Long;

    move-result-object p3

    if-nez p3, :cond_a

    .line 3
    # invokes: Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddNullListItem(J)V
    invoke-static {p1, p2}, Lio/realm/internal/objectstore/OsObjectBuilder;->access$700(J)V

    goto :goto_11

    .line 4
    :cond_a
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    # invokes: Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddIntegerListItem(JJ)V
    invoke-static {p1, p2, v0, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->access$000(JJ)V

    :goto_11
    return-void
.end method

.method public bridge synthetic handleItem(JLjava/lang/Object;)V
    .registers 4

    .line 1
    check-cast p3, Lio/realm/MutableRealmInteger;

    invoke-virtual {p0, p1, p2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder$12;->handleItem(JLio/realm/MutableRealmInteger;)V

    return-void
.end method
