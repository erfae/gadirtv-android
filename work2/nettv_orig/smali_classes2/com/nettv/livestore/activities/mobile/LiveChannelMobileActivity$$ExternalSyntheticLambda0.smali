.class public final synthetic Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/nettv/livestore/dlgfragment/LiveSearchDlgFragment$SelectCurrentChannelListener;
.implements Lcom/nettv/livestore/helper/RealmChangeItemListener;
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic f$0:Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-static {v0, p1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->$r8$lambda$k3wmfZMXWbwOqsudVoygMLG_TWg(Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public final onItemChanged()V
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;

    invoke-static {v0}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->$r8$lambda$FT4M_WXxmBkQ8CQVPTd1nuK0QT4(Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;)V

    return-void
.end method

.method public final onSelectCurrentChannel(Lcom/nettv/livestore/models/EPGChannel;)V
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;

    invoke-static {v0, p1}, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;->$r8$lambda$GltV1s_PTnW3ABfewkeJnUiHedM(Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;Lcom/nettv/livestore/models/EPGChannel;)V

    return-void
.end method
