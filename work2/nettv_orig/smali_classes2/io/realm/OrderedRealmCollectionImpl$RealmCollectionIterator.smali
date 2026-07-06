.class Lio/realm/OrderedRealmCollectionImpl$RealmCollectionIterator;
.super Lio/realm/internal/OsResults$Iterator;
.source "OrderedRealmCollectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/OrderedRealmCollectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RealmCollectionIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/internal/OsResults$Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lio/realm/OrderedRealmCollectionImpl;


# direct methods
.method public constructor <init>(Lio/realm/OrderedRealmCollectionImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/OrderedRealmCollectionImpl$RealmCollectionIterator;->this$0:Lio/realm/OrderedRealmCollectionImpl;

    .line 2
    iget-object p1, p1, Lio/realm/OrderedRealmCollectionImpl;->osResults:Lio/realm/internal/OsResults;

    invoke-direct {p0, p1}, Lio/realm/internal/OsResults$Iterator;-><init>(Lio/realm/internal/OsResults;)V

    return-void
.end method


# virtual methods
.method public final getInternal(ILio/realm/internal/OsResults;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/realm/internal/OsResults;",
            ")TE;"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/OrderedRealmCollectionImpl$RealmCollectionIterator;->this$0:Lio/realm/OrderedRealmCollectionImpl;

    iget-object v0, v0, Lio/realm/OrderedRealmCollectionImpl;->operator:Lio/realm/OrderedRealmCollectionImpl$CollectionOperator;

    invoke-virtual {v0, p1, p2}, Lio/realm/OrderedRealmCollectionImpl$CollectionOperator;->getFromResults(ILio/realm/internal/OsResults;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
