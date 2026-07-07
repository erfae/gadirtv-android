.class public final synthetic Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/nettv/livestore/activities/SearchActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/nettv/livestore/activities/SearchActivity;I)V
    .registers 3

    iput p2, p0, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda1;->f$0:Lcom/nettv/livestore/activities/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget v0, p0, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_2e

    goto :goto_20

    :pswitch_6
    iget-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda1;->f$0:Lcom/nettv/livestore/activities/SearchActivity;

    check-cast p1, Lcom/nettv/livestore/models/MovieModel;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Boolean;

    invoke-static {v0, p1, p2, p3}, Lcom/nettv/livestore/activities/SearchActivity;->$r8$lambda$TwmHXaTpKqPmvf-Fnb4Ryf9jSVg(Lcom/nettv/livestore/activities/SearchActivity;Lcom/nettv/livestore/models/MovieModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1

    :pswitch_13
    iget-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda1;->f$0:Lcom/nettv/livestore/activities/SearchActivity;

    check-cast p1, Lcom/nettv/livestore/models/EPGChannel;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Boolean;

    invoke-static {v0, p1, p2, p3}, Lcom/nettv/livestore/activities/SearchActivity;->$r8$lambda$N_I7LjdNXKADw4POuahMX3gFzYA(Lcom/nettv/livestore/activities/SearchActivity;Lcom/nettv/livestore/models/EPGChannel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1

    :goto_20
    iget-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda1;->f$0:Lcom/nettv/livestore/activities/SearchActivity;

    check-cast p1, Lcom/nettv/livestore/models/SeriesModel;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Boolean;

    invoke-static {v0, p1, p2, p3}, Lcom/nettv/livestore/activities/SearchActivity;->$r8$lambda$aZlLbwoqX2svxoYXvnI8lz13CjE(Lcom/nettv/livestore/activities/SearchActivity;Lcom/nettv/livestore/models/SeriesModel;Ljava/lang/Integer;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_13
        :pswitch_6
    .end packed-switch
.end method
