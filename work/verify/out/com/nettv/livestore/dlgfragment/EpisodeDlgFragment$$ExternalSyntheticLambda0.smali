.class public final synthetic Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;I)V
    .registers 3

    iput p2, p0, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    iget v0, p0, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_14

    goto :goto_d

    :pswitch_6
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;

    invoke-static {v0, p1, p2}, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;->$r8$lambda$3s1Cd4n0q-aU3V-bneJ6ShQo6r4(Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :goto_d
    iget-object v0, p0, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;

    invoke-static {v0, p1, p2}, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;->$r8$lambda$Q_TNe1QWn9OOYEuWQLGy5g0xMCk(Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
