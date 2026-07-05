.class Lio/realm/BaseRealm$1;
.super Ljava/lang/Object;
.source "BaseRealm.java"

# interfaces
.implements Lio/realm/internal/OsSharedRealm$SchemaChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/BaseRealm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/realm/BaseRealm;


# direct methods
.method public constructor <init>(Lio/realm/BaseRealm;)V
    .registers 2

    iput-object p1, p0, Lio/realm/BaseRealm$1;->this$0:Lio/realm/BaseRealm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSchemaChanged()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/realm/BaseRealm$1;->this$0:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2
    invoke-virtual {v0}, Lio/realm/RealmSchema;->refresh()V

    .line 3
    :cond_b
    iget-object v1, p0, Lio/realm/BaseRealm$1;->this$0:Lio/realm/BaseRealm;

    instance-of v1, v1, Lio/realm/Realm;

    if-eqz v1, :cond_14

    .line 4
    invoke-virtual {v0}, Lio/realm/RealmSchema;->createKeyPathMapping()V

    :cond_14
    return-void
.end method
