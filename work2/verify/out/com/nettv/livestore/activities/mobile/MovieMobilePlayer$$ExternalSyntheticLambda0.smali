.class public final synthetic Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/nettv/livestore/helper/RealmChangeItemListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;


# direct methods
.method public synthetic constructor <init>(Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;I)V
    .registers 3

    iput p2, p0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemChanged()V
    .registers 2

    iget v0, p0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_18

    :pswitch_6
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;

    invoke-static {v0}, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;->$r8$lambda$yJNPjgRv15R6U2xDS2c3y7DBPCQ(Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;)V

    return-void

    :pswitch_c
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;

    invoke-static {v0}, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;->$r8$lambda$UHkea-OYcyJZUzlu0JsL8ZzyCqE(Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;)V

    return-void

    :pswitch_12
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;

    invoke-static {v0}, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;->$r8$lambda$BpACqXnGyB6LWU9XWqgk3sIyFnA(Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;)V

    return-void

    :goto_18
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;

    invoke-static {v0}, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;->$r8$lambda$ADwH2m6_s3JJEdLjyAKq_NjU9HM(Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_12
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method
