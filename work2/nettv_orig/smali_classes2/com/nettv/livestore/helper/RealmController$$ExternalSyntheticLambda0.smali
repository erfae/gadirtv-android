.class public final synthetic Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/realm/Realm$Transaction$OnSuccess;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/nettv/livestore/helper/RealmChangeItemListener;


# direct methods
.method public synthetic constructor <init>(Lcom/nettv/livestore/helper/RealmChangeItemListener;I)V
    .locals 0

    iput p2, p0, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/helper/RealmChangeItemListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSuccess()V
    .locals 1

    iget v0, p0, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/nettv/livestore/helper/RealmController$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/helper/RealmChangeItemListener;

    invoke-interface {v0}, Lcom/nettv/livestore/helper/RealmChangeItemListener;->onItemChanged()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
