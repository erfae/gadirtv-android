.class public final synthetic Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/nettv/livestore/helper/RealmChangeItemListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;II)V
    .locals 0

    iput p3, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$$ExternalSyntheticLambda1;->f$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    iput p2, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$$ExternalSyntheticLambda1;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemChanged()V
    .locals 2

    iget v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$$ExternalSyntheticLambda1;->f$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$$ExternalSyntheticLambda1;->f$1:I

    invoke-static {v0, v1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->$r8$lambda$Otd85R-nIJ11im609cOisVZxm8Q(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;I)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$$ExternalSyntheticLambda1;->f$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    iget v1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$$ExternalSyntheticLambda1;->f$1:I

    invoke-static {v0, v1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->$r8$lambda$9rcGfZzCaPUuS1c9MYRhutWdO54(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
