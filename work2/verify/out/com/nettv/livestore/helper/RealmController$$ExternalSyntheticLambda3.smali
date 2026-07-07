.class public final synthetic Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/realm/Realm$Transaction;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Z

.field public final synthetic f$2:J

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ZJILjava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda3;->f$1:Z

    iput-wide p3, p0, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda3;->f$2:J

    iput p5, p0, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda3;->f$3:I

    iput-object p6, p0, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda3;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final execute(Lio/realm/Realm;)V
    .registers 9

    iget-object v0, p0, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda3;->f$1:Z

    iget-wide v2, p0, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda3;->f$2:J

    iget v4, p0, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda3;->f$3:I

    iget-object v5, p0, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda3;->f$4:Ljava/lang/String;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/nettv/livestore/helper/RealmController;->$r8$lambda$EsK7oPP5qmKqs3DUXkREQkMjJOY(Ljava/lang/String;ZJILjava/lang/String;Lio/realm/Realm;)V

    return-void
.end method
