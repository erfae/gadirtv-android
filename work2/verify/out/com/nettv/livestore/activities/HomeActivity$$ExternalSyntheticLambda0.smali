.class public final synthetic Lcom/nettv/livestore/activities/HomeActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;
.implements Lcom/nettv/livestore/dlgfragment/AccountDlgFragment$PayButtonClickListener;
.implements Lcom/nettv/livestore/dlgfragment/NoConnectionDlgFragment$OnRetryClickListener;


# instance fields
.field public final synthetic f$0:Lcom/nettv/livestore/activities/HomeActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/nettv/livestore/activities/HomeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/activities/HomeActivity$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/activities/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/nettv/livestore/activities/HomeActivity$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/activities/HomeActivity;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-static {v0, p1}, Lcom/nettv/livestore/activities/HomeActivity;->$r8$lambda$N2B7_VhhC-MIHlP61VesE08sdBw(Lcom/nettv/livestore/activities/HomeActivity;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public final onPayButtonClicked()V
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/activities/HomeActivity$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/activities/HomeActivity;

    invoke-static {v0}, Lcom/nettv/livestore/activities/HomeActivity;->$r8$lambda$8dLAsCLnIoqSTMXsrWtSMZ_1ncw(Lcom/nettv/livestore/activities/HomeActivity;)V

    return-void
.end method

.method public final onRetryClick()V
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/activities/HomeActivity$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/activities/HomeActivity;

    invoke-static {v0}, Lcom/nettv/livestore/activities/HomeActivity;->$r8$lambda$ELz0JjTlgDxxQENyNhYjh8135yw(Lcom/nettv/livestore/activities/HomeActivity;)V

    return-void
.end method
