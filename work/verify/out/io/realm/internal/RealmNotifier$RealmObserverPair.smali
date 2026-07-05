.class Lio/realm/internal/RealmNotifier$RealmObserverPair;
.super Lio/realm/internal/ObserverPairList$ObserverPair;
.source "RealmNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/RealmNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RealmObserverPair"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/realm/internal/ObserverPairList$ObserverPair<",
        "TT;",
        "Lio/realm/RealmChangeListener<",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lio/realm/RealmChangeListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lio/realm/RealmChangeListener<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lio/realm/internal/ObserverPairList$ObserverPair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$100(Lio/realm/internal/RealmNotifier$RealmObserverPair;Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Lio/realm/internal/RealmNotifier$RealmObserverPair;->onChange(Ljava/lang/Object;)V

    return-void
.end method

.method private onChange(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_9

    iget-object v0, p0, Lio/realm/internal/ObserverPairList$ObserverPair;->listener:Ljava/lang/Object;

    check-cast v0, Lio/realm/RealmChangeListener;

    invoke-interface {v0, p1}, Lio/realm/RealmChangeListener;->onChange(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method
