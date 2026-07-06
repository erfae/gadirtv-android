.class Lio/realm/DynamicRealm$1;
.super Ljava/lang/Object;
.source "DynamicRealm.java"

# interfaces
.implements Lio/realm/RealmCache$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/DynamicRealm;-><init>(Lio/realm/RealmCache;Lio/realm/internal/OsSharedRealm$VersionID;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/realm/DynamicRealm;

.field public final synthetic val$cache:Lio/realm/RealmCache;


# direct methods
.method public constructor <init>(Lio/realm/DynamicRealm;Lio/realm/RealmCache;)V
    .locals 0

    iput-object p1, p0, Lio/realm/DynamicRealm$1;->this$0:Lio/realm/DynamicRealm;

    iput-object p2, p0, Lio/realm/DynamicRealm$1;->val$cache:Lio/realm/RealmCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(I)V
    .locals 4

    if-lez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p1, p0, Lio/realm/DynamicRealm$1;->val$cache:Lio/realm/RealmCache;

    invoke-virtual {p1}, Lio/realm/RealmCache;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmConfiguration;->isReadOnly()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object p1, p0, Lio/realm/DynamicRealm$1;->this$0:Lio/realm/DynamicRealm;

    iget-object p1, p1, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-static {p1}, Lio/realm/internal/OsObjectStore;->getSchemaVersion(Lio/realm/internal/OsSharedRealm;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    return-void

    .line 3
    :cond_2
    iget-object p1, p0, Lio/realm/DynamicRealm$1;->this$0:Lio/realm/DynamicRealm;

    iget-object p1, p1, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {p1}, Lio/realm/internal/OsSharedRealm;->beginTransaction()V

    .line 4
    iget-object p1, p0, Lio/realm/DynamicRealm$1;->this$0:Lio/realm/DynamicRealm;

    iget-object p1, p1, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-static {p1}, Lio/realm/internal/OsObjectStore;->getSchemaVersion(Lio/realm/internal/OsSharedRealm;)J

    move-result-wide v0

    cmp-long p1, v0, v2

    if-nez p1, :cond_3

    .line 5
    iget-object p1, p0, Lio/realm/DynamicRealm$1;->this$0:Lio/realm/DynamicRealm;

    iget-object p1, p1, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-static {p1, v2, v3}, Lio/realm/internal/OsObjectStore;->setSchemaVersion(Lio/realm/internal/OsSharedRealm;J)V

    .line 6
    :cond_3
    iget-object p1, p0, Lio/realm/DynamicRealm$1;->this$0:Lio/realm/DynamicRealm;

    iget-object p1, p1, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {p1}, Lio/realm/internal/OsSharedRealm;->commitTransaction()V

    return-void
.end method
