.class Lio/realm/SetValueOperator$1;
.super Ljava/lang/Object;
.source "SetValueOperator.java"

# interfaces
.implements Lio/realm/SetChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/realm/SetChangeListener<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic val$listener:Lio/realm/RealmChangeListener;


# direct methods
.method public constructor <init>(Lio/realm/RealmChangeListener;)V
    .locals 0

    iput-object p1, p0, Lio/realm/SetValueOperator$1;->val$listener:Lio/realm/RealmChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lio/realm/RealmSet;Lio/realm/SetChangeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmSet<",
            "Ljava/lang/Object;",
            ">;",
            "Lio/realm/SetChangeSet;",
            ")V"
        }
    .end annotation

    iget-object p2, p0, Lio/realm/SetValueOperator$1;->val$listener:Lio/realm/RealmChangeListener;

    invoke-interface {p2, p1}, Lio/realm/RealmChangeListener;->onChange(Ljava/lang/Object;)V

    return-void
.end method
