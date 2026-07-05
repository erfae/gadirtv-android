.class abstract Lio/realm/OrderedRealmCollectionImpl$CollectionOperator;
.super Ljava/lang/Object;
.source "OrderedRealmCollectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/OrderedRealmCollectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CollectionOperator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final baseRealm:Lio/realm/BaseRealm;

.field public final className:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final classSpec:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final osResults:Lio/realm/internal/OsResults;


# direct methods
.method public constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/OsResults;Ljava/lang/Class;Ljava/lang/String;)V
    .registers 5
    .param p3    # Ljava/lang/Class;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsResults;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/realm/OrderedRealmCollectionImpl$CollectionOperator;->baseRealm:Lio/realm/BaseRealm;

    .line 3
    iput-object p2, p0, Lio/realm/OrderedRealmCollectionImpl$CollectionOperator;->osResults:Lio/realm/internal/OsResults;

    .line 4
    iput-object p3, p0, Lio/realm/OrderedRealmCollectionImpl$CollectionOperator;->classSpec:Ljava/lang/Class;

    .line 5
    iput-object p4, p0, Lio/realm/OrderedRealmCollectionImpl$CollectionOperator;->className:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract convertRowToObject(Lio/realm/internal/UncheckedRow;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/internal/UncheckedRow;",
            ")TT;"
        }
    .end annotation
.end method

.method public final convertToObject(Lio/realm/internal/UncheckedRow;ZLjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1    # Lio/realm/internal/UncheckedRow;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/internal/UncheckedRow;",
            "ZTT;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_d

    .line 1
    iget-object p2, p0, Lio/realm/OrderedRealmCollectionImpl$CollectionOperator;->baseRealm:Lio/realm/BaseRealm;

    iget-object p3, p0, Lio/realm/OrderedRealmCollectionImpl$CollectionOperator;->classSpec:Ljava/lang/Class;

    iget-object v0, p0, Lio/realm/OrderedRealmCollectionImpl$CollectionOperator;->className:Ljava/lang/String;

    invoke-virtual {p2, p3, v0, p1}, Lio/realm/BaseRealm;->get(Ljava/lang/Class;Ljava/lang/String;Lio/realm/internal/UncheckedRow;)Lio/realm/RealmModel;

    move-result-object p1

    return-object p1

    :cond_d
    if-nez p2, :cond_10

    return-object p3

    .line 2
    :cond_10
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "No results were found."

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract firstImpl(ZLjava/lang/Object;)Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTT;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract get(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public abstract getFromResults(ILio/realm/internal/OsResults;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/realm/internal/OsResults;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract lastImpl(ZLjava/lang/Object;)Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTT;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
