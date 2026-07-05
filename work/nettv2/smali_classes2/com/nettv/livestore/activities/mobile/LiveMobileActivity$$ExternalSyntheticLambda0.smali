.class public final synthetic Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment$SelectCurrentChannelListener;
.implements Landroidx/activity/result/ActivityResultCallback;
.implements Lcom/nettv/livestore/helper/RealmChangeItemListener;


# instance fields
.field public final synthetic f$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-static {v0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->$r8$lambda$8vtnZEqQwSdv28_HDZtJDgCdQPU(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public final onItemChanged()V
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    invoke-static {v0}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->$r8$lambda$Ev3ko7_xwNKbd8pwcoQq2T9Ir4A(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;)V

    return-void
.end method

.method public final onSelectCurrentChannel(Lcom/nettv/livestore/models/EPGChannel;)V
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;

    invoke-static {v0, p1}, Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;->$r8$lambda$H6cN70n2Q85iP28yVklsock-O9g(Lcom/nettv/livestore/activities/mobile/LiveMobileActivity;Lcom/nettv/livestore/models/EPGChannel;)V

    return-void
.end method
