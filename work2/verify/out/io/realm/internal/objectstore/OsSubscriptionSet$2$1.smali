.class Lio/realm/internal/objectstore/OsSubscriptionSet$2$1;
.super Ljava/lang/Object;
.source "OsSubscriptionSet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/internal/objectstore/OsSubscriptionSet$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lio/realm/internal/objectstore/OsSubscriptionSet$2;


# direct methods
.method public constructor <init>(Lio/realm/internal/objectstore/OsSubscriptionSet$2;)V
    .registers 2

    iput-object p1, p0, Lio/realm/internal/objectstore/OsSubscriptionSet$2$1;->this$1:Lio/realm/internal/objectstore/OsSubscriptionSet$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lio/realm/internal/objectstore/OsSubscriptionSet$2$1;->this$1:Lio/realm/internal/objectstore/OsSubscriptionSet$2;

    iget-object v1, v0, Lio/realm/internal/objectstore/OsSubscriptionSet$2;->val$callback:Lio/realm/mongodb/sync/SubscriptionSet$StateChangeCallback;

    iget-object v0, v0, Lio/realm/internal/objectstore/OsSubscriptionSet$2;->this$0:Lio/realm/internal/objectstore/OsSubscriptionSet;

    invoke-interface {v1, v0}, Lio/realm/mongodb/sync/SubscriptionSet$StateChangeCallback;->onStateChange(Lio/realm/mongodb/sync/SubscriptionSet;)V

    return-void
.end method
