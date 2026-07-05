.class public final synthetic Lcom/nettv/livestore/adapter/PortalRecyclerAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;II)V
    .locals 0

    iput p3, p0, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;

    iput p2, p0, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter$$ExternalSyntheticLambda0;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;

    iget v1, p0, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1, p1}, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;->$r8$lambda$7TWHPtz6gXbaGbhRtgF8pz-x-Oo(Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;ILandroid/view/View;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;

    iget v1, p0, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1, p1}, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;->$r8$lambda$b3K1kfomyAYnq-utYxAeG1rRjT4(Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;ILandroid/view/View;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
