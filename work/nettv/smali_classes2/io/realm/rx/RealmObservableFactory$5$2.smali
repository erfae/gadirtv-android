.class Lio/realm/rx/RealmObservableFactory$5$2;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/rx/RealmObservableFactory$5;->subscribe(Lio/reactivex/FlowableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$listener:Lio/realm/RealmChangeListener;

.field public final synthetic val$observableRealm:Lio/realm/DynamicRealm;


# direct methods
.method public constructor <init>(Lio/realm/DynamicRealm;Lio/realm/RealmChangeListener;)V
    .locals 0

    iput-object p1, p0, Lio/realm/rx/RealmObservableFactory$5$2;->val$observableRealm:Lio/realm/DynamicRealm;

    iput-object p2, p0, Lio/realm/rx/RealmObservableFactory$5$2;->val$listener:Lio/realm/RealmChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$5$2;->val$observableRealm:Lio/realm/DynamicRealm;

    invoke-virtual {v0}, Lio/realm/DynamicRealm;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$5$2;->val$observableRealm:Lio/realm/DynamicRealm;

    iget-object v1, p0, Lio/realm/rx/RealmObservableFactory$5$2;->val$listener:Lio/realm/RealmChangeListener;

    invoke-virtual {v0, v1}, Lio/realm/DynamicRealm;->removeChangeListener(Lio/realm/RealmChangeListener;)V

    .line 3
    iget-object v0, p0, Lio/realm/rx/RealmObservableFactory$5$2;->val$observableRealm:Lio/realm/DynamicRealm;

    invoke-virtual {v0}, Lio/realm/DynamicRealm;->close()V

    :cond_0
    return-void
.end method
