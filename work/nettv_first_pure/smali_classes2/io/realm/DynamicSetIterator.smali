.class Lio/realm/DynamicSetIterator;
.super Lio/realm/SetIterator;
.source "SetValueOperator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/SetIterator<",
        "Lio/realm/DynamicRealmObject;",
        ">;"
    }
.end annotation


# instance fields
.field private final className:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/realm/internal/OsSet;Lio/realm/BaseRealm;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/realm/SetIterator;-><init>(Lio/realm/internal/OsSet;Lio/realm/BaseRealm;)V

    .line 2
    iput-object p3, p0, Lio/realm/DynamicSetIterator;->className:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getValueAtIndex(I)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lio/realm/SetIterator;->osSet:Lio/realm/internal/OsSet;

    invoke-virtual {v0, p1}, Lio/realm/internal/OsSet;->getRow(I)J

    move-result-wide v0

    .line 2
    iget-object p1, p0, Lio/realm/SetIterator;->baseRealm:Lio/realm/BaseRealm;

    const-class v2, Lio/realm/DynamicRealmObject;

    iget-object v3, p0, Lio/realm/DynamicSetIterator;->className:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v0, v1}, Lio/realm/BaseRealm;->get(Ljava/lang/Class;Ljava/lang/String;J)Lio/realm/RealmModel;

    move-result-object p1

    check-cast p1, Lio/realm/DynamicRealmObject;

    return-object p1
.end method
