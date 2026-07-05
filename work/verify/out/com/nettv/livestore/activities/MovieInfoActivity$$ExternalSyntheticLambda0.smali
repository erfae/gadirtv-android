.class public final synthetic Lcom/nettv/livestore/activities/MovieInfoActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/nettv/livestore/helper/RealmChangeItemListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/nettv/livestore/activities/MovieInfoActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/nettv/livestore/activities/MovieInfoActivity;I)V
    .registers 3

    iput p2, p0, Lcom/nettv/livestore/activities/MovieInfoActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/activities/MovieInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemChanged()V
    .registers 2

    iget v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_12

    goto :goto_c

    :pswitch_6
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/activities/MovieInfoActivity;

    invoke-static {v0}, Lcom/nettv/livestore/activities/MovieInfoActivity;->$r8$lambda$7qHrnODC6RhcOKUqn7aAjjg--is(Lcom/nettv/livestore/activities/MovieInfoActivity;)V

    return-void

    :goto_c
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieInfoActivity$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/activities/MovieInfoActivity;

    invoke-static {v0}, Lcom/nettv/livestore/activities/MovieInfoActivity;->$r8$lambda$Bq6wS7sMfAP_vttrOQPIWv-Bq8A(Lcom/nettv/livestore/activities/MovieInfoActivity;)V

    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
