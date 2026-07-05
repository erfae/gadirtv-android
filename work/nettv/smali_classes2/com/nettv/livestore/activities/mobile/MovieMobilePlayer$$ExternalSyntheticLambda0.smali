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
    .locals 0

    iput p2, p0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemChanged()V
    .locals 1

    iget v0, p0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;

    invoke-static {v0}, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;->$r8$lambda$yJNPjgRv15R6U2xDS2c3y7DBPCQ(Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;

    invoke-static {v0}, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;->$r8$lambda$UHkea-OYcyJZUzlu0JsL8ZzyCqE(Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;

    invoke-static {v0}, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;->$r8$lambda$BpACqXnGyB6LWU9XWqgk3sIyFnA(Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;

    invoke-static {v0}, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;->$r8$lambda$ADwH2m6_s3JJEdLjyAKq_NjU9HM(Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
