.class public final synthetic Lcom/nettv/livestore/adapter/PortalRecyclerAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    iput p4, p0, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;

    iput p2, p0, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter$$ExternalSyntheticLambda1;->f$2:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 3

    iget v0, p0, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;

    iget v1, p0, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter$$ExternalSyntheticLambda1;->f$2:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;->$r8$lambda$ROdGcrKyJY78_M_biKHRhv40pm0(Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;Z)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;

    iget v1, p0, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter$$ExternalSyntheticLambda1;->f$2:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;->$r8$lambda$-bB2LM11-bz4KeNidzRT4EAd95Y(Lcom/nettv/livestore/adapter/PortalRecyclerAdapter;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
