.class Lio/realm/RealmModelSetIterator;
.super Lio/realm/SetIterator;
.source "SetValueOperator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lio/realm/RealmModel;",
        ">",
        "Lio/realm/SetIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final valueClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/realm/internal/OsSet;Lio/realm/BaseRealm;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/internal/OsSet;",
            "Lio/realm/BaseRealm;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/realm/SetIterator;-><init>(Lio/realm/internal/OsSet;Lio/realm/BaseRealm;)V

    .line 2
    iput-object p3, p0, Lio/realm/RealmModelSetIterator;->valueClass:Ljava/lang/Class;

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

    iget-object v2, p0, Lio/realm/RealmModelSetIterator;->valueClass:Ljava/lang/Class;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v2, v0, v1, v3}, Lio/realm/BaseRealm;->get(Ljava/lang/Class;JLjava/util/List;)Lio/realm/RealmModel;

    move-result-object p1

    return-object p1
.end method
