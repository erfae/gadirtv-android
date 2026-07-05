.class public final synthetic Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/realm/Realm$Transaction;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda2;->f$1:Z

    iput p3, p0, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda2;->f$2:I

    iput p4, p0, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda2;->f$3:I

    return-void
.end method


# virtual methods
.method public final execute(Lio/realm/Realm;)V
    .locals 4

    iget-object v0, p0, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda2;->f$1:Z

    iget v2, p0, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda2;->f$2:I

    iget v3, p0, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda2;->f$3:I

    invoke-static {v0, v1, v2, v3, p1}, Lcom/nettv/livestore/helper/RealmController;->$r8$lambda$z2oCvdjowoy7V8BOGwPqYQWmvQg(Ljava/lang/String;ZIILio/realm/Realm;)V

    return-void
.end method
