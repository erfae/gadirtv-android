.class public final synthetic Lcom/nettv/livestore/activities/CatchUpActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/nettv/livestore/activities/CatchUpActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/nettv/livestore/activities/CatchUpActivity;I)V
    .registers 3

    iput p2, p0, Lcom/nettv/livestore/activities/CatchUpActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/nettv/livestore/activities/CatchUpActivity$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/activities/CatchUpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_20

    goto :goto_13

    :pswitch_6
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/activities/CatchUpActivity;

    check-cast p1, Lcom/nettv/livestore/models/CatchupModel;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Boolean;

    invoke-static {v0, p1, p2, p3}, Lcom/nettv/livestore/activities/CatchUpActivity;->$r8$lambda$KKQj--nZJVn3Ks3VtOL16ZSnA1Q(Lcom/nettv/livestore/activities/CatchUpActivity;Lcom/nettv/livestore/models/CatchupModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1

    :goto_13
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpActivity$$ExternalSyntheticLambda0;->f$0:Lcom/nettv/livestore/activities/CatchUpActivity;

    check-cast p1, Lcom/nettv/livestore/models/CatchUpEpg;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Boolean;

    invoke-static {v0, p1, p2, p3}, Lcom/nettv/livestore/activities/CatchUpActivity;->$r8$lambda$-kLwupHMoXPTqXjXmdSc_7oi9W4(Lcom/nettv/livestore/activities/CatchUpActivity;Lcom/nettv/livestore/models/CatchUpEpg;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
