.class public Lio/realm/internal/ObservableMap$RealmChangeListenerWrapper;
.super Ljava/lang/Object;
.source "ObservableMap.java"

# interfaces
.implements Lio/realm/MapChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/ObservableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RealmChangeListenerWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/realm/MapChangeListener<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final listener:Lio/realm/RealmChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmChangeListener<",
            "Lio/realm/RealmMap<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/realm/RealmChangeListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmChangeListener<",
            "Lio/realm/RealmMap<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/realm/internal/ObservableMap$RealmChangeListenerWrapper;->listener:Lio/realm/RealmChangeListener;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lio/realm/internal/ObservableMap$RealmChangeListenerWrapper;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lio/realm/internal/ObservableMap$RealmChangeListenerWrapper;->listener:Lio/realm/RealmChangeListener;

    check-cast p1, Lio/realm/internal/ObservableMap$RealmChangeListenerWrapper;

    iget-object p1, p1, Lio/realm/internal/ObservableMap$RealmChangeListenerWrapper;->listener:Lio/realm/RealmChangeListener;

    if-ne v0, p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lio/realm/internal/ObservableMap$RealmChangeListenerWrapper;->listener:Lio/realm/RealmChangeListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public onChange(Lio/realm/RealmMap;Lio/realm/MapChangeSet;)V
    .registers 3
    .param p2    # Lio/realm/MapChangeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmMap<",
            "TK;TV;>;",
            "Lio/realm/MapChangeSet<",
            "TK;>;)V"
        }
    .end annotation

    iget-object p2, p0, Lio/realm/internal/ObservableMap$RealmChangeListenerWrapper;->listener:Lio/realm/RealmChangeListener;

    invoke-interface {p2, p1}, Lio/realm/RealmChangeListener;->onChange(Ljava/lang/Object;)V

    return-void
.end method
